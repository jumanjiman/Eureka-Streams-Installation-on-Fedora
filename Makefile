
XML_LANG	= en-US
LOG_FILE	= tmp/$(XML_LANG)/build.log

all: clean asciidoc pdf

asciidoc: clean
	@echo
	@echo converting asciidoc into docbook
	@# convert one chapter at a time
	@asciidoc -s -d book -b docbook -f /etc/asciidoc/redhatgps.conf $(XML_LANG)/summary.txt
	@asciidoc -s -d book -b docbook -f /etc/asciidoc/redhatgps.conf $(XML_LANG)/procedures.txt
	@asciidoc -s -d book -b docbook -f /etc/asciidoc/redhatgps.conf $(XML_LANG)/technical.txt
	@asciidoc -s -d book -b docbook -f /etc/asciidoc/redhatgps.conf $(XML_LANG)/references.txt

pdf: asciidoc
	@echo
	@mkdir -p tmp/$(XML_LANG) &> /dev/null
	@echo "building pdf; logging to $(LOG_FILE)"
	@publican build --formats=pdf --langs=en-US 2> $(LOG_FILE)
	@echo
	@#echo "Results:"
	@#echo -n "    tmp/$(XML_LANG)/pdf/"
	@#ls -tr tmp/$(XML_LANG)/pdf/
	@egrep -i '(error|fatal)' $(LOG_FILE) || (cp tmp/$(XML_LANG)/pdf/*.pdf $(XML_LANG)/; git add $(XML_LANG)/*; (echo -n "successful build: "; ls $(XML_LANG)/*pdf) | git commit -a -F -; rm -fr tmp/) &> /dev/null
	@git log -1
	

clean:
	@rm -fr tmp/ 
