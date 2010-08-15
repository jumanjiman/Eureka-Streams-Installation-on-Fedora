--
-- PostgreSQL
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activity; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE activity (
    id bigint NOT NULL,
    version bigint NOT NULL,
    actorid character varying(255) NOT NULL,
    actortype character varying(255) NOT NULL,
    annotation character varying(255),
    appid character varying(255),
    baseobject bytea,
    baseobjecttype character varying(255) NOT NULL,
    location character varying(255),
    mood character varying(255),
    opensocialid character varying(255) NOT NULL,
    originalactorid character varying(255),
    originalactortype character varying(255),
    postedtime timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    verb character varying(255) NOT NULL,
    recipientparentorgid bigint NOT NULL,
    streamscopeid bigint NOT NULL,
    originalactivityid bigint,
    isdestinationstreampublic boolean NOT NULL
);

--
-- Name: activity_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE activity_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE activity_id_seq OWNED BY activity.id;


--
-- Name: activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('activity_id_seq', 1, true);


--
-- Name: appdata; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE appdata (
    id bigint NOT NULL,
    version bigint NOT NULL,
    gadgetdefinitionid bigint,
    personid bigint
);

--
-- Name: appdata_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE appdata_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: appdata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE appdata_id_seq OWNED BY appdata.id;


--
-- Name: appdata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('appdata_id_seq', 1, true);


--
-- Name: appdatavalue; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE appdatavalue (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255),
    value text,
    appdataid bigint
);

--
-- Name: appdatavalue_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE appdatavalue_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: appdatavalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE appdatavalue_id_seq OWNED BY appdatavalue.id;


--
-- Name: appdatavalue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('appdatavalue_id_seq', 1, true);


--
-- Name: background; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE background (
    id bigint NOT NULL,
    version bigint NOT NULL,
    personid bigint
);

--
-- Name: background_affiliations; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE background_affiliations (
    background_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    affiliationindex integer NOT NULL
);

--
-- Name: background_honors; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE background_honors (
    background_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    honorsindex integer NOT NULL
);

--
-- Name: background_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE background_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: background_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE background_id_seq OWNED BY background.id;


--
-- Name: background_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('background_id_seq', 1, true);


--
-- Name: background_interests; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE background_interests (
    background_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    interestindex integer NOT NULL
);

--
-- Name: background_skills; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE background_skills (
    background_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    skillsindex integer NOT NULL
);

--
-- Name: backgrounditem; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE backgrounditem (
    id bigint NOT NULL,
    version bigint NOT NULL,
    backgroundtype character varying(255),
    name character varying(50) NOT NULL
);

--
-- Name: backgrounditem_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE backgrounditem_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: backgrounditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE backgrounditem_id_seq OWNED BY backgrounditem.id;


--
-- Name: backgrounditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('backgrounditem_id_seq', 1, true);


--
-- Name: comment; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE comment (
    id bigint NOT NULL,
    version bigint NOT NULL,
    body character varying(250) NOT NULL,
    timesent timestamp without time zone NOT NULL,
    authorpersonid bigint NOT NULL,
    activityid bigint NOT NULL
);

--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE comment_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE comment_id_seq OWNED BY comment.id;


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('comment_id_seq', 1, true);

--
-- Name: db_version; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE db_version (
    major smallint NOT NULL,
    minor smallint NOT NULL,
    patch varchar(5) NOT NULL,
    scriptname varchar(50) NOT NULL,
    description text NOT NULL,
    timestamp timestamp DEFAULT current_timestamp
);

--
-- Name: domaingroup; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE domaingroup (
    id bigint NOT NULL,
    version bigint NOT NULL,
    avatarcropsize integer,
    avatarcropx integer,
    avatarcropy integer,
    avatarid character varying(255),
    bannerbackgroundcolor character varying(255),
    bannerid character varying(255),
    dateadded timestamp without time zone NOT NULL,
    followerscount integer NOT NULL,
    missionstatement character varying(500),
    name character varying(150) NOT NULL,
    privatesearchable boolean NOT NULL,
    publicgroup boolean NOT NULL,
    shortname character varying(150) NOT NULL,
    url character varying(255),
    parentorganizationid bigint,
    profiletabgroupid bigint NOT NULL,
    updatescount integer NOT NULL,
    themeid bigint,
    overview text,
    entitystreamviewid bigint,
    ispending boolean,
    createdbyid bigint NOT NULL,
    streamscopeid bigint,
    commentable boolean DEFAULT true NOT NULL,
    streampostable boolean DEFAULT true NOT NULL
);

--
-- Name: domaingroup_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE domaingroup_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: domaingroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE domaingroup_id_seq OWNED BY domaingroup.id;


--
-- Name: domaingroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('domaingroup_id_seq', 1, true);


--
-- Name: enrollment; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE enrollment (
    id bigint NOT NULL,
    version bigint NOT NULL,
    additionaldetails character varying(200) NOT NULL,
    datefrom date,
    dateto date,
    degree character varying(255) NOT NULL,
    personid bigint,
    schoolnameid bigint,
    graddate date
);

--
-- Name: enrollment_activities; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE enrollment_activities (
    enrollment_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    activitiesindex integer NOT NULL
);

--
-- Name: enrollment_areasofstudy; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE enrollment_areasofstudy (
    enrollment_id bigint NOT NULL,
    backgrounditem_id bigint NOT NULL,
    areasofstudyindex integer NOT NULL
);

--
-- Name: enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE enrollment_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE enrollment_id_seq OWNED BY enrollment.id;


--
-- Name: enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('enrollment_id_seq', 1, true);


--
-- Name: feedreader; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE feedreader (
    id bigint NOT NULL,
    dateadded timestamp without time zone NOT NULL,
    moduleid character varying(255),
    opensocialid character varying(255),
    url character varying(255),
    feedtitle character varying(255) NOT NULL
);

--
-- Name: feedreader_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE feedreader_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: feedreader_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE feedreader_id_seq OWNED BY feedreader.id;


--
-- Name: feedreader_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('feedreader_id_seq', 1, false);


--
-- Name: follower; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE follower (
    followerid bigint NOT NULL,
    followingid bigint NOT NULL
);

--
-- Name: gadget; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE gadget (
    id bigint NOT NULL,
    version bigint NOT NULL,
    datedeleted timestamp without time zone,
    deleted boolean NOT NULL,
    minimized boolean NOT NULL,
    zoneindex integer NOT NULL,
    zonenumber integer NOT NULL,
    gadgetdefinitionid bigint,
    ownerid bigint,
    tabtemplateid bigint,
    gadgetuserpref character varying(100000)
);

--
-- Name: gadget_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE gadget_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: gadget_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE gadget_id_seq OWNED BY gadget.id;


--
-- Name: gadget_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('gadget_id_seq', 1, true);


--
-- Name: gadgetdefinition; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE gadgetdefinition (
    id bigint NOT NULL,
    version bigint NOT NULL,
    created timestamp without time zone NOT NULL,
    url character varying(255) NOT NULL,
    uuid character varying(255) NOT NULL,
    gadgetcategoryid bigint,
    ownerid bigint,
    showingallery boolean,
    numberofusers integer,
    gadgettitle character varying(255)
);

--
-- Name: gadgetdefinition_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE gadgetdefinition_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: gadgetdefinition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE gadgetdefinition_id_seq OWNED BY gadgetdefinition.id;


--
-- Name: gadgetdefinition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('gadgetdefinition_id_seq', 1, true);


--
-- Name: galleryitemcategory; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE galleryitemcategory (
    id bigint NOT NULL,
    version bigint NOT NULL,
    galleryitemtype character varying(255),
    name character varying(50) NOT NULL
);

--
-- Name: galleryitemcategory_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE galleryitemcategory_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: galleryitemcategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE galleryitemcategory_id_seq OWNED BY galleryitemcategory.id;


--
-- Name: galleryitemcategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('galleryitemcategory_id_seq', 1, true);


--
-- Name: group_capability; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE group_capability (
    domaingroupid bigint NOT NULL,
    capabilityid bigint NOT NULL
);

--
-- Name: group_coordinators; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE group_coordinators (
    domaingroup_id bigint NOT NULL,
    coordinators_id bigint NOT NULL
);

--
-- Name: group_task; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE group_task (
    groupid bigint NOT NULL,
    taskid bigint NOT NULL
);

--
-- Name: groupfollower; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE groupfollower (
    followerid bigint NOT NULL,
    followingid bigint NOT NULL
);

--
-- Name: job; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE job (
    id bigint NOT NULL,
    version bigint NOT NULL,
    companyname character varying(50) NOT NULL,
    datefrom date,
    dateto date,
    description character varying(200) NOT NULL,
    industry character varying(255) NOT NULL,
    title character varying(50) NOT NULL,
    personid bigint
);

--
-- Name: job_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE job_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE job_id_seq OWNED BY job.id;


--
-- Name: job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('job_id_seq', 1, true);


--
-- Name: linkinformation; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE linkinformation (
    id bigint NOT NULL,
    version bigint NOT NULL,
    created timestamp without time zone,
    description character varying(255),
    largestimageurl character varying(255),
    title character varying(255),
    url character varying(2048),
    source character varying(255)
);

--
-- Name: linkinformation_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE linkinformation_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: linkinformation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE linkinformation_id_seq OWNED BY linkinformation.id;


--
-- Name: linkinformation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('linkinformation_id_seq', 1, true);


--
-- Name: linkinformation_imageurls; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE linkinformation_imageurls (
    linkinformation_id bigint NOT NULL,
    element character varying(255)
);

--
-- Name: membershipcriteria; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE membershipcriteria (
    id bigint NOT NULL,
    version bigint NOT NULL,
    criteria character varying(255) NOT NULL,
    systemsettingsid bigint
);

--
-- Name: membershipcriteria_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE membershipcriteria_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: membershipcriteria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE membershipcriteria_id_seq OWNED BY membershipcriteria.id;


--
-- Name: membershipcriteria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('membershipcriteria_id_seq', 1, true);


--
-- Name: message; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE message (
    id bigint NOT NULL,
    version bigint NOT NULL,
    body character varying(250) NOT NULL,
    recipientid character varying(255) NOT NULL,
    recipienttype integer NOT NULL,
    timesent timestamp without time zone NOT NULL,
    title character varying(50),
    recipientparentorgid bigint NOT NULL,
    senderpersonid bigint NOT NULL,
    streamitemid bigint NOT NULL,
    attachment text,
    sharedactivityid bigint,
    sharerpersonid bigint
);

--
-- Name: message_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE message_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE message_id_seq OWNED BY message.id;


--
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('message_id_seq', 1, true);


--
-- Name: oauthconsumer; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE oauthconsumer (
    id bigint NOT NULL,
    version bigint NOT NULL,
    callbackurl character varying(255),
    consumerkey character varying(255) NOT NULL,
    consumersecret character varying(255) NOT NULL,
    gadgeturl character varying(255) NOT NULL,
    serviceprovidername character varying(255) NOT NULL,
    signaturemethod character varying(255) NOT NULL,
    title character varying(255)
);

--
-- Name: oauthconsumer_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE oauthconsumer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: oauthconsumer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE oauthconsumer_id_seq OWNED BY oauthconsumer.id;


--
-- Name: oauthconsumer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('oauthconsumer_id_seq', 1, false);


--
-- Name: oauthdomainentry; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE oauthdomainentry (
    id bigint NOT NULL,
    version bigint NOT NULL,
    appid character varying(255),
    authorized boolean NOT NULL,
    callbacktoken character varying(255),
    callbacktokenattempts integer NOT NULL,
    callbackurl character varying(255),
    callbackurlsigned boolean NOT NULL,
    container character varying(255) NOT NULL,
    domain character varying(255) NOT NULL,
    issuetime timestamp without time zone NOT NULL,
    oauthversion character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    tokensecret character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    userid character varying(255),
    consumerid bigint
);

--
-- Name: oauthdomainentry_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE oauthdomainentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: oauthdomainentry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE oauthdomainentry_id_seq OWNED BY oauthdomainentry.id;


--
-- Name: oauthdomainentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('oauthdomainentry_id_seq', 1, false);


--
-- Name: oauthentrydto; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE oauthentrydto (
    id bigint NOT NULL,
    version bigint NOT NULL,
    appid character varying(255),
    authorized boolean NOT NULL,
    callbacktoken character varying(255),
    callbacktokenattempts integer NOT NULL,
    callbackurl character varying(255),
    callbackurlsigned boolean NOT NULL,
    container character varying(255) NOT NULL,
    domain character varying(255) NOT NULL,
    issuetime timestamp without time zone NOT NULL,
    oauthversion character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    tokensecret character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    userid character varying(255),
    consumerid bigint
);

--
-- Name: oauthentrydto_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE oauthentrydto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: oauthentrydto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE oauthentrydto_id_seq OWNED BY oauthentrydto.id;


--
-- Name: oauthentrydto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('oauthentrydto_id_seq', 1, false);


--
-- Name: oauthtoken; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE oauthtoken (
    id bigint NOT NULL,
    version bigint NOT NULL,
    accesstoken character varying(255) NOT NULL,
    ownerid character varying(255) NOT NULL,
    tokenexpiremillis bigint,
    tokensecret character varying(255) NOT NULL,
    viewerid character varying(255) NOT NULL,
    consumerid bigint
);

--
-- Name: oauthtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE oauthtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: oauthtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE oauthtoken_id_seq OWNED BY oauthtoken.id;


--
-- Name: oauthtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('oauthtoken_id_seq', 1, false);


--
-- Name: organization; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE organization (
    id bigint NOT NULL,
    version bigint NOT NULL,
    avatarid character varying(255),
    avatarcropsize integer,
    avatarcropx integer,
    avatarcropy integer,
    bannerbackgroundcolor character varying(255) NOT NULL,
    bannerid character varying(255),
    descendantemployeecount integer NOT NULL,
    descendantgroupcount integer NOT NULL,
    descendantorganizationcount integer NOT NULL,
    employeefollowercount integer NOT NULL,
    missionstatement character varying(500),
    name character varying(150) NOT NULL,
    overview text,
    shortname character varying(150) NOT NULL,
    url character varying(255),
    parentorganizationid bigint,
    profiletabgroupid bigint NOT NULL,
    themeid bigint,
    updatescount integer NOT NULL,
    entitystreamviewid bigint,
    alluserscancreategroups boolean DEFAULT true NOT NULL,
    streamscopeid bigint
);

