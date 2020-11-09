--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.0

-- Started on 2020-11-07 14:46:27 PST

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 25062)
-- Name: features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.features (
    store character varying(30) NOT NULL,
    sale_date date DEFAULT CURRENT_DATE NOT NULL,
    temperature double precision NOT NULL,
    fuel_price double precision NOT NULL,
    markdown1 double precision,
    markdown2 double precision,
    markdown3 double precision,
    markdown4 double precision,
    markdown5 double precision,
    unemployment double precision,
    isholiday character varying(30) NOT NULL
);


ALTER TABLE public.features OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 25085)
-- Name: merged_sales_features; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merged_sales_features (
    store character varying(30),
    temperature double precision,
    fuel_price double precision,
    markdown1 double precision,
    markdown2 double precision,
    markdown3 double precision,
    markdown4 double precision,
    markdown5 double precision,
    unemployment double precision,
    isholiday character varying(30),
    dept character varying,
    weekly_sales double precision
);


ALTER TABLE public.merged_sales_features OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 25078)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    store character varying,
    dept character varying,
    sale_date date,
    weekly_sales double precision,
    isholiday boolean,
    id integer NOT NULL
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 25076)
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sales_id_seq OWNER TO postgres;

--
-- TOC entry 3236 (class 0 OID 0)
-- Dependencies: 203
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;


--
-- TOC entry 3102 (class 2604 OID 25081)
-- Name: sales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);


--
-- TOC entry 3104 (class 2606 OID 25067)
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (sale_date, store);


-- Completed on 2020-11-07 14:46:28 PST

--
-- PostgreSQL database dump complete
--

