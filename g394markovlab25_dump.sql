--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: marking_sample; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA marking_sample;


ALTER SCHEMA marking_sample OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: exam; Type: TABLE; Schema: marking_sample; Owner: postgres
--

CREATE TABLE marking_sample.exam (
    id integer,
    discip integer,
    ts timestamp without time zone
);


ALTER TABLE marking_sample.exam OWNER TO postgres;

--
-- Name: mark; Type: TABLE; Schema: marking_sample; Owner: postgres
--

CREATE TABLE marking_sample.mark (
    id integer,
    exam integer,
    stud integer,
    res integer
);


ALTER TABLE marking_sample.mark OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: marking_sample; Owner: postgres
--

CREATE TABLE marking_sample.student (
    id integer,
    first character varying(50),
    last character varying(50),
    sex character(1)
);


ALTER TABLE marking_sample.student OWNER TO postgres;

--
-- Data for Name: exam; Type: TABLE DATA; Schema: marking_sample; Owner: postgres
--

COPY marking_sample.exam (id, discip, ts) FROM stdin;
\.


--
-- Data for Name: mark; Type: TABLE DATA; Schema: marking_sample; Owner: postgres
--

COPY marking_sample.mark (id, exam, stud, res) FROM stdin;
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: marking_sample; Owner: postgres
--

COPY marking_sample.student (id, first, last, sex) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