--
-- Name: organization_capability; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE organization_capability (
    organizationid bigint NOT NULL,
    capabilityid bigint NOT NULL
);

--
-- Name: organization_coordinators; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE organization_coordinators (
    organization_id bigint NOT NULL,
    coordinators_id bigint NOT NULL
);

--
-- Name: organization_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE organization_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: organization_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE organization_id_seq OWNED BY organization.id;


--
-- Name: organization_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('organization_id_seq', 1, true);


--
-- Name: organization_leaders; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE organization_leaders (
    organization_id bigint NOT NULL,
    leaders_id bigint NOT NULL
);

--
-- Name: organization_task; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE organization_task (
    organizationid bigint NOT NULL,
    taskid bigint NOT NULL
);

--
-- Name: persistentlogin; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE persistentlogin (
    id bigint NOT NULL,
    version bigint NOT NULL,
    accountid character varying(255) NOT NULL,
    tokenexpirationdate bigint NOT NULL,
    tokenvalue character varying(255) NOT NULL
);

--
-- Name: persistentlogin_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE persistentlogin_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: persistentlogin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE persistentlogin_id_seq OWNED BY persistentlogin.id;


--
-- Name: persistentlogin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('persistentlogin_id_seq', 1, true);


--
-- Name: person; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE person (
    id bigint NOT NULL,
    version bigint NOT NULL,
    accountid character varying(255) NOT NULL,
    avatarcropsize integer,
    avatarcropx integer,
    avatarcropy integer,
    avatarid character varying(255),
    biography character varying(10000),
    cellphone character varying(255),
    dateadded timestamp without time zone NOT NULL,
    email character varying(255) NOT NULL,
    fax character varying(255),
    firstname character varying(50) NOT NULL,
    followerscount integer,
    followingcount integer,
    groupscount integer,
    lastname character varying(50) NOT NULL,
    location character varying(255),
    middlename character varying(50),
    opensocialid character varying(255),
    overview character varying(10000),
    preferredname character varying(255) NOT NULL,
    quote character varying(200),
    title character varying(150),
    workphone character varying(255),
    parentorganizationid bigint,
    profiletabgroupid bigint NOT NULL,
    starttabgroupid bigint NOT NULL,
    themeid bigint,
    personid bigint,
    updatescount integer,
    entitystreamviewid bigint,
    streamsearchhiddenlineindex integer,
    streamviewhiddenlineindex integer,
    lastacceptedtermsofservice timestamp without time zone,
    streamscopeid bigint,
    commentable boolean DEFAULT true NOT NULL,
    streampostable boolean DEFAULT true NOT NULL,
    accountlocked boolean DEFAULT false NOT NULL
);

--
-- Name: person_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE person_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE person_id_seq OWNED BY person.id;


--
-- Name: person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('person_id_seq', 1, true);


--
-- Name: person_relatedorganization; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE person_relatedorganization (
    organizationid bigint NOT NULL,
    personid bigint NOT NULL
);

--
-- Name: person_streamsearch; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE person_streamsearch (
    person_id bigint NOT NULL,
    streamsearches_id bigint NOT NULL,
    streamsearchindex integer NOT NULL
);

--
-- Name: person_streamview; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE person_streamview (
    person_id bigint NOT NULL,
    streamviews_id bigint NOT NULL,
    streamviewindex integer NOT NULL
);

--
-- Name: person_task; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE person_task (
    personid bigint NOT NULL,
    taskid bigint NOT NULL
);

--
-- Name: recommendation; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE recommendation (
    id bigint NOT NULL,
    version bigint NOT NULL,
    authoropensocialid character varying(255) NOT NULL,
    date timestamp without time zone NOT NULL,
    subjectopensocialid character varying(255) NOT NULL,
    text character varying(500) NOT NULL
);

--
-- Name: recommendation_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE recommendation_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: recommendation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE recommendation_id_seq OWNED BY recommendation.id;


--
-- Name: recommendation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('recommendation_id_seq', 1, true);


--
-- Name: starredactivity; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE starredactivity (
    activityid bigint NOT NULL,
    personid bigint NOT NULL
);

--
-- Name: streamitemid; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamitemid (
    id bigint NOT NULL,
    version bigint NOT NULL
);

--
-- Name: streamitemid_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE streamitemid_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: streamitemid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE streamitemid_id_seq OWNED BY streamitemid.id;


--
-- Name: streamitemid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('streamitemid_id_seq', 1, true);


--
-- Name: streamscope; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamscope (
    id bigint NOT NULL,
    version bigint NOT NULL,
    scopetype character varying(255) NOT NULL,
    uniquekey character varying(255) NOT NULL
);

--
-- Name: streamscope_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE streamscope_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: streamscope_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE streamscope_id_seq OWNED BY streamscope.id;


--
-- Name: streamscope_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('streamscope_id_seq', 1, true);


--
-- Name: streamsearch; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamsearch (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL,
    streamview_id bigint
);

--
-- Name: streamsearch_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE streamsearch_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: streamsearch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE streamsearch_id_seq OWNED BY streamsearch.id;


--
-- Name: streamsearch_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('streamsearch_id_seq', 1, true);


--
-- Name: streamsearch_keywords; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamsearch_keywords (
    streamsearch_id bigint NOT NULL,
    element character varying(255)
);

--
-- Name: streamview; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamview (
    id bigint NOT NULL,
    version bigint NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255)
);

--
-- Name: streamview_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE streamview_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: streamview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE streamview_id_seq OWNED BY streamview.id;


--
-- Name: streamview_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('streamview_id_seq', 1, true);


--
-- Name: streamview_streamscope; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE streamview_streamscope (
    streamview_id bigint NOT NULL,
    includedscopes_id bigint NOT NULL
);

--
-- Name: systemsettings; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE systemsettings (
    id bigint NOT NULL,
    version bigint NOT NULL,
    contentexpiration integer,
    contentwarningtext character varying(255),
    sitelabel character varying(255),
    termsofservice character varying(255),
    istosdisplayedeverysession boolean,
    tospromptinterval integer,
    sendwelcomeemails boolean DEFAULT false NOT NULL
);

--
-- Name: systemsettings_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE systemsettings_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: systemsettings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE systemsettings_id_seq OWNED BY systemsettings.id;


--
-- Name: systemsettings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('systemsettings_id_seq', 1, true);


--
-- Name: systemsettings_ldapgroups; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE systemsettings_ldapgroups (
    systemsettings_id bigint NOT NULL,
    element character varying(255)
);

--
-- Name: tab; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE tab (
    id bigint NOT NULL,
    version bigint NOT NULL,
    datedeleted timestamp without time zone,
    deleted boolean NOT NULL,
    tabindex integer,
    tabgroupid bigint,
    templateid bigint,
    CONSTRAINT tab_tabindex_check CHECK ((tabindex >= 0))
);

--
-- Name: tab_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE tab_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: tab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE tab_id_seq OWNED BY tab.id;


--
-- Name: tab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('tab_id_seq', 1, true);


--
-- Name: tabgroup; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE tabgroup (
    id bigint NOT NULL,
    version bigint NOT NULL
);

--
-- Name: tabgroup_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE tabgroup_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: tabgroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE tabgroup_id_seq OWNED BY tabgroup.id;


--
-- Name: tabgroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('tabgroup_id_seq', 1, true);


--
-- Name: tabtemplate; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE tabtemplate (
    id bigint NOT NULL,
    version bigint NOT NULL,
    datedeleted timestamp without time zone,
    deleted boolean NOT NULL,
    tablayout character varying(255) NOT NULL,
    tabname character varying(50) NOT NULL,
    type character varying(255)
);

--
-- Name: tabtemplate_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE tabtemplate_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: tabtemplate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE tabtemplate_id_seq OWNED BY tabtemplate.id;


--
-- Name: tabtemplate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('tabtemplate_id_seq', 1, true);


--
-- Name: task; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE task (
    id bigint NOT NULL,
    version bigint NOT NULL,
    description character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    gadgetdefinitionid bigint
);

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE task_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE task_id_seq OWNED BY task.id;


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('task_id_seq', 1, true);


--
-- Name: theme; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE theme (
    id bigint NOT NULL,
    version bigint NOT NULL,
    bannerid character varying(255) NOT NULL,
    created timestamp without time zone NOT NULL,
    cssfile character varying(255) NOT NULL,
    dategenerated timestamp without time zone,
    description character varying(200) NOT NULL,
    name character varying(255) NOT NULL,
    themeurl character varying(255) NOT NULL,
    uuid character varying(255) NOT NULL,
    themecategoryid bigint,
    ownerid bigint,
    authoremail character varying(255) NOT NULL,
    authorname character varying(255) NOT NULL,
    numberofusers integer
);

--
-- Name: theme_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE theme_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE theme_id_seq OWNED BY theme.id;


--
-- Name: theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('theme_id_seq', 1, true);

--
-- Name: feed; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE feed (
    id bigint NOT NULL,
    version bigint NOT NULL,
    pending boolean NOT NULL,
    updated integer,
    updatefrequency integer,
    url character varying(255) NOT NULL,
    streampluginid bigint NOT NULL
);

--
-- Name: feed_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE feed_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: feed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE feed_id_seq OWNED BY feed.id;


--
-- Name: feed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('feed_id_seq', 1, true);

--
-- Name: plugin; Type: TABLE; Schema: public; Owner: eurekastreams; Tablespace: 
--

CREATE TABLE plugin (
    id bigint NOT NULL,
    version bigint NOT NULL,
    updatefrequency integer
);

--
-- Name: plugin_id_seq; Type: SEQUENCE; Schema: public; Owner: eurekastreams
--

CREATE SEQUENCE plugin_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;

--
-- Name: plugin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: eurekastreams
--

ALTER SEQUENCE plugin_id_seq OWNED BY plugin.id;


--
-- Name: plugin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: eurekastreams
--

SELECT pg_catalog.setval('plugin_id_seq', 1, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE activity ALTER COLUMN id SET DEFAULT nextval('activity_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE appdata ALTER COLUMN id SET DEFAULT nextval('appdata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE appdatavalue ALTER COLUMN id SET DEFAULT nextval('appdatavalue_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE background ALTER COLUMN id SET DEFAULT nextval('background_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE backgrounditem ALTER COLUMN id SET DEFAULT nextval('backgrounditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE domaingroup ALTER COLUMN id SET DEFAULT nextval('domaingroup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE enrollment ALTER COLUMN id SET DEFAULT nextval('enrollment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE feedreader ALTER COLUMN id SET DEFAULT nextval('feedreader_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE gadget ALTER COLUMN id SET DEFAULT nextval('gadget_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE gadgetdefinition ALTER COLUMN id SET DEFAULT nextval('gadgetdefinition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE galleryitemcategory ALTER COLUMN id SET DEFAULT nextval('galleryitemcategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE job ALTER COLUMN id SET DEFAULT nextval('job_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE linkinformation ALTER COLUMN id SET DEFAULT nextval('linkinformation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE membershipcriteria ALTER COLUMN id SET DEFAULT nextval('membershipcriteria_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE message ALTER COLUMN id SET DEFAULT nextval('message_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE oauthconsumer ALTER COLUMN id SET DEFAULT nextval('oauthconsumer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE oauthdomainentry ALTER COLUMN id SET DEFAULT nextval('oauthdomainentry_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE oauthentrydto ALTER COLUMN id SET DEFAULT nextval('oauthentrydto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE oauthtoken ALTER COLUMN id SET DEFAULT nextval('oauthtoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE organization ALTER COLUMN id SET DEFAULT nextval('organization_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE persistentlogin ALTER COLUMN id SET DEFAULT nextval('persistentlogin_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE recommendation ALTER COLUMN id SET DEFAULT nextval('recommendation_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE streamitemid ALTER COLUMN id SET DEFAULT nextval('streamitemid_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE streamscope ALTER COLUMN id SET DEFAULT nextval('streamscope_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE streamsearch ALTER COLUMN id SET DEFAULT nextval('streamsearch_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE streamview ALTER COLUMN id SET DEFAULT nextval('streamview_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE systemsettings ALTER COLUMN id SET DEFAULT nextval('systemsettings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE tab ALTER COLUMN id SET DEFAULT nextval('tab_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE tabgroup ALTER COLUMN id SET DEFAULT nextval('tabgroup_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE tabtemplate ALTER COLUMN id SET DEFAULT nextval('tabtemplate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE task ALTER COLUMN id SET DEFAULT nextval('task_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE theme ALTER COLUMN id SET DEFAULT nextval('theme_id_seq'::regclass);

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE feed ALTER COLUMN id SET DEFAULT nextval('feed_id_seq'::regclass);

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: eurekastreams
--

ALTER TABLE plugin ALTER COLUMN id SET DEFAULT nextval('plugin_id_seq'::regclass);--
-- PostgreSQL
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;


--
-- Data for Name: persistentlogin; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY persistentlogin (id, version, accountid, tokenexpirationdate, tokenvalue) FROM stdin;
\.


--
-- Data for Name: activity; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY activity (id, version, actorid, actortype, annotation, appid, baseobject, baseobjecttype, location, mood, opensocialid, originalactorid, originalactortype, postedtime, updated, verb, recipientparentorgid, streamscopeid, originalactivityid) FROM stdin;
\.


--
-- Data for Name: appdata; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY appdata (id, version, gadgetdefinitionid, personid) FROM stdin;
\.


--
-- Data for Name: appdatavalue; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY appdatavalue (id, version, name, value, appdataid) FROM stdin;
\.


--
-- Data for Name: background; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY background (id, version, personid) FROM stdin;
\.


--
-- Data for Name: background_affiliations; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY background_affiliations (background_id, backgrounditem_id, affiliationindex) FROM stdin;
\.


--
-- Data for Name: background_honors; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY background_honors (background_id, backgrounditem_id, honorsindex) FROM stdin;
\.


--
-- Data for Name: background_interests; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY background_interests (background_id, backgrounditem_id, interestindex) FROM stdin;
\.


--
-- Data for Name: background_skills; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY background_skills (background_id, backgrounditem_id, skillsindex) FROM stdin;
\.


--
-- Data for Name: backgrounditem; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY backgrounditem (id, version, backgroundtype, name) FROM stdin;
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY comment (id, version, body, timesent, authorpersonid, activityid) FROM stdin;
\.


--
-- Data for Name: domaingroup; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY domaingroup (id, version, avatarcropsize, avatarcropx, avatarcropy, avatarid, bannerbackgroundcolor, bannerid, dateadded, followerscount, missionstatement, name, privatesearchable, publicgroup, shortname, url, parentorganizationid, profiletabgroupid, updatescount, themeid, overview, entitystreamviewid, ispending, createdbyid, streamscopeid, commentable, streampostable) FROM stdin;
\.


--
-- Data for Name: enrollment; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY enrollment (id, version, additionaldetails, datefrom, dateto, degree, personid, schoolnameid, graddate) FROM stdin;
\.


--
-- Data for Name: enrollment_activities; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY enrollment_activities (enrollment_id, backgrounditem_id, activitiesindex) FROM stdin;
\.


--
-- Data for Name: enrollment_areasofstudy; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY enrollment_areasofstudy (enrollment_id, backgrounditem_id, areasofstudyindex) FROM stdin;
\.


--
-- Data for Name: feedreader; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY feedreader (id, dateadded, moduleid, opensocialid, url, feedtitle) FROM stdin;
\.


--
-- Data for Name: follower; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY follower (followerid, followingid) FROM stdin;
\.

--
-- Data for Name: group_capability; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY group_capability (domaingroupid, capabilityid) FROM stdin;
\.


--
-- Data for Name: group_coordinators; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY group_coordinators (domaingroup_id, coordinators_id) FROM stdin;
\.


--
-- Data for Name: group_task; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY group_task (groupid, taskid) FROM stdin;
\.


--
-- Data for Name: groupfollower; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY groupfollower (followerid, followingid) FROM stdin;
\.


--
-- Data for Name: job; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY job (id, version, companyname, datefrom, dateto, description, industry, title, personid) FROM stdin;
\.


--
-- Data for Name: linkinformation; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY linkinformation (id, version, created, description, largestimageurl, title, url, source) FROM stdin;
\.


--
-- Data for Name: linkinformation_imageurls; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY linkinformation_imageurls (linkinformation_id, element) FROM stdin;
\.


--
-- Data for Name: gadget; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY gadget (id, version, datedeleted, deleted, minimized, zoneindex, zonenumber, gadgetdefinitionid, ownerid, tabtemplateid, gadgetuserpref) FROM stdin;
2	0	\N	f	f	0	0	3	\N	2	\N
3	0	\N	f	f	0	1	12	\N	2	\N
4	0	\N	f	f	1	0	2	\N	2	\N
5	0	\N	f	f	1	1	6	\N	2	\N
6	0	\N	f	f	0	0	4	\N	3	\N
7	0	\N	f	f	0	1	5	\N	3	\N
8	0	\N	f	f	0	0	14	\N	4	\N
9	0	\N	f	f	0	1	13	\N	4	\N
13	0	\N	f	f	0	1	24	\N	1	\N
14	0	\N	f	f	0	2	25	\N	1	\N
\.

SELECT pg_catalog.setval('gadget_id_seq', 14, true);


--
-- Data for Name: gadgetdefinition; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY gadgetdefinition (id, version, created, url, uuid, gadgetcategoryid, ownerid, showingallery, numberofusers, gadgettitle) FROM stdin;
2	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/recommendations.xml	6c1b17c4-1945-4b3b-a136-dd1f643833d9	2	\N	f	0	\N
3	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/biography.xml	841dedc8-5b38-4cc4-9cf5-c82bb85a6e66	3	\N	f	0	\N
4	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/organization-overview.xml	821dedc8-5b38-4cc4-9cf5-c82bb85a6e66	3	\N	f	0	\N
5	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/organization-capabilities.xml	821dedc8-5b38-4ce4-3cf5-c82bb85a6e66	3	\N	f	0	\N
6	1	2009-05-04 00:00:00	localhost/org/eurekastreams/gadgets/background.xml	821eac8-5b38-4cc4-9cf5-c82bb85a6e66	3	\N	f	0	\N
13	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/group-capabilities.xml	921dedc8-5b38-4ce4-3cf5-c82bb85a6a56	3	\N	f	0	\N
14	1	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/group-overview.xml	d7a58391-5375-4c76-b5fc-a431c42a7487	3	\N	f	0	\N
12	2	2009-08-01 00:00:00	localhost/org/eurekastreams/gadgets/education.xml	841dadc8-5b38-4cc4-9cf5-c82bb85a6e66	3	\N	f	0	\N
18	0	2009-08-17 00:00:00	http://www.labpixies.com/campaigns/weather/weather.xml	d7a58391-5375-4c76-b5fc-a431c42a7333	3	\N	t	0	\N
21	0	2009-08-17 00:00:00	localhost/org/eurekastreams/gadgets/feed-reader.xml	d7a58391-5375-4c76-b5fc-a431c42a7666	3	\N	t	0	\N
22	0	2009-08-17 00:00:00	localhost/org/eurekastreams/gadgets/activitygadget.xml	d7a58391-5375-4c76-b5fc-a431c42a7555	3	\N	f	0	\N
24	0	2010-01-13 00:00:00	localhost/org/eurekastreams/gadgets/whitehouseblog-feed-reader.xml	06f98282-0083-11df-b82d-3a7356d89593	1	\N	t	0	\N
25	0	2010-01-13 00:00:00	localhost/org/eurekastreams/gadgets/washtech-feed-reader.xml	0ba47620-0083-11df-8ff8-887356d89593	1	\N	t	0	\N
\.

SELECT pg_catalog.setval('gadgetdefinition_id_seq', 25, true);


--
-- Data for Name: galleryitemcategory; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY galleryitemcategory (id, version, galleryitemtype, name) FROM stdin;
1	0	GADGET	News
2	0	GADGET	Tools
3	0	GADGET	Productivity
4	0	THEME	Lockheed Martin
5	0	THEME	Nature
6	0	THEME	Abstract
\.

SELECT pg_catalog.setval('galleryitemcategory_id_seq', 6, true);


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY message (id, version, body, recipientid, recipienttype, timesent, title, recipientparentorgid, senderpersonid, streamitemid, attachment, sharedactivityid, sharerpersonid) FROM stdin;
\.


--
-- Data for Name: oauthconsumer; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY oauthconsumer (id, version, callbackurl, consumerkey, consumersecret, gadgeturl, serviceprovidername, signaturemethod, title) FROM stdin;
\.


--
-- Data for Name: oauthdomainentry; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY oauthdomainentry (id, version, appid, authorized, callbacktoken, callbacktokenattempts, callbackurl, callbackurlsigned, container, domain, issuetime, oauthversion, token, tokensecret, type, userid, consumerid) FROM stdin;
\.


--
-- Data for Name: oauthentrydto; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY oauthentrydto (id, version, appid, authorized, callbacktoken, callbacktokenattempts, callbackurl, callbackurlsigned, container, domain, issuetime, oauthversion, token, tokensecret, type, userid, consumerid) FROM stdin;
\.


--
-- Data for Name: oauthtoken; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY oauthtoken (id, version, accesstoken, ownerid, tokenexpiremillis, tokensecret, viewerid, consumerid) FROM stdin;
\.


--
-- Data for Name: theme; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY theme (id, version, bannerid, created, cssfile, dategenerated, description, name, themeurl, uuid, themecategoryid, ownerid, authoremail, authorname, numberofusers) FROM stdin;
6	0	/style/images/Start_page_3.jpg	2010-01-21 12:03:39.086	/themes/Lockheed Air Power.css	\N	Lockheed Air Power	Lockheed Air Power	localhost/themes/start_page_3.xml	651c7e94-1f1f-4d85-9438-28dbfd86e53c	4	\N	sysadmin@example.com	Eureka Streams	0
8	0	/style/images/Start_page_5.jpg	2010-01-21 12:03:57.115	/themes/Lockheed Martin Through the Years.css	\N	Lockheed Martin Through the Years	Lockheed Martin Through the Years	localhost/themes/start_page_5.xml	76aa85b5-700a-4ac5-9c97-f61e5bc87199	4	\N	sysadmin@example.com	Eureka Streams	0
9	0	/style/images/default-banner-eureka.png	2010-01-21 12:07:23.25	/themes/unity.css	\N	Default theme for the Eureka Framework	Eureka - the rush of discovery	localhost/themes/unity.xml	a8d82fe9-dce6-496f-b835-77bb08eeb123	4	\N	sysadmin@example.com	Eureka Streams	0
5	0	/style/images/Start_page_2.jpg	2010-01-21 12:00:27.194	/themes/Blue Plasma.css	\N	Blue Plasma	Blue Plasma	localhost/themes/start_page_2.xml	4b181152-f2ea-430e-b204-be47158cf3a1	6	\N	sysadmin@example.com	Eureka Streams	0
7	0	/style/images/Start_page_4.jpg	2010-01-21 12:03:47.798	/themes/Green Blocks.css	\N	Green Blocks	Green Blocks	localhost/themes/start_page_4.xml	15ab3b38-db71-4eb7-8b51-876f0d77a33b	6	\N	sysadmin@example.com	Eureka Streams	0
4	1	/style/images/Start_page_1.jpg	2010-01-21 11:54:15.285	/themes/green_hills.css	\N	Green Hills	Green Hills	localhost/themes/start_page_1.xml	c6b305b7-143e-44ce-925d-5143a6540894	5	\N	sysadmin@example.com	Eureka Streams	1122
\.

SELECT pg_catalog.setval('theme_id_seq', 9, true);


--
-- Data for Name: membershipcriteria; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY membershipcriteria (id, version, criteria, systemsettingsid) FROM stdin;
\.


--
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization (id, version, avatarid, avatarcropsize, avatarcropx, avatarcropy, bannerbackgroundcolor, bannerid, descendantemployeecount, descendantgroupcount, descendantorganizationcount, employeefollowercount, missionstatement, name, overview, shortname, url, parentorganizationid, profiletabgroupid, themeid, updatescount, entitystreamviewid, alluserscancreategroups, streamscopeid) FROM stdin;
\.


--
-- Data for Name: organization_capability; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization_capability (organizationid, capabilityid) FROM stdin;
\.


--
-- Data for Name: organization_coordinators; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization_coordinators (organization_id, coordinators_id) FROM stdin;
\.


--
-- Data for Name: organization_leaders; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization_leaders (organization_id, leaders_id) FROM stdin;
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person (id, version, accountid, avatarcropsize, avatarcropx, avatarcropy, avatarid, biography, cellphone, dateadded, email, fax, firstname, followerscount, followingcount, groupscount, lastname, location, middlename, opensocialid, overview, preferredname, quote, title, workphone, parentorganizationid, profiletabgroupid, starttabgroupid, themeid, personid, updatescount, entitystreamviewid, streamsearchhiddenlineindex, streamviewhiddenlineindex, lastacceptedtermsofservice, streamscopeid, commentable, streampostable, accountlocked) FROM stdin;
\.


--
-- Data for Name: person_relatedorganization; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person_relatedorganization (organizationid, personid) FROM stdin;
\.


--
-- Data for Name: person_streamsearch; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person_streamsearch (person_id, streamsearches_id, streamsearchindex) FROM stdin;
\.


--
-- Data for Name: person_streamview; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create 4 per person for the 4 default stream views
--

COPY person_streamview (person_id, streamviews_id, streamviewindex) FROM stdin;
\.


--
-- Data for Name: recommendation; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY recommendation (id, version, authoropensocialid, date, subjectopensocialid, text) FROM stdin;
\.


--
-- Data for Name: starredactivity; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY starredactivity (activityid, personid) FROM stdin;
\.


--
-- Data for Name: streamitemid; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamitemid (id, version) FROM stdin;
1	0
\.


--
-- Data for Name: streamscope; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create one for each person, org, and group that is created (PERSON accountid).
--

COPY streamscope (id, version, scopetype, uniquekey) FROM stdin;
1	0	ALL	everyone
2	0	STARRED	starred
3	0	PERSONS_PARENT_ORGANIZATION	parentorg
4	0	PERSONS_FOLLOWED_STREAMS	follow
\.

SELECT pg_catalog.setval('streamscope_id_seq', 7, true);


--
-- Data for Name: streamview; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create one for each person, org, and group that is created
--

COPY streamview (id, version, name, type) FROM stdin;
1	0	Following	PEOPLEFOLLOW
2	0	EUREKA:PARENT_ORG_TAG	PARENTORG
3	0	Everyone	EVERYONE
4	0	My starred items	STARRED
\.

SELECT pg_catalog.setval('streamview_id_seq', 6, true);

--
-- Data for Name: streamview_streamscope; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create one per person for the person, org, and group for stream stream to the stream scope.
--

COPY streamview_streamscope (streamview_id, includedscopes_id) FROM stdin;
1	4
2	3
3	1
4	2
\.


--
-- Data for Name: streamsearch; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamsearch (id, version, name, streamview_id) FROM stdin;
\.


--
-- Data for Name: streamsearch_keywords; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamsearch_keywords (streamsearch_id, element) FROM stdin;
\.


--
-- Data for Name: tab; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create 2 per person, one for the profiletabgroup and one for the starttabgroup
--

COPY tab (id, version, datedeleted, deleted, tabindex, tabgroupid, templateid) FROM stdin;
1	0	\N	f	0	3	1
2	0	\N	f	0	2	2
3	0	\N	f	0	1	3
4	0	\N	f	0	4	4
\.

SELECT pg_catalog.setval('tab_id_seq', 6, true);


--
-- Data for Name: tabgroup; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--
-- ** create 2 per person, one for the profiletabgroup and one for the starttabgroup
--

COPY tabgroup (id, version) FROM stdin;
1	0
2	0
3	0
4	0
\.

SELECT pg_catalog.setval('tabgroup_id_seq', 6, true);

--
-- Data for Name: tabtemplate; Type: TABLE DATA; Schema: public; Owner: eurekastreams
-- 
-- one record per person, org, or group
--

COPY tabtemplate (id, version, datedeleted, deleted, tablayout, tabname, type) FROM stdin;
1	0	\N	f	THREECOLUMN	Welcome	WELCOME
2	0	\N	f	TWOCOLUMN	About	PERSON_ABOUT
3	0	\N	f	TWOCOLUMN	About	ORG_ABOUT
4	0	\N	f	TWOCOLUMN	About	GROUP_ABOUT
\.

SELECT pg_catalog.setval('tabtemplate_id_seq', 5, true);

--
-- ## Task related data ##
--

--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY task (id, version, description, name, gadgetdefinitionid) FROM stdin;
2	0	Write an overview of the organization.	Organization Overview	4
3	0	Fill in capabilities of the organization.	Organization Capabilities	5
4	0	Get another user to write a recommendation for you.	Get a Recommendation	2
5	0	Adding skills and interests increases your ability to be found and provides some information for others to connect with you on a personal level	Additional Information	6
6	0	Adding a work history provides others with a quick overview of the past positions you have held and an overview of your past achievements	Work History	3
7	0	Fill in capabilities of the group.	Group Capabilities	13
8	0	Write an overview of the group.	Group Overview	14
9	0	Fill in the schools you have attended.	Education History	12
\.

SELECT pg_catalog.setval('task_id_seq', 9, true);


--
-- Data for Name: person_task; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person_task (personid, taskid) FROM stdin;
\.


--
-- Data for Name: organization_task; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization_task (organizationid, taskid) FROM stdin;
\.


--
-- Data for Name: systemsettings; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY systemsettings (id, version, contentexpiration, contentwarningtext, sitelabel, termsofservice, istosdisplayedeverysession, tospromptinterval, sendwelcomeemails) FROM stdin;
1	1	90	Content Warning Text	Site Label	&lt;These are the terms of service&gt;	f	1	f
\.


--
-- Data for Name: systemsettings_ldapgroups; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY systemsettings_ldapgroups (systemsettings_id, element) FROM stdin;
\.


--
-- End
----
-- The default SQL data load file.
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
SELECT pg_catalog.setval('organization_id_seq', 1, true);

SELECT pg_catalog.setval('person_id_seq', 1, true);

SELECT pg_catalog.setval('streamscope_id_seq', 6, true);

SELECT pg_catalog.setval('streamview_id_seq', 6, true);

SELECT pg_catalog.setval('tab_id_seq', 6, true);

SELECT pg_catalog.setval('tabgroup_id_seq', 6, true);

SELECT pg_catalog.setval('tabtemplate_id_seq', 5, true);


--
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization (id, version, avatarid, avatarcropsize, avatarcropx, avatarcropy, bannerbackgroundcolor, bannerid, descendantemployeecount, descendantgroupcount, descendantorganizationcount, employeefollowercount, missionstatement, name, overview, shortname, url, parentorganizationid, profiletabgroupid, themeid, updatescount, entitystreamviewid, alluserscancreategroups, streamscopeid) FROM stdin;
1	0	\N	\N	\N	\N	FFFFFF	\N	1	0	0	0	Sample root organization	Root Organization	\N	rootorg	http://www.eurekastreams.org	1	1	\N	30	5	t	5
\.


--
-- Data for Name: organization_coordinators; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY organization_coordinators (organization_id, coordinators_id) FROM stdin;
1	1
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person (id, version, accountid, avatarcropsize, avatarcropx, avatarcropy, avatarid, biography, cellphone, dateadded, email, fax, firstname, followerscount, followingcount, groupscount, lastname, location, middlename, opensocialid, overview, preferredname, quote, title, workphone, parentorganizationid, profiletabgroupid, starttabgroupid, themeid, personid, updatescount, entitystreamviewid, streamsearchhiddenlineindex, streamviewhiddenlineindex, lastacceptedtermsofservice, streamscopeid, commentable, streampostable, accountlocked) FROM stdin;
1	1	sysadmin	\N	\N	\N	\N	\N	\N	2010-01-01 00:00:00.000	sysadmin@localhost	\N	Administrator	0	0	0	Administrator	\N	A	F95CE1FC-893D-11DF-B0FB-5F0BE0D72085	\N	Administrator	\N	System Administrator	\N	1	5	6	\N	\N	0	6	2	3	2010-01-01 00:00:00.000	6	t	t	f
\.


--
-- Data for Name: person_streamview; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY person_streamview (person_id, streamviews_id, streamviewindex) FROM stdin;
1	1	0
1	2	1
1	3	2
1	4	3
\.

--
-- Data for Name: streamscope; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamscope (id, version, scopetype, uniquekey) FROM stdin;
5	0	ORGANIZATION	rootorg
6	0	PERSON	sysadmin
\.


--
-- Data for Name: streamview; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamview (id, version, name, type) FROM stdin;
5	0	rootorg	\N
6	0	sysadmin	\N
\.


--
-- Data for Name: streamview_streamscope; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY streamview_streamscope (streamview_id, includedscopes_id) FROM stdin;
5	5
6	6
\.


--
-- Data for Name: tab; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY tab (id, version, datedeleted, deleted, tabindex, tabgroupid, templateid) FROM stdin;
5	0	\N	f	0	5	2
6	0	\N	f	0	6	5
\.


--
-- Data for Name: tabgroup; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY tabgroup (id, version) FROM stdin;
5	0
6	0
\.


--
-- Data for Name: tabtemplate; Type: TABLE DATA; Schema: public; Owner: eurekastreams
--

COPY tabtemplate (id, version, datedeleted, deleted, tablayout, tabname, type) FROM stdin;
5	0	\N	f	THREECOLUMN	Welcome	\N
\.



--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- CreatePerson
-- Function to create a minimal entry for a person for system evaluation.
--
CREATE OR REPLACE FUNCTION CreatePerson (_accountid VARCHAR, _firstname VARCHAR, _middlename VARCHAR,  _lastname VARCHAR, _email VARCHAR, _opensocialid VARCHAR) RETURNS VOID AS
$$
DECLARE
	_startPageTabGroupId BIGINT;
	_profileTabGroupId BIGINT;
	_tabTemplateId BIGINT;
	_streamScopeId BIGINT;
	_streamViewId BIGINT;
	_personId BIGINT;
	rec RECORD;
BEGIN
	-- create tab for start page
	FOR rec IN INSERT INTO tabgroup (version) values (0) RETURNING id LOOP
		_startPageTabGroupId := rec.id;
	END LOOP;
	FOR rec IN INSERT INTO tabtemplate (version, deleted, tablayout, tabname) VALUES (0, false, 'THREECOLUMN', 'Welcome') RETURNING id LOOP
		_tabTemplateId := rec.id;
	END LOOP;
	INSERT INTO tab (version, deleted, tabindex, tabgroupid, templateid) VALUES (0, false, 0, _startPageTabGroupId, _tabTemplateId);
	
	-- create tab for profile (not actually used, but may be required somewhere within the software)
	FOR rec IN INSERT INTO tabgroup (version) values (0) RETURNING id LOOP
		_profileTabGroupId := rec.id;
	END LOOP;
	_tabTemplateId := id FROM tabtemplate WHERE type = 'PERSON_ABOUT';
	INSERT INTO tab (version, deleted, tabindex, tabgroupid, templateid) VALUES (0, false, 0, _profileTabGroupId, _tabTemplateId);
	
	-- create stream
	FOR rec IN INSERT INTO streamscope (version, scopetype, uniquekey) values (0, 'PERSON', _accountid) RETURNING id LOOP
		_streamScopeId := rec.id;
	END LOOP;
	FOR rec IN INSERT INTO streamview (version, name) values (0, _accountid) RETURNING id LOOP
		_streamViewId := rec.id;
	END LOOP;
	INSERT INTO streamview_streamscope (streamview_id, includedscopes_id) VALUES (_streamViewId, _streamScopeId);
	
	-- create person
	FOR rec IN INSERT INTO person (version, accountid, dateadded, email, firstname, followerscount, followingcount, groupscount, 
			lastname, middlename, opensocialid, preferredname, parentorganizationid, profiletabgroupid, starttabgroupid, 
			updatescount, entitystreamviewid, streamsearchhiddenlineindex, streamviewhiddenlineindex, streamscopeid, 
			commentable, streampostable, accountlocked)
		VALUES (0, _accountid, now(), _email, _firstname, 0, 0, 0, _lastname, _middlename, _opensocialid, _firstname, 1, _profileTabGroupId, 
			_startPageTabGroupId, 0, _streamViewId, 2, 3, _streamScopeId, true, true, false) RETURNING id LOOP
		_personId := rec.id;
	END LOOP;

	-- add views for activity page
	INSERT INTO person_streamview (person_id, streamviews_id, streamviewindex) 
	VALUES (_personId, 1, 0), (_personId, 2, 1), (_personId, 3, 2), (_personId, 4, 3);
END;
$$ LANGUAGE plpgsql;
--
-- PostgreSQL 
--


SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activity_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT activity_pkey PRIMARY KEY (id);


--
-- Name: appdata_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY appdata
    ADD CONSTRAINT appdata_pkey PRIMARY KEY (id);


--
-- Name: appdatavalue_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY appdatavalue
    ADD CONSTRAINT appdatavalue_pkey PRIMARY KEY (id);


--
-- Name: background_affiliations_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_affiliations
    ADD CONSTRAINT background_affiliations_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: background_affiliations_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_affiliations
    ADD CONSTRAINT background_affiliations_pkey PRIMARY KEY (background_id, affiliationindex);


--
-- Name: background_honors_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_honors
    ADD CONSTRAINT background_honors_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: background_honors_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_honors
    ADD CONSTRAINT background_honors_pkey PRIMARY KEY (background_id, honorsindex);


--
-- Name: background_interests_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_interests
    ADD CONSTRAINT background_interests_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: background_interests_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_interests
    ADD CONSTRAINT background_interests_pkey PRIMARY KEY (background_id, interestindex);


--
-- Name: background_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background
    ADD CONSTRAINT background_pkey PRIMARY KEY (id);


--
-- Name: background_skills_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_skills
    ADD CONSTRAINT background_skills_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: background_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY background_skills
    ADD CONSTRAINT background_skills_pkey PRIMARY KEY (background_id, skillsindex);


--
-- Name: backgrounditem_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY backgrounditem
    ADD CONSTRAINT backgrounditem_pkey PRIMARY KEY (id);


--
-- Name: comment_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (id);


--
-- Name: db_version_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY db_version
    ADD CONSTRAINT db_version_pkey PRIMARY KEY (major, minor, patch);


--
-- Name: domaingroup_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT domaingroup_pkey PRIMARY KEY (id);


--
-- Name: domaingroup_shortname_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT domaingroup_shortname_key UNIQUE (shortname);


--
-- Name: enrollment_activities_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY enrollment_activities
    ADD CONSTRAINT enrollment_activities_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: enrollment_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY enrollment_activities
    ADD CONSTRAINT enrollment_activities_pkey PRIMARY KEY (enrollment_id, activitiesindex);


--
-- Name: enrollment_areasofstudy_backgrounditem_id_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY enrollment_areasofstudy
    ADD CONSTRAINT enrollment_areasofstudy_backgrounditem_id_key UNIQUE (backgrounditem_id);


--
-- Name: enrollment_areasofstudy_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY enrollment_areasofstudy
    ADD CONSTRAINT enrollment_areasofstudy_pkey PRIMARY KEY (enrollment_id, areasofstudyindex);


--
-- Name: enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY enrollment
    ADD CONSTRAINT enrollment_pkey PRIMARY KEY (id);


--
-- Name: feedreader_moduleid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY feedreader
    ADD CONSTRAINT feedreader_moduleid_key UNIQUE (moduleid, opensocialid);


--
-- Name: feedreader_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY feedreader
    ADD CONSTRAINT feedreader_pkey PRIMARY KEY (id);


--
-- Name: follower_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY follower
    ADD CONSTRAINT follower_pkey PRIMARY KEY (followerid, followingid);


--
-- Name: gadget_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY gadget
    ADD CONSTRAINT gadget_pkey PRIMARY KEY (id);


--
-- Name: gadgetdefinition_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY gadgetdefinition
    ADD CONSTRAINT gadgetdefinition_pkey PRIMARY KEY (id);


--
-- Name: gadgetdefinition_uuid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY gadgetdefinition
    ADD CONSTRAINT gadgetdefinition_uuid_key UNIQUE (uuid);


--
-- Name: galleryitemcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY galleryitemcategory
    ADD CONSTRAINT galleryitemcategory_pkey PRIMARY KEY (id);


--
-- Name: group_capability_capabilityid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY group_capability
    ADD CONSTRAINT group_capability_capabilityid_key UNIQUE (capabilityid);


--
-- Name: group_capability_domaingroupid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY group_capability
    ADD CONSTRAINT group_capability_domaingroupid_key UNIQUE (domaingroupid, capabilityid);


--
-- Name: group_coordinators_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY group_coordinators
    ADD CONSTRAINT group_coordinators_pkey PRIMARY KEY (domaingroup_id, coordinators_id);


--
-- Name: group_task_groupid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY group_task
    ADD CONSTRAINT group_task_groupid_key UNIQUE (groupid, taskid);


--
-- Name: groupfollower_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY groupfollower
    ADD CONSTRAINT groupfollower_pkey PRIMARY KEY (followerid, followingid);


--
-- Name: job_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY job
    ADD CONSTRAINT job_pkey PRIMARY KEY (id);


--
-- Name: linkinformation_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY linkinformation
    ADD CONSTRAINT linkinformation_pkey PRIMARY KEY (id);


--
-- Name: membershipcriteria_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY membershipcriteria
    ADD CONSTRAINT membershipcriteria_pkey PRIMARY KEY (id);


--
-- Name: message_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY message
    ADD CONSTRAINT message_pkey PRIMARY KEY (id);


--
-- Name: oauthconsumer_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY oauthconsumer
    ADD CONSTRAINT oauthconsumer_pkey PRIMARY KEY (id);


--
-- Name: oauthdomainentry_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY oauthdomainentry
    ADD CONSTRAINT oauthdomainentry_pkey PRIMARY KEY (id);


--
-- Name: oauthentrydto_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY oauthentrydto
    ADD CONSTRAINT oauthentrydto_pkey PRIMARY KEY (id);


--
-- Name: oauthtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY oauthtoken
    ADD CONSTRAINT oauthtoken_pkey PRIMARY KEY (id);


--
-- Name: organization_capability_capabilityid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization_capability
    ADD CONSTRAINT organization_capability_capabilityid_key UNIQUE (capabilityid);


--
-- Name: organization_capability_organizationid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization_capability
    ADD CONSTRAINT organization_capability_organizationid_key UNIQUE (organizationid, capabilityid);


--
-- Name: organization_coordinators_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization_coordinators
    ADD CONSTRAINT organization_coordinators_pkey PRIMARY KEY (organization_id, coordinators_id);


--
-- Name: organization_leaders_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization_leaders
    ADD CONSTRAINT organization_leaders_pkey PRIMARY KEY (organization_id, leaders_id);


--
-- Name: organization_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (id);


--
-- Name: organization_shortname_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT organization_shortname_key UNIQUE (shortname);


--
-- Name: organization_task_organizationid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY organization_task
    ADD CONSTRAINT organization_task_organizationid_key UNIQUE (organizationid, taskid);


--
-- Name: persistentlogin_accountid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY persistentlogin
    ADD CONSTRAINT persistentlogin_accountid_key UNIQUE (accountid);


--
-- Name: persistentlogin_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY persistentlogin
    ADD CONSTRAINT persistentlogin_pkey PRIMARY KEY (id);


--
-- Name: persistentlogin_tokenvalue_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY persistentlogin
    ADD CONSTRAINT persistentlogin_tokenvalue_key UNIQUE (tokenvalue);


--
-- Name: person_accountid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_accountid_key UNIQUE (accountid);


--
-- Name: person_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: person_relatedorganization_personid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person_relatedorganization
    ADD CONSTRAINT person_relatedorganization_personid_key UNIQUE (personid, organizationid);


--
-- Name: person_relatedorganization_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person_relatedorganization
    ADD CONSTRAINT person_relatedorganization_pkey PRIMARY KEY (organizationid, personid);


--
-- Name: person_streamsearch_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person_streamsearch
    ADD CONSTRAINT person_streamsearch_pkey PRIMARY KEY (person_id, streamsearchindex);


--
-- Name: person_streamview_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person_streamview
    ADD CONSTRAINT person_streamview_pkey PRIMARY KEY (person_id, streamviewindex);


--
-- Name: person_task_personid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY person_task
    ADD CONSTRAINT person_task_personid_key UNIQUE (personid, taskid);


--
-- Name: plugin_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY plugin
    ADD CONSTRAINT plugin_pkey PRIMARY KEY (id);

--
-- Name: recommendation_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY recommendation
    ADD CONSTRAINT recommendation_pkey PRIMARY KEY (id);


--
-- Name: starredactivity_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY starredactivity
    ADD CONSTRAINT starredactivity_pkey PRIMARY KEY (activityid, personid);


--
-- Name: streamitemid_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY streamitemid
    ADD CONSTRAINT streamitemid_pkey PRIMARY KEY (id);


--
-- Name: streamscope_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY streamscope
    ADD CONSTRAINT streamscope_pkey PRIMARY KEY (id);


--
-- Name: streamsearch_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY streamsearch
    ADD CONSTRAINT streamsearch_pkey PRIMARY KEY (id);


--
-- Name: streamview_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY streamview
    ADD CONSTRAINT streamview_pkey PRIMARY KEY (id);


--
-- Name: streamview_streamscope_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY streamview_streamscope
    ADD CONSTRAINT streamview_streamscope_pkey PRIMARY KEY (streamview_id, includedscopes_id);


--
-- Name: systemsettings_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY systemsettings
    ADD CONSTRAINT systemsettings_pkey PRIMARY KEY (id);


--
-- Name: tab_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY tab
    ADD CONSTRAINT tab_pkey PRIMARY KEY (id);


--
-- Name: tabgroup_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY tabgroup
    ADD CONSTRAINT tabgroup_pkey PRIMARY KEY (id);


--
-- Name: tabtemplate_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY tabtemplate
    ADD CONSTRAINT tabtemplate_pkey PRIMARY KEY (id);


--
-- Name: task_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: theme_pkey; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT theme_pkey PRIMARY KEY (id);

--
-- Name: theme_uuid_key; Type: CONSTRAINT; Schema: public; Owner: eurekastreams; Tablespace: 
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT theme_uuid_key UNIQUE (uuid);


--
-- Name: fk1239d351eb3ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY job
    ADD CONSTRAINT fk1239d351eb3ab FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk14775196c04de; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY tab
    ADD CONSTRAINT fk14775196c04de FOREIGN KEY (templateid) REFERENCES tabtemplate(id);


--
-- Name: fk1477552f35e36; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY tab
    ADD CONSTRAINT fk1477552f35e36 FOREIGN KEY (tabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk14775a2dcda35; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY tab
    ADD CONSTRAINT fk14775a2dcda35 FOREIGN KEY (tabgroupid) REFERENCES tabgroup(id);

    
--
-- Name: fk15d7843e52a2bc28; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY follower
    ADD CONSTRAINT fk15d7843e52a2bc28 FOREIGN KEY (followingid) REFERENCES person(id);


--
-- Name: fk1ab676f42a703d60; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_affiliations
    ADD CONSTRAINT fk1ab676f42a703d60 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fk1ab676f47847b0e1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_affiliations
    ADD CONSTRAINT fk1ab676f47847b0e1 FOREIGN KEY (background_id) REFERENCES background(id);


--
-- Name: fk276a314ed5843ec; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background
    ADD CONSTRAINT fk276a314ed5843ec FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk27a9a5938cac5f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY task
    ADD CONSTRAINT fk27a9a5938cac5f FOREIGN KEY (gadgetdefinitionid) REFERENCES gadgetdefinition(id);


--
-- Name: fk288013a45a0afee8; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_capability
    ADD CONSTRAINT fk288013a45a0afee8 FOREIGN KEY (organizationid) REFERENCES organization(id);


--
-- Name: fk288013a4f0deb4ba; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_capability
    ADD CONSTRAINT fk288013a4f0deb4ba FOREIGN KEY (capabilityid) REFERENCES backgrounditem(id);


--
-- Name: fk2ec9b5d225c8b701; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamsearch
    ADD CONSTRAINT fk2ec9b5d225c8b701 FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: fk2ec9b5d2a06b953; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamsearch
    ADD CONSTRAINT fk2ec9b5d2a06b953 FOREIGN KEY (streamsearches_id) REFERENCES streamsearch(id);


--
-- Name: fk2fe875433a791ab3; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_coordinators
    ADD CONSTRAINT fk2fe875433a791ab3 FOREIGN KEY (domaingroup_id) REFERENCES domaingroup(id);


--
-- Name: fk2fe87543a345f853; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_coordinators
    ADD CONSTRAINT fk2fe87543a345f853 FOREIGN KEY (coordinators_id) REFERENCES person(id);


--
-- Name: fk30923da21779c778; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY oauthtoken
    ADD CONSTRAINT fk30923da21779c778 FOREIGN KEY (consumerid) REFERENCES oauthconsumer(id);


--
-- Name: fk30d3517568a7e2e9; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY membershipcriteria
    ADD CONSTRAINT fk30d3517568a7e2e9 FOREIGN KEY (systemsettingsid) REFERENCES systemsettings(id);


--
-- Name: fk33de7d4b351eb3ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY appdata
    ADD CONSTRAINT fk33de7d4b351eb3ab FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk33de7d4b938cac5f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY appdata
    ADD CONSTRAINT fk33de7d4b938cac5f FOREIGN KEY (gadgetdefinitionid) REFERENCES gadgetdefinition(id);


--
-- Name: fk37f18514351eb3ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_relatedorganization
    ADD CONSTRAINT fk37f18514351eb3ab FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk37f185145a0afee8; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_relatedorganization
    ADD CONSTRAINT fk37f185145a0afee8 FOREIGN KEY (organizationid) REFERENCES organization(id);


--
-- Name: fk37f18514d5843ec; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_relatedorganization
    ADD CONSTRAINT fk37f18514d5843ec FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk42d0fef71779c778; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY oauthdomainentry
    ADD CONSTRAINT fk42d0fef71779c778 FOREIGN KEY (consumerid) REFERENCES oauthconsumer(id);


--
-- Name: fk49fd3c2f351eb3ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_task
    ADD CONSTRAINT fk49fd3c2f351eb3ab FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk49fd3c2f816eda0c; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_task
    ADD CONSTRAINT fk49fd3c2f816eda0c FOREIGN KEY (taskid) REFERENCES task(id);


--
-- Name: fk4cadbdf225c8b701; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamsearch
    ADD CONSTRAINT fk4cadbdf225c8b701 FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: fk4cadbdf2a06b953; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamsearch
    ADD CONSTRAINT fk4cadbdf2a06b953 FOREIGN KEY (streamsearches_id) REFERENCES streamsearch(id);


--
-- Name: fk4d085a935d4e75f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT fk4d085a935d4e75f FOREIGN KEY (themecategoryid) REFERENCES galleryitemcategory(id);


--
-- Name: fk4d085a9701f8461; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY theme
    ADD CONSTRAINT fk4d085a9701f8461 FOREIGN KEY (ownerid) REFERENCES person(id);


--
-- Name: fk50104153258e249e; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk50104153258e249e FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk50104153336c46dc; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk50104153336c46dc FOREIGN KEY (streamscopeid) REFERENCES streamscope(id);


--
-- Name: fk501041539e7c9612; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk501041539e7c9612 FOREIGN KEY (parentorganizationid) REFERENCES organization(id);


--
-- Name: fk50104153a5396b4f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk50104153a5396b4f FOREIGN KEY (entitystreamviewid) REFERENCES streamview(id);


--
-- Name: fk50104153b79fc87; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk50104153b79fc87 FOREIGN KEY (themeid) REFERENCES theme(id);


--
-- Name: fk50104153d5a4a89f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT fk50104153d5a4a89f FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk598cbae6aa5070ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY appdatavalue
    ADD CONSTRAINT fk598cbae6aa5070ab FOREIGN KEY (appdataid) REFERENCES appdata(id);


--
-- Name: fk67784f28d85b27c0; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY systemsettings_ldapgroups
    ADD CONSTRAINT fk67784f28d85b27c0 FOREIGN KEY (systemsettings_id) REFERENCES systemsettings(id);


--
-- Name: fk684e33fb258e249e; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fb258e249e FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk684e33fb336c46dc; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fb336c46dc FOREIGN KEY (streamscopeid) REFERENCES streamscope(id);


--
-- Name: fk684e33fb9e7c9612; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fb9e7c9612 FOREIGN KEY (parentorganizationid) REFERENCES organization(id);


--
-- Name: fk684e33fba5396b4f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fba5396b4f FOREIGN KEY (entitystreamviewid) REFERENCES streamview(id);


--
-- Name: fk684e33fbb79fc87; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fbb79fc87 FOREIGN KEY (themeid) REFERENCES theme(id);


--
-- Name: fk684e33fbc9da04a0; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fbc9da04a0 FOREIGN KEY (createdbyid) REFERENCES person(id);


--
-- Name: fk684e33fbc9f1fe30; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fbc9f1fe30 FOREIGN KEY (entitystreamviewid) REFERENCES streamview(id);


--
-- Name: fk684e33fbd5a4a89f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY domaingroup
    ADD CONSTRAINT fk684e33fbd5a4a89f FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk6ae8ef184c93c94b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_capability
    ADD CONSTRAINT fk6ae8ef184c93c94b FOREIGN KEY (domaingroupid) REFERENCES domaingroup(id);


--
-- Name: fk6ae8ef18a3e873fb; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_capability
    ADD CONSTRAINT fk6ae8ef18a3e873fb FOREIGN KEY (capabilityid) REFERENCES backgrounditem(id);


--
-- Name: fk7025257a2a703d60; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_honors
    ADD CONSTRAINT fk7025257a2a703d60 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);

    
--
-- Name: fk7025257a7847b0e1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_honors
    ADD CONSTRAINT fk7025257a7847b0e1 FOREIGN KEY (background_id) REFERENCES background(id);


--
-- Name: fk789c1008752c5160; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment_activities
    ADD CONSTRAINT fk789c1008752c5160 FOREIGN KEY (enrollment_id) REFERENCES enrollment(id);


--
-- Name: fk789c1008dd79fca1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment_activities
    ADD CONSTRAINT fk789c1008dd79fca1 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fk7dbd3f24351eb3ab; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment
    ADD CONSTRAINT fk7dbd3f24351eb3ab FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk7dbd3f24aa562d22; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment
    ADD CONSTRAINT fk7dbd3f24aa562d22 FOREIGN KEY (schoolnameid) REFERENCES backgrounditem(id);


--
-- Name: fk7eae006c16a70e33; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY gadget
    ADD CONSTRAINT fk7eae006c16a70e33 FOREIGN KEY (tabtemplateid) REFERENCES tabtemplate(id);


--
-- Name: fk7eae006c938cac5f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY gadget
    ADD CONSTRAINT fk7eae006c938cac5f FOREIGN KEY (gadgetdefinitionid) REFERENCES gadgetdefinition(id);


--
-- Name: fk7eae006cb4103bca; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY gadget
    ADD CONSTRAINT fk7eae006cb4103bca FOREIGN KEY (ownerid) REFERENCES person(id);


--
-- Name: fk82afc4732a703d60; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_skills
    ADD CONSTRAINT fk82afc4732a703d60 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fk82afc47373c22920; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_skills
    ADD CONSTRAINT fk82afc47373c22920 FOREIGN KEY (background_id) REFERENCES background(id);


--
-- Name: fk82afc473dd79fca1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_skills
    ADD CONSTRAINT fk82afc473dd79fca1 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fk88047adf1da47e22; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY gadgetdefinition
    ADD CONSTRAINT fk88047adf1da47e22 FOREIGN KEY (gadgetcategoryid) REFERENCES galleryitemcategory(id);


--
-- Name: fk88047adfb4103bca; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY gadgetdefinition
    ADD CONSTRAINT fk88047adfb4103bca FOREIGN KEY (ownerid) REFERENCES person(id);


--
-- Name: fk8e488775258e249e; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775258e249e FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk8e488775336c46dc; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775336c46dc FOREIGN KEY (streamscopeid) REFERENCES streamscope(id);


--
-- Name: fk8e4887757656ef13; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e4887757656ef13 FOREIGN KEY (personid) REFERENCES theme(id);


--
-- Name: fk8e4887759d4f0c17; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e4887759d4f0c17 FOREIGN KEY (starttabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk8e4887759e7c9612; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e4887759e7c9612 FOREIGN KEY (parentorganizationid) REFERENCES organization(id);


--
-- Name: fk8e488775a5396b4f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775a5396b4f FOREIGN KEY (entitystreamviewid) REFERENCES streamview(id);


--
-- Name: fk8e488775a5c6101b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775a5c6101b FOREIGN KEY (streamscopeid) REFERENCES streamscope(id);


--
-- Name: fk8e488775b79ce026; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775b79ce026 FOREIGN KEY (themeid) REFERENCES theme(id);


--
-- Name: fk8e488775d5a4a89f; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person
    ADD CONSTRAINT fk8e488775d5a4a89f FOREIGN KEY (profiletabgroupid) REFERENCES tabgroup(id);


--
-- Name: fk9bde863f8ffcaa77; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT fk9bde863f8ffcaa77 FOREIGN KEY (authorpersonid) REFERENCES person(id);


--
-- Name: fk9bde863fa72a4ce0; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT fk9bde863fa72a4ce0 FOREIGN KEY (activityid) REFERENCES activity(id);


--
-- Name: fk9c2397e730953d1e; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY message
    ADD CONSTRAINT fk9c2397e730953d1e FOREIGN KEY (sharerpersonid) REFERENCES person(id);


--
-- Name: fk9c2397e789cf9aa4; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY message
    ADD CONSTRAINT fk9c2397e789cf9aa4 FOREIGN KEY (streamitemid) REFERENCES streamitemid(id);


--
-- Name: fk9c2397e7d9e9c2b5; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY message
    ADD CONSTRAINT fk9c2397e7d9e9c2b5 FOREIGN KEY (recipientparentorgid) REFERENCES organization(id);


--
-- Name: fka126572fa5c6101b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fka126572fa5c6101b FOREIGN KEY (streamscopeid) REFERENCES streamscope(id);


--
-- Name: fka126572fd32c5e36; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY activity
    ADD CONSTRAINT fka126572fd32c5e36 FOREIGN KEY (recipientparentorgid) REFERENCES organization(id);


--
-- Name: fka537d97e3a006dac; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_leaders
    ADD CONSTRAINT fka537d97e3a006dac FOREIGN KEY (leaders_id) REFERENCES person(id);

    
--
-- Name: fka537d97ee05d1901; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_leaders
    ADD CONSTRAINT fka537d97ee05d1901 FOREIGN KEY (organization_id) REFERENCES organization(id);


--
-- Name: fkac9d5fba5c202e42; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY streamview_streamscope
    ADD CONSTRAINT fkac9d5fba5c202e42 FOREIGN KEY (streamview_id) REFERENCES streamview(id);


--
-- Name: fkac9d5fbabd447f6c; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY streamview_streamscope
    ADD CONSTRAINT fkac9d5fbabd447f6c FOREIGN KEY (includedscopes_id) REFERENCES streamscope(id);


--
-- Name: fkb7f4fd115a0afee8; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_task
    ADD CONSTRAINT fkb7f4fd115a0afee8 FOREIGN KEY (organizationid) REFERENCES organization(id);


--
-- Name: fkb7f4fd11816eda0c; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_task
    ADD CONSTRAINT fkb7f4fd11816eda0c FOREIGN KEY (taskid) REFERENCES task(id);


--
-- Name: fkbbf4bb9da1ea2a34; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY groupfollower
    ADD CONSTRAINT fkbbf4bb9da1ea2a34 FOREIGN KEY (followerid) REFERENCES person(id);


--
-- Name: fkbbf4bb9db18f0221; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY groupfollower
    ADD CONSTRAINT fkbbf4bb9db18f0221 FOREIGN KEY (followingid) REFERENCES domaingroup(id);


--
-- Name: fkc3347f85e73c2d8b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_task
    ADD CONSTRAINT fkc3347f85e73c2d8b FOREIGN KEY (taskid) REFERENCES task(id);


--
-- Name: fkc3347f85ef8332ee; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY group_task
    ADD CONSTRAINT fkc3347f85ef8332ee FOREIGN KEY (groupid) REFERENCES domaingroup(id);


--
-- Name: fkcb77c0b87847b0e1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_interests
    ADD CONSTRAINT fkcb77c0b87847b0e1 FOREIGN KEY (background_id) REFERENCES background(id);


--
-- Name: fkcb77c0b8dd79fca1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY background_interests
    ADD CONSTRAINT fkcb77c0b8dd79fca1 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fkcc1310a19739a162; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY streamsearch_keywords
    ADD CONSTRAINT fkcc1310a19739a162 FOREIGN KEY (streamsearch_id) REFERENCES streamsearch(id);


--
-- Name: fkd7981d6f25c8b701; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamview
    ADD CONSTRAINT fkd7981d6f25c8b701 FOREIGN KEY (person_id) REFERENCES person(id);


--
-- Name: fkd7981d6f35b5dcd9; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY person_streamview
    ADD CONSTRAINT fkd7981d6f35b5dcd9 FOREIGN KEY (streamviews_id) REFERENCES streamview(id);


--
-- Name: fkd8b50b272a703d60; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment_areasofstudy
    ADD CONSTRAINT fkd8b50b272a703d60 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fkd8b50b27752c5160; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment_areasofstudy
    ADD CONSTRAINT fkd8b50b27752c5160 FOREIGN KEY (enrollment_id) REFERENCES enrollment(id);


--
-- Name: fkd8b50b27dd79fca1; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY enrollment_areasofstudy
    ADD CONSTRAINT fkd8b50b27dd79fca1 FOREIGN KEY (backgrounditem_id) REFERENCES backgrounditem(id);


--
-- Name: fke448a6cfa345f853; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_coordinators
    ADD CONSTRAINT fke448a6cfa345f853 FOREIGN KEY (coordinators_id) REFERENCES person(id);


--
-- Name: fke448a6cfe05d1901; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY organization_coordinators
    ADD CONSTRAINT fke448a6cfe05d1901 FOREIGN KEY (organization_id) REFERENCES organization(id);


--
-- Name: fkf3343c41779c778; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY oauthentrydto
    ADD CONSTRAINT fkf3343c41779c778 FOREIGN KEY (consumerid) REFERENCES oauthconsumer(id);


--
-- Name: fkf4d16992476abad2; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY linkinformation_imageurls
    ADD CONSTRAINT fkf4d16992476abad2 FOREIGN KEY (linkinformation_id) REFERENCES linkinformation(id);


ALTER TABLE ONLY feed
    ADD CONSTRAINT fk276a314ed584123 FOREIGN KEY (streampluginid) REFERENCES plugin(id);

--
-- Name: fk15d7843e90f5b78b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY follower
    ADD CONSTRAINT fk15d7843e90f5b78b FOREIGN KEY (followerid) REFERENCES person(id);

--
-- Name: fk8216d90e242a4102; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY starredactivity
    ADD CONSTRAINT fk8216d90e242a4102 FOREIGN KEY (personid) REFERENCES person(id);


--
-- Name: fk8216d90e3e94a88a; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY starredactivity
    ADD CONSTRAINT fk8216d90e3e94a88a FOREIGN KEY (activityid) REFERENCES activity(id);

--
-- Name: fkb3a655689da9b48b; Type: FK CONSTRAINT; Schema: public; Owner: eurekastreams
--

ALTER TABLE ONLY streamsearch
    ADD CONSTRAINT fkb3a655689da9b48b FOREIGN KEY (streamview_id) REFERENCES streamview(id);
--
-- End.
--
--
-- PostgreSQL 
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Create indexes that are not created from primary key designations.
--

CREATE INDEX groupfollower_followingid_idx ON groupfollower ( followingid );

CREATE INDEX follower_followingid_idx ON follower ( followingid );

CREATE INDEX streamsearch_keywords_streamsearch_id_idx ON streamsearch_keywords ( streamsearch_id );

CREATE INDEX activity_streamscopeid_idx ON activity ( streamscopeid );

CREATE INDEX streamscope_uniquekey_idx ON streamscope ( uniquekey );

CREATE INDEX person_streamview_person_id_idx ON person_streamview ( person_id );

CREATE INDEX person_streamscopeid_idx ON person ( streamscopeid );

CREATE INDEX streamview_streamscope_includedscopes_idx ON streamview_streamscope( includedscopes_id, streamview_id );

CREATE INDEX person_accountid_idx ON person ( accountid );
--
-- PostgreSQL 
--

--
-- Perform the count updates to the Person table
--
UPDATE person p SET followerscount = ( SELECT count( f.followerid ) FROM follower f WHERE f.followingid = p.id );

UPDATE person p SET followingcount = ( SELECT count( f.followerid ) FROM follower f WHERE f.followerid = p.id );

UPDATE person p SET groupscount = ( SELECT count( gf.followerid ) FROM groupfollower gf WHERE gf.followerid = p.id );

--
-- Perform the count updates to the Domain Group table
--
UPDATE domaingroup dg SET followerscount = ( SELECT count( gf.followerid ) FROM groupfollower gf WHERE gf.followingid = dg.id );

--
-- Perform the count updates to the Organization table
--

CREATE OR REPLACE FUNCTION ComputeOrganizationCounts () RETURNS VOID AS
$$
BEGIN

	-- clear counts
	UPDATE organization SET descendantemployeecount=-1, descendantgroupcount=-1, descendantorganizationcount = -1;

	-- repeat until all orgs updated
	WHILE EXISTS (SELECT * FROM organization WHERE descendantorganizationcount = -1) LOOP

		UPDATE organization
		SET 
			-- get descendant org count from inner query
			descendantorganizationcount = COALESCE(i1.numorg,0),
			-- descendant group count = children's descendant groups + this org's immedate groups
			descendantgroupcount = COALESCE(i1.numgroup,0) + COALESCE(i2.num,0),
			-- descendant employee count = children's descendant employees + this org's immedate employees
			descendantemployeecount = COALESCE(i1.numemp,0) + COALESCE(i3.num,0)
		FROM 
			organization o
			LEFT OUTER JOIN 
			(
				-- get collective info about an org's children
				SELECT
					parentorganizationid, 
					-- recursive descendant org count:  children's descendant orgs + number of child orgs
					SUM(descendantorganizationcount) + COUNT(*) as numorg, 
					-- children's descendant group count
					SUM(descendantgroupcount) as numgroup,
					-- children's descendant employee count
					SUM(descendantemployeecount) as numemp
				FROM organization
				WHERE
					-- exclude root org so it doesn't count itself as it's own child
					id <> parentorganizationid
				GROUP BY parentorganizationid
			) AS i1 ON o.id = i1.parentorganizationid
			LEFT OUTER JOIN 
			(
				-- get collective info about an org's immediate groups
				SELECT parentorganizationid, COUNT(*) AS num 
				FROM domaingroup
				GROUP BY parentorganizationid
			) AS i2 ON o.id = i2.parentorganizationid
			LEFT OUTER JOIN 
			(
				-- get collective info about an org's immediate employees
				SELECT parentorganizationid, COUNT(*) AS num 
				FROM person
				GROUP BY parentorganizationid
			) AS i3 ON o.id = i3.parentorganizationid
		WHERE 
			-- needed for doing left outer joins in updates on Postgres
			organization.id = o.id 
			-- only update orgs which have not been updated yet
			AND organization.descendantorganizationcount = -1 
			-- don't update orgs until all their (immediate) children have been updated.  
			-- otherwise stated, don't update any orgs which have un-updated children
			AND NOT EXISTS 
			(
				-- try to get a list of un-updated org children of the orgs being considered for update
				SELECT *
				FROM organization o1
				WHERE 
					-- if the org hasn't been updated
					o1.descendantorganizationcount = -1
					-- if the org isn't the root org
					AND o1.id <> o1.parentorganizationid
					-- if the org is a child of the org in the parent query
					AND o1.parentorganizationid = o.id
			);

	END LOOP;
end;
$$ LANGUAGE plpgsql;

SELECT ComputeOrganizationCounts();

DROP FUNCTION ComputeOrganizationCounts();


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0000VersionBaseline.sql

--
-- Set database version to 0.8.0000
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0000','U0000VersionBaseline.sql','Set baseline to 0.8.0000');

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0001FeedAdditionalColumns.sql

--
-- Set database version to 0.8.0001
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0001','U0001FeedAdditionalColumns.sql','Creates group_feed and person_feed tables');

--
-- Alter tables
--

ALTER TABLE ONLY feed
    ADD CONSTRAINT feed_pkey PRIMARY KEY (id);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0002PluginDefinitionTable.sql

--
-- Set database version to 0.8.0002
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0002','U0002PluginDefinitionTable.sql','Creates the plugindefinition table');

--
-- Create table
--

CREATE TABLE plugindefinition
(
  id bigserial NOT NULL,
  "version" bigint NOT NULL,
  created timestamp without time zone NOT NULL,
  url character varying(255) NOT NULL,
  uuid character varying(255) NOT NULL,
  objecttype character varying(255),
  plugincategoryid bigint,
  ownerid bigint,
  showingallery boolean,
  numberofusers integer,
  updatefrequency bigint,
  CONSTRAINT plugindefinition_pkey PRIMARY KEY (id),
  CONSTRAINT plugindefinition_cat_fkey FOREIGN KEY (plugincategoryid)
      REFERENCES galleryitemcategory (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT plugindefinition_owner_fkey FOREIGN KEY (ownerid)
      REFERENCES person (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT plugindefinition_uuid_key UNIQUE (uuid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE plugindefinition OWNER TO eruekastreams;

--
-- alter feed for new contraint
--

ALTER TABLE feed
    DROP CONSTRAINT fk276a314ed584123;

ALTER TABLE ONLY feed
    ADD CONSTRAINT feed_plugindef_fkey FOREIGN KEY (streampluginid)
      REFERENCES plugindefinition (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
    
--
--DROP unused table plugin
--
  
DROP Table plugin;

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0003FeedSubscriberTable.sql

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0003','U0003FeedSubscriberTable.sql','Creates the feedsubscriber table');
    
CREATE TABLE feedsubscriber
(
  id bigserial NOT NULL,
  version bigint NOT NULL,
  confsettings bytea,
  entityid bigint NOT NULL,
  type character varying(255) NOT NULL,
  feedid bigint NOT NULL,
  CONSTRAINT feedsubscriber_pkey PRIMARY KEY (id)
);


ALTER TABLE public.feedsubscriber OWNER TO eruekastreams;

ALTER TABLE ONLY feedsubscriber
    ADD CONSTRAINT fk49f6ec4867b493921 FOREIGN KEY (feedid) REFERENCES feed(id);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0004FeedAddTitle.sql

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0004','U0004FeedAddTitle.sql','adds title to feed');
    
ALTER TABLE feed
ADD title character varying(255) NOT NULL;




-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0005PluginWarningColumn.sql

--
-- Set database version to 0.8.0005
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0005','U0005PluginWarningColumn.sql','Adds pluginwarning column');

--
-- Alter tables
--

ALTER TABLE systemsettings ADD column pluginwarning character varying(255);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0006AddInitialPluginCatagory.sql

--
-- Set database version to 0.8.0006
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0006','U0006AddInitialPluginCatagory.sql','Adds Initial Plugin Catagory');

--
-- insertValues
--

insert into galleryitemcategory (version, galleryitemtype, name) values (0,'PLUGIN','Internet Services');

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0007FeedAddLastPostDate.sql

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0007','U0007FeedAddLastPostDate.sql','adds lastpostdate to feed');
    
ALTER TABLE feed
ADD column lastpostdate timestamp without time zone;




-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0008ActivityAddAppColumns.sql

insert into db_version (major, minor, patch, scriptname, description)
   values (0,8,'0008','U0008ActivityAddAppColumns.sql','adds lastpostdate to feed');
    
ALTER TABLE activity
DROP column appid,
ADD column appid bigint,
ADD column appsource character varying(255),
ADD column appname character varying(255),
ADD column apptype character varying(255);




-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0009AddDefaultPlugins.sql

--
-- Set database version to 0.8.0009
--

insert into db_version (major, minor, patch, scriptname, description)
    values (0,8,'0009','U0009AddDefaultPlugins.sql','Adds the default stream plugins');

--
-- insertValues
--

insert into plugindefinition (version, created, url, uuid, objecttype, plugincategoryid, ownerid, showingallery, numberofusers, updatefrequency)
	values
	(0, now(), 'localhost/plugins/delicious.xml', '90c18fdb-ed11-4ac4-8da0-16f0d2ab4d69', 'BOOKMARK', 7, null, true, 0, 30),
	(0, now(), 'localhost/plugins/googlereader.xml', 'c2d7f1e2-d427-476d-8616-b28f7392153c', 'BOOKMARK', 7, null, true, 0, 30),
	(0, now(), 'localhost/plugins/rss.xml', '099f6d93-4fb4-41ec-a690-0762f5a34311', 'BOOKMARK', 7, null, true, 0, 30),
	(0, now(), 'localhost/plugins/youtube.xml', '93710e05-9f60-4244-add6-310e03872741', 'VIDEO', 7, null, true, 0, 30);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/8/U0010TermsOfServiceSizeIncrease.sql

--
-- Set database version to 0.8.0010
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 8, '0010', 'U0010TermsOfServiceSizeIncrease.sql', 'updates systemsettings table to increase column size for terms of service text.');

ALTER TABLE systemsettings ALTER COLUMN termsofservice SET DATA TYPE character varying(1000);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0000VersionBaseline.sql

--
-- Set database version to 0.9.0000
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0000', 'U0000VersionBaseline.sql', 'Set baseline to 0.9.0000');

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0001NotificationPreferenceTable.sql

--
-- Set database version to 0.9.0001
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0001', 'U0001NotificationPreferenceTable.sql', 'Creates the user notification preferences table.');

create table NotificationFilterPreference (
    id  bigserial not null,
    version bigint NOT NULL,
    notificationCategory varchar(255),
    notifierType varchar(255) not null,
    personId bigint NOT NULL,
    primary key (id)
);

ALTER SEQUENCE NotificationFilterPreference_id_seq OWNED BY NotificationFilterPreference.id;

SELECT pg_catalog.setval('NotificationFilterPreference_id_seq', 1, true);

ALTER TABLE NotificationFilterPreference ALTER COLUMN id SET DEFAULT nextval('NotificationFilterPreference_id_seq'::regclass);

ALTER TABLE ONLY NotificationFilterPreference
    ADD CONSTRAINT FK7BC6199E242A4102
    FOREIGN KEY (personId)
    REFERENCES person(id);

    

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0002ApplicationAlertNotificationTableCreate.sql

--
-- Set database version to 0.9.0002
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0002', 'U0002ApplicationAlertNotificationTableCreate.sql', 'Creates the table of notifications to be displayed to users within the app.');

CREATE TABLE applicationalertnotification
(
  id bigserial NOT NULL,
  "version" bigint NOT NULL,
  activityauthorname character varying(255),
  activityid bigint,
  actoraccountid character varying(255) NOT NULL,
  actorname character varying(255) NOT NULL,
  notificationtype character varying(255) NOT NULL,
  recipientid bigint NOT NULL
);

ALTER TABLE public.applicationalertnotification OWNER TO eruekastreams;

ALTER TABLE public.applicationalertnotification_id_seq OWNER TO eruekastreams;

ALTER SEQUENCE applicationalertnotification_id_seq OWNED BY applicationalertnotification.id;

SELECT pg_catalog.setval('applicationalertnotification_id_seq', 1, true);

ALTER TABLE applicationalertnotification ALTER COLUMN id SET DEFAULT nextval('applicationalertnotification_id_seq'::regclass);

ALTER TABLE ONLY applicationalertnotification
    ADD CONSTRAINT applicationalertnotification_pkey PRIMARY KEY (id);

ALTER TABLE ONLY applicationalertnotification
    ADD CONSTRAINT fk1a60d517880d76c6 FOREIGN KEY (recipientid) REFERENCES person(id);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0003ApplicationAlertNotificationAddTimestamp.sql

--
-- Set database version to 0.9.0003
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0003', 'U0003ApplicationAlertNotificationAddTimestamp.sql', 'updates notification table to add a timestamp column.');

ALTER TABLE applicationalertnotification ADD COLUMN activitytype character varying(255);

ALTER TABLE applicationalertnotification ADD COLUMN isread boolean NOT NULL DEFAULT false;

ALTER TABLE applicationalertnotification ADD COLUMN groupname character varying(255);

ALTER TABLE applicationalertnotification ADD COLUMN groupshortname character varying(255);

ALTER TABLE applicationalertnotification ADD COLUMN notificationdate timestamp without time zone NOT NULL DEFAULT current_timestamp;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0004*.sql



-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0005TutorialVideoCreation.sql

--
-- Set database version to 0.9.0005
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0005', 'U0005TutorialVideoCreation', 'Adds tutorialVideo table and a comma delimited string field to person for videoIds they opted out of.');

ALTER TABLE person ADD COLUMN optOutVideoIds character varying(10000);

create table TutorialVideo (
    id  bigserial not null,
    version int8 not null,
    dialogTitle varchar(255),
    innerContent varchar(1000),
    innerContentTitle varchar(255),
    page varchar(255) not null,
    videoHeight int4,
    videoUrl varchar(1000),
    videoWidth int4,
    primary key (id)
);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0006GroupStreamUpdates.sql

--
-- Set database version to 0.9.0006
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0006', 'U0006GroupStreamUpdates.sql', 'updates person table to add a groupStreamHiddenLineIndex column.');

ALTER TABLE person ADD COLUMN groupstreamhiddenlineindex integer NOT NULL DEFAULT 3;

ALTER TABLE groupfollower ADD COLUMN groupstreamindex integer;

-- loop over existing groupfollower rows and assign a default groupstreamindex, starting with 0
create function setgroupstreamindex() returns VOID as
$$
declare
  followers RECORD;
  groups RECORD;
  groupstreamindexcount integer;
begin

for followers in select distinct followerid from groupfollower loop
   groupstreamindexcount := 0;
   for groups in select followingid from groupfollower where followerid = followers.followerid order by followingid loop
     update groupfollower set groupstreamindex = groupstreamindexcount where followerid = followers.followerid and followingid = groups.followingid;
     groupstreamindexcount := groupstreamindexcount + 1;
   end loop;
end loop;

end;
$$
language 'plpgsql';

select * from setgroupstreamindex();
drop function setgroupstreamindex();

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0007StartVideoInsertion.sql

--
-- Set database version to 0.9.0007
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0007', 'U0007StartVideoInsertion', 'Adds start page tutorial video into the db.');

INSERT INTO tutorialvideo (version, dialogtitle, innercontent, innercontenttitle, page, videoheight, videourl, videowidth)
VALUES (1, 'Start Page Overview', 'The start page provides knowledge workers with a private home page they can theme and customize to display news and streams of activity.', 'Start Page', 'START', 270, 'style/videos/start.swf', 480);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0008DirectoryVideoInsertion.sql

--
-- Set database version to 0.9.0008
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0008', 'U0008DirectoryVideoInsertion', 'Adds directory tutorial video into the db.');

INSERT INTO tutorialvideo (version, dialogtitle, innercontent, innercontenttitle, page, videoheight, videourl, videowidth)
VALUES (1, 'Directory Overview', 'The Directory provides knowledge workers with a quick way to browse and search for colleagues, groups and organizations based on profile information and trending activity.', 'Directory', 'ORGANIZATIONS', 270, 'style/videos/profiles.swf', 480);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0009ActivityVideoInsertion.sql

--
-- Set database version to 0.9.0009
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0009', 'U0009ActivityVideoInsertion', 'Adds activity tutorial video into the db.');

INSERT INTO tutorialvideo (version, dialogtitle, innercontent, innercontenttitle, page, videoheight, videourl, videowidth)
VALUES (1, 'Activity Overview', 'Activity Streams provide knowledge workers with an efficient way to aggregate, organize and engage in conversation around information relevant to their job.', 'Activity Streams', 'ACTIVITY', 270, 'style/videos/activity.swf', 480);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0010MyProfileVideoInsertion.sql

--
-- Set database version to 0.9.0010
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0010', 'U0010MyProfileVideoInsertion', 'Adds My Profile tutorial video into the db.');

INSERT INTO tutorialvideo (version, dialogtitle, innercontent, innercontenttitle, page, videoheight, videourl, videowidth)
VALUES (1, 'Profile Overview', 'Your profile allows you to capture profile information including work history, education, colleague recommendations, interest, skills and hobbies.  You are also able to upload an avatar for your stream.', 'My Profile', 'PEOPLE', 270, 'style/videos/myProfile.swf', 480);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0011ProfileFieldChanges.sql

--
-- Set database version to 0.9.0011
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0011', 'U0011ProfileFieldChanges.sql', 'Updates several columns used in the profile.');

ALTER TABLE person 
	ALTER COLUMN quote TYPE varchar(250),
	ALTER COLUMN biography TYPE text;

ALTER TABLE job
	ALTER COLUMN description TYPE text;
 	
ALTER TABLE enrollment
	ALTER COLUMN additionaldetails TYPE text;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0012ReformatPhoneNumbers.sql

--
-- Set database version to 0.9.0012
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0012', 'U0012ReformatPhoneNumbers.sql', 'Formats existing phone numbers in the database since it will no longer be done in code.');

update person set workphone = substr(workphone,1,3)||'-'||substr(workphone,4,3)||'-'||substr(workphone,7,4) where length(workphone) = 10;
 
update person set cellphone = substr(cellphone,1,3)||'-'||substr(cellphone,4,3)||'-'||substr(cellphone,7,4) where length(cellphone) = 10;

update person set fax = substr(fax,1,3)||'-'||substr(fax,4,3)||'-'||substr(fax,7,4) where length(fax) = 10;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0013UpdateTermsofServiceLength.sql

--
-- Set database version to 0.9.0013
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0013', 'U0013UpdateTermsofServiceLength', 'Allows 1000 characters for termsofservice column.');

ALTER TABLE systemsettings ALTER COLUMN termsofservice TYPE varchar(1000); 



-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0014AddSupportColumnsToSystemSettings.sql

--
-- Set database version to 0.9.0014
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0014', 'U0014AddSupportColumnsToSystemSettings.sql', 'Adds support columns to system settings.');
--
-- Add "supportEmailAddress" column
--

ALTER TABLE ONLY SystemSettings
    ADD COLUMN supportEmailAddress VARCHAR(255);

    
--
-- Add "supportPhoneNumber" column
--    
    
ALTER TABLE ONLY SystemSettings
    ADD COLUMN supportPhoneNumber VARCHAR(255);

    
--
-- Add "supportStreamShortName" column
--
    
ALTER TABLE ONLY SystemSettings
    ADD COLUMN supportStreamGroupShortName VARCHAR(255);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0015AddActivityFlaggedColumn.sql

--
-- Set database version to 0.9.0015
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0015', 'U0015AddActivityFlaggedColumn.sql', 'Adds the flagged as inappropriate column on activities.');

ALTER TABLE activity ADD COLUMN flagged boolean NOT NULL DEFAULT false;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0016UpdateStreamViewName.sql

--
-- Set database version to 0.9.0016
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0016', 'U0016UpdateStreamViewName', 'Update Streamview name column.');

update streamview set name = (select person.preferredname || ' ' || person.lastname
                from person
                where person.entitystreamviewid = streamview.id)
where exists
(select person.preferredname
from person
where person.entitystreamviewid = streamview.id);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0017AddGadgetMaximizedColumn.sql

--
-- Set database version to 0.9.0017
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0017', 'U0017AddGadgetMaximizedColumn.sql', 'Adds the maximized bool for gadgets.');

ALTER TABLE gadget ADD COLUMN maximized boolean DEFAULT false;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0018AddBookmarkGadget.sql

--
-- Set database version to 0.9.0018
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0018', 'U0018AddBookmarkGadget.sql', 'Adds the bookmark gadget entry into the gadget definition table.');

INSERT INTO gadgetdefinition(version, created, url, uuid, gadgetcategoryid, ownerid, showingallery, numberofusers) VALUES (0, '2010-04-30', 'localhost/org/eurekastreams/gadgets/bookmarkgadget.xml','D9DA7754-5495-11DF-B12E-0806DFD72085', 1, null, true, 0);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0019RenameAlertColumns.sql

--
-- Set database version to 0.9.0019
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0019', 'U0019RenameAlertColumns.sql', 'Rename two columns in ApplicationAlertNotification table.');

ALTER TABLE applicationalertnotification RENAME COLUMN groupname to destinationname;
ALTER TABLE applicationalertnotification RENAME COLUMN groupshortname to destinationshortname;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0020AlertDestTypeColumn.sql

--
-- Set database version to 0.9.0020
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0020', 'U0020AlertDestTypeColumn.sql', 'Adds the destination type column on alert notifications.');

ALTER TABLE applicationalertnotification ADD COLUMN destinationtype character varying(255);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0021RemoveBannerBackgroundColor.sql

--
-- Set database version to 0.9.0021
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0021', 'U0021RemoveBannerBackgroundColor.sql', 'Removes banner background color from groups and orgs.');


ALTER TABLE domaingroup DROP COLUMN bannerbackgroundcolor;
ALTER TABLE organization DROP COLUMN bannerbackgroundcolor;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0022UpdateDomainGroupMissionStatementLength.sql

--
-- Set database version to 0.9.0022
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0022', 'U0022UpdateDomainGroupMissionStatementLength', 'Reduces missionstatement column to 250 characters from 500 characters.');

UPDATE domaingroup SET missionstatement = substr(missionstatement, 1, 250);

ALTER TABLE domaingroup ALTER COLUMN missionstatement TYPE varchar(250); 



-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0023RenameStarredStreamView.sql

--
-- Set database version to 0.9.0023
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0023', 'U0023RenameStarredStreamView.sql', 'Rename the starred streamView to use the term saved');

update streamview set name='My saved items' where type='STARRED';


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0024ImageTable.sql

--
-- Set database version to 0.9.0024
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0024', 'U0024ImageTable.sql', 'Creates the image table.');

-- Add the Image table

create table Image (
    id  bigserial NOT NULL,
    version bigint NOT NULL,
    imageIdentifier varchar(255) NOT NULL,
    imageBlob bytea NOT NULL,
    primary key (id)
);

ALTER SEQUENCE Image_id_seq OWNED BY Image.id;

SELECT pg_catalog.setval('Image_id_seq', 1, true);

ALTER TABLE Image ALTER COLUMN id SET DEFAULT nextval('Image_id_seq'::regclass);

    

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0025MakePeopleFollowThemselves.sql

--
-- Set database version to 0.9.0025
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0025', 'U0025MakePeopleFollowThemselves.sql', 'Update all users to follow themselves');

-- Put into place to delete the occurances of someone already following themself.
delete from follower where followerid=followingid;

-- Given each person id, create a follower record for them to follow themself.
insert into follower (select thisid, thisid from (select id as thisid from person) as persontable);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0026ShrinkSystemSettingsSupportColumns.sql

--
-- Set database version to 0.9.0026
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0026', 'U0026ShrinkSystemSettingsSupportColumns.sql', 'Reduces supportemailaddress and supportphonenumber columns to 50 characters from 255 characters.');

UPDATE systemsettings SET supportemailaddress = substr(supportemailaddress, 1, 50);
UPDATE systemsettings SET supportphonenumber = substr(supportphonenumber, 1, 50);

ALTER TABLE systemsettings ALTER COLUMN supportemailaddress TYPE varchar(50);
ALTER TABLE systemsettings ALTER COLUMN supportphonenumber TYPE varchar(50); 


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0027ChangeOrgCountColumn.sql

--
-- Set database version to 0.9.0027
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0027', 'U0027ChangeOrgCountColumn.sql', 'Change the descendant org count column to an immediate child count column.');

ALTER TABLE organization RENAME COLUMN descendantorganizationcount TO childorganizationcount;

UPDATE organization as o SET childorganizationcount = (SELECT COUNT(*) FROM organization as o2 WHERE o.id = o2.parentorganizationid and o2.parentorganizationid <> o2.id);


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0028RemoveOldTabGroupsLimitStartPageTabNameSize.sql

--
-- Set database version to 0.9.0028
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0028', 'U0028RemoveOldTabGroupsLimitStartPageTabNameSize', 'Remove Tab Groups From Orgs And Groups and Limits Tab Name length form 50 to 16.');

UPDATE tabtemplate SET tabname = substr(tabname, 1, 16);

ALTER TABLE tabtemplate ALTER COLUMN tabname TYPE varchar(16); 

ALTER TABLE organization DROP CONSTRAINT fk50104153258e249e;
ALTER TABLE organization DROP CONSTRAINT fk50104153d5a4a89f;
delete FROM tab where tabgroupid IN (select id as groupid from tabgroup where id IN (select profiletabgroupid from organization));
delete FROM tabgroup where id IN (select profiletabgroupid from organization);
ALTER TABLE organization
DROP COLUMN profiletabgroupid;

ALTER TABLE domaingroup DROP CONSTRAINT fk684e33fbd5a4a89f;
ALTER TABLE domaingroup DROP CONSTRAINT fk684e33fb258e249e;
delete FROM tab where tabgroupid IN (select id as groupid from tabgroup where id IN (select profiletabgroupid from domaingroup));
delete FROM tabgroup where id IN (select profiletabgroupid from domaingroup);
ALTER TABLE domaingroup
DROP COLUMN profiletabgroupid;

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0029ApplicationAlertNotificationRefactor1.sql

--
-- Set database version to 0.9.0029
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0029', 'U0029ApplicationAlertNotificationRefactor1.sql', 'Add and rename columns for application alert notifications.');

ALTER TABLE ApplicationAlertNotification 
	RENAME COLUMN activityauthorname TO auxiliaryName;

ALTER TABLE ApplicationAlertNotification 
	RENAME COLUMN destinationshortname TO destinationUniqueId;

ALTER TABLE ApplicationAlertNotification 
	ADD COLUMN auxiliaryType varchar(255),
    ADD COLUMN auxiliaryUniqueId varchar(255),
	ALTER COLUMN actorAccountId TYPE varchar(255),
	ALTER COLUMN actorName TYPE varchar(255);

UPDATE ApplicationAlertNotification
	SET 
		auxiliaryType = ac.actortype,
		auxiliaryUniqueId = ac.actorid
	FROM
		activity AS ac
	WHERE
		ApplicationAlertNotification.activityid = ac.id
		AND auxiliaryName IS NOT NULL
		AND activityid IS NOT NULL;
		

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0030RemoveReferencesToWeatherGadgetDefinition.sql

--
-- Set database version to 0.9.0030
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0030', 'U0030RemoveReferencesToWeatherGadgetDefinition.sql', 'Remove all references to the weather gadget in the database.');

CREATE FUNCTION remove_references_to_gadget_definition(gadget_definition_id integer) RETURNS INTEGER AS '
DECLARE
    gadget_instance RECORD;
    count INTEGER DEFAULT 0;
BEGIN
    FOR gadget_instance IN SELECT id, zoneindex, zonenumber, tabtemplateid from gadget where gadgetdefinitionid = gadget_definition_id
    LOOP
        RAISE NOTICE ''Found a gadget instance % '',gadget_instance.id;
        UPDATE gadget SET zoneindex = zoneindex - 1 
        WHERE zoneindex > gadget_instance.zoneindex 
            AND zonenumber = gadget_instance.zonenumber
            AND tabtemplateid = gadget_instance.tabtemplateid;
        count = count +1;
    END LOOP;

    RAISE NOTICE ''Deleted % gadget instances for the supplied gadget definition id %'', count, gadget_definition_id;
    
    RAISE NOTICE ''Removing gadget instances for the supplied gadget_definition_id '';
    DELETE FROM gadget where gadgetdefinitionid = gadget_definition_id;

    RAISE NOTICE ''Removing gadget definition for the supplied gadget_definition_id '';
    DELETE FROM gadgetdefinition where id = gadget_definition_id;

    RETURN 1;
END;
' LANGUAGE plpgsql;
-- Id 18 is provided from our population scripts so it is safe to be hardcoded in this script.
SELECT remove_references_to_gadget_definition(18);
DROP FUNCTION remove_references_to_gadget_definition(gadget_definition_id integer);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0031AddGroupMembershipRequestTable.sql

--
-- Set database version to 0.9.0031
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0031', 'U0031AddGroupMembershipRequestTable.sql', 'Add table for group membership requests.');

CREATE TABLE GroupMembershipRequests
(
	groupId int8 not null,
	personId int8 not null,
	primary key (groupId, personId)
);

ALTER TABLE GroupMembershipRequests
	ADD CONSTRAINT FK6E2B9E79242A4102 
	FOREIGN KEY (personId) 
	REFERENCES Person ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE GroupMembershipRequests
	ADD CONSTRAINT FK6E2B9E7952F1F398 
	FOREIGN KEY (groupId) 
	REFERENCES DomainGroup ON DELETE CASCADE ON UPDATE CASCADE;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0032IntroVideoUpdates.sql

--
-- Set database version to 0.9.0032
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0032', 'U0032IntroVideoUpdates', 'Update tutorial videos.');

UPDATE tutorialvideo 
SET dialogtitle='Profile Overview', innercontenttitle='Profiles', innercontent='Profiles provide knowledge workers with a quick way to browse and search for colleagues, groups and organizations based on profile information.'
WHERE page='ORGANIZATIONS'; 

UPDATE tutorialvideo 
SET innercontent='Your profile allows you to capture profile information including work history, education, interest, skills and hobbies.  You are also able to upload an avatar for your stream.'
WHERE page='PEOPLE';

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0033SystemSettingsColumnSizeUpdates.sql

--
-- Set database version to 0.9.0033
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0033', 'U0033SystemSettingsColumnSizeUpdates', 'Update TOS and plugin config message columns to be text.');

ALTER TABLE systemsettings 
	ALTER COLUMN pluginwarning TYPE text,
	ALTER COLUMN termsofservice TYPE text;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0034RemovePrivateSearchableColumnFromDomainGroup.sql

--
-- Set database version to 0.9.0034
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0034', 'U0034RemovePrivateSearchableColumnFromDomainGroup', 'Remove DomainGroup.privateSearchable.');

-- drop DomainGroup.privateSearchable.
ALTER TABLE domaingroup DROP COLUMN privatesearchable;

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0035RemoveZipCode.sql

--
-- Set database version to 0.9.0035
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0035', 'U0035RemoveZipCode', 'Remove Zip Code.');

-- drop DomainGroup.privateSearchable.
UPDATE person set location=null;

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0036LowercaseAllGroups.sql

--
-- Set database version to 0.9.0036
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0036', 'U0036LowercaseAllGroups', 'Make all DomainGroup shortnames lowercase.');

-- lowercase all shortnames in the domaingroup table
 UPDATE domaingroup SET shortname = LOWER(shortname);
 
-- lowercase all uniquekeys in streamscope
UPDATE streamscope SET uniquekey=LOWER(uniquekey);

-- lowercase all destinationuniqueid in aplicationalertnotification
UPDATE applicationalertnotification SET destinationuniqueid=LOWER(destinationuniqueid);

-- lowercase all shortnames in the organization table
UPDATE organization SET shortname=LOWER(shortname);

-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0037RenameMissionStatementColumns.sql

--
-- Set database version to 0.9.0037
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0037', 'U0037RenameMissionStatementColumns', 'Rename missionStatement columns');

--
-- Rename missionStatement in Org to description
--
ALTER TABLE Organization RENAME COLUMN missionStatement TO description;

--
-- Rename missionStatement in DomainGroup to description
--
ALTER TABLE DomainGroup RENAME COLUMN missionStatement TO description;

--
-- Rename quote in Person to jobDescription
--
ALTER TABLE Person RENAME COLUMN quote TO jobDescription;


-- From /opt/eurekastreams/web/target/classes/db/scripts/../migration/0/9/U0038IntroVideoUpdates.sql

--
-- Set database version to 0.9.0038
--

insert into db_version (major, minor, patch, scriptname, description) values (0, 9, '0038', 'U0038IntroVideoUpdates', 'Update tutorial videos.');

UPDATE tutorialvideo 
SET dialogtitle='Start Page', innercontenttitle='Start Page', innercontent='The start page is your own personal homepage. You can customize it with apps that display streams of activity, news feeds from both external and internal sources, or lightweight productivity applications.'
WHERE page='START'; 

UPDATE tutorialvideo 
SET dialogtitle='Profiles', innercontenttitle='Profiles', innercontent='The profiles page provides you with a quick way to browse and search for colleagues, groups and organizations based upon their profile information and organization affiliation.'
WHERE page='ORGANIZATIONS'; 

UPDATE tutorialvideo 
SET dialogtitle='Activity', innercontenttitle='Activity', innercontent='On your activity page, you can view all employee and group streams you are following and easily group and filter your streams to fit your work style.'
WHERE page='ACTIVITY'; 

UPDATE tutorialvideo 
SET dialogtitle='My Profile', innercontenttitle='My Profile', innercontent='Welcome to your personal profile. Use your profile to share information about your skills and background and your stream to post messages and links about your work-related activity.'
WHERE page='PEOPLE'; 
