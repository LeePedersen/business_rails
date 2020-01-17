--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: divisions; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.divisions (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.divisions OWNER TO "Guest";

--
-- Name: divisions_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisions_id_seq OWNER TO "Guest";

--
-- Name: divisions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.employees (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    division_id integer,
    age integer
);


ALTER TABLE public.employees OWNER TO "Guest";

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO "Guest";

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: employees_projects; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.employees_projects (
    employee_id bigint,
    project_id bigint
);


ALTER TABLE public.employees_projects OWNER TO "Guest";

--
-- Name: projects; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO "Guest";

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO "Guest";

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: divisions id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-01-16 17:01:04.508482	2020-01-16 17:01:04.508482
\.


--
-- Data for Name: divisions; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.divisions (id, name, created_at, updated_at) FROM stdin;
24	HR	2020-01-16 23:19:30.633628	2020-01-16 23:19:30.633628
26	IT	2020-01-16 23:19:30.731729	2020-01-16 23:19:30.731729
27	Public Relations	2020-01-16 23:19:30.789937	2020-01-16 23:19:30.789937
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.employees (id, name, created_at, updated_at, division_id, age) FROM stdin;
247	Donte Gislason	2020-01-16 23:19:30.637612	2020-01-16 23:19:30.637612	24	1272
248	Rivka Conn	2020-01-16 23:19:30.639947	2020-01-16 23:19:30.639947	24	4987
249	Ezra Casper	2020-01-16 23:19:30.641986	2020-01-16 23:19:30.641986	24	3367
250	Verline Koss	2020-01-16 23:19:30.643999	2020-01-16 23:19:30.643999	24	3126
251	Ms. Kevin Anderson	2020-01-16 23:19:30.646121	2020-01-16 23:19:30.646121	24	3081
252	Loren Ziemann I	2020-01-16 23:19:30.648273	2020-01-16 23:19:30.648273	24	3434
253	Fredric Paucek IV	2020-01-16 23:19:30.650462	2020-01-16 23:19:30.650462	24	43
254	Derek Tromp DDS	2020-01-16 23:19:30.652943	2020-01-16 23:19:30.652943	24	4256
255	Ruthann Conn	2020-01-16 23:19:30.655081	2020-01-16 23:19:30.655081	24	92
256	Brenton Frami	2020-01-16 23:19:30.657165	2020-01-16 23:19:30.657165	24	197
257	Mr. Ronny Lowe	2020-01-16 23:19:30.659337	2020-01-16 23:19:30.659337	24	4413
258	Herschel Muller	2020-01-16 23:19:30.661711	2020-01-16 23:19:30.661711	24	2186
259	Lonnie Walter Sr.	2020-01-16 23:19:30.663877	2020-01-16 23:19:30.663877	24	3102
260	Tameka Buckridge	2020-01-16 23:19:30.665878	2020-01-16 23:19:30.665878	24	1026
261	Esperanza Raynor	2020-01-16 23:19:30.668063	2020-01-16 23:19:30.668063	24	2857
262	Fatima Leuschke	2020-01-16 23:19:30.671282	2020-01-16 23:19:30.671282	24	4430
263	Nisha Hickle	2020-01-16 23:19:30.673572	2020-01-16 23:19:30.673572	24	4384
264	Garfield Brakus	2020-01-16 23:19:30.676077	2020-01-16 23:19:30.676077	24	2532
265	Jame Kertzmann	2020-01-16 23:19:30.679913	2020-01-16 23:19:30.679913	24	1983
266	Mr. Daren Wuckert	2020-01-16 23:19:30.68225	2020-01-16 23:19:30.68225	24	783
287	Rene Beatty	2020-01-16 23:19:30.733924	2020-01-16 23:19:30.733924	26	1458
288	Marcene Hodkiewicz	2020-01-16 23:19:30.736412	2020-01-16 23:19:30.736412	26	1409
289	Bryan Orn	2020-01-16 23:19:30.738597	2020-01-16 23:19:30.738597	26	2406
290	Dallas Kshlerin III	2020-01-16 23:19:30.74068	2020-01-16 23:19:30.74068	26	1996
291	Miss Ross Mertz	2020-01-16 23:19:30.742725	2020-01-16 23:19:30.742725	26	4812
292	Winford Cassin IV	2020-01-16 23:19:30.744752	2020-01-16 23:19:30.744752	26	1434
293	Augustina Lemke	2020-01-16 23:19:30.746765	2020-01-16 23:19:30.746765	26	4802
294	Rex Daniel	2020-01-16 23:19:30.748766	2020-01-16 23:19:30.748766	26	3306
295	Houston Weber	2020-01-16 23:19:30.751075	2020-01-16 23:19:30.751075	26	2905
296	Jonah Bernhard	2020-01-16 23:19:30.753149	2020-01-16 23:19:30.753149	26	4593
297	Monty Kirlin	2020-01-16 23:19:30.755247	2020-01-16 23:19:30.755247	26	3513
298	Jovan Rogahn	2020-01-16 23:19:30.757264	2020-01-16 23:19:30.757264	26	4945
299	Garth Weimann	2020-01-16 23:19:30.759222	2020-01-16 23:19:30.759222	26	1533
300	Riley Bednar	2020-01-16 23:19:30.761499	2020-01-16 23:19:30.761499	26	3283
301	Penelope Bergnaum	2020-01-16 23:19:30.764009	2020-01-16 23:19:30.764009	26	4944
302	Ahmed Barton	2020-01-16 23:19:30.77924	2020-01-16 23:19:30.77924	26	1265
303	Aurelia Conn MD	2020-01-16 23:19:30.781558	2020-01-16 23:19:30.781558	26	3346
304	Renata Kub	2020-01-16 23:19:30.783555	2020-01-16 23:19:30.783555	26	4247
305	Ms. Dirk Stoltenberg	2020-01-16 23:19:30.78598	2020-01-16 23:19:30.78598	26	354
306	Earnest Howe	2020-01-16 23:19:30.788075	2020-01-16 23:19:30.788075	26	1161
307	Eleanor Blick	2020-01-16 23:19:30.792198	2020-01-16 23:19:30.792198	27	4350
308	Dr. Cristin Hessel	2020-01-16 23:19:30.794207	2020-01-16 23:19:30.794207	27	1874
309	Niki Thompson	2020-01-16 23:19:30.796111	2020-01-16 23:19:30.796111	27	1634
310	Miss Drew Prosacco	2020-01-16 23:19:30.797964	2020-01-16 23:19:30.797964	27	4614
311	Milford Spinka	2020-01-16 23:19:30.799825	2020-01-16 23:19:30.799825	27	1550
312	Isela Goodwin	2020-01-16 23:19:30.802003	2020-01-16 23:19:30.802003	27	3081
313	Mae Gleason	2020-01-16 23:19:30.803931	2020-01-16 23:19:30.803931	27	2039
314	Britt Schaden	2020-01-16 23:19:30.805808	2020-01-16 23:19:30.805808	27	3066
315	Wes Nicolas	2020-01-16 23:19:30.80798	2020-01-16 23:19:30.80798	27	4621
316	Conchita Boehm	2020-01-16 23:19:30.810556	2020-01-16 23:19:30.810556	27	2199
317	Simon Ondricka II	2020-01-16 23:19:30.812749	2020-01-16 23:19:30.812749	27	1567
318	Jewell Murphy	2020-01-16 23:19:30.815336	2020-01-16 23:19:30.815336	27	2934
319	Voncile Hegmann DDS	2020-01-16 23:19:30.818904	2020-01-16 23:19:30.818904	27	4058
320	Dr. Randall Maggio	2020-01-16 23:19:30.82113	2020-01-16 23:19:30.82113	27	2932
321	Isabella Marks	2020-01-16 23:19:30.823029	2020-01-16 23:19:30.823029	27	308
322	Everette Miller	2020-01-16 23:19:30.824902	2020-01-16 23:19:30.824902	27	4767
323	Steven Schowalter	2020-01-16 23:19:30.827105	2020-01-16 23:19:30.827105	27	3529
324	Floyd Haley	2020-01-16 23:19:30.829058	2020-01-16 23:19:30.829058	27	4562
325	Elvin Rath	2020-01-16 23:19:30.830912	2020-01-16 23:19:30.830912	27	4942
326	Branden Rippin	2020-01-16 23:19:30.832741	2020-01-16 23:19:30.832741	27	2603
\.


--
-- Data for Name: employees_projects; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.employees_projects (employee_id, project_id) FROM stdin;
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.projects (id, name, created_at, updated_at) FROM stdin;
455		2020-01-17 00:34:00.091979	2020-01-17 00:34:00.091979
456	fixing things	2020-01-17 00:38:51.875893	2020-01-17 00:38:51.875893
405	Edmundo	2020-01-16 23:19:30.54904	2020-01-16 23:19:30.54904
406	Nicki	2020-01-16 23:19:30.551907	2020-01-16 23:19:30.551907
407	Elsie	2020-01-16 23:19:30.553776	2020-01-16 23:19:30.553776
408	Latashia	2020-01-16 23:19:30.555368	2020-01-16 23:19:30.555368
409	Denny	2020-01-16 23:19:30.556924	2020-01-16 23:19:30.556924
410	Joel	2020-01-16 23:19:30.558461	2020-01-16 23:19:30.558461
411	Antony	2020-01-16 23:19:30.560221	2020-01-16 23:19:30.560221
412	Rod	2020-01-16 23:19:30.561804	2020-01-16 23:19:30.561804
413	Troy	2020-01-16 23:19:30.563473	2020-01-16 23:19:30.563473
414	Fausto	2020-01-16 23:19:30.565039	2020-01-16 23:19:30.565039
415	Elouise	2020-01-16 23:19:30.566612	2020-01-16 23:19:30.566612
416	Georgann	2020-01-16 23:19:30.568384	2020-01-16 23:19:30.568384
417	Daysi	2020-01-16 23:19:30.570009	2020-01-16 23:19:30.570009
418	Percy	2020-01-16 23:19:30.571576	2020-01-16 23:19:30.571576
420	Elsa	2020-01-16 23:19:30.574696	2020-01-16 23:19:30.574696
421	Duane	2020-01-16 23:19:30.576595	2020-01-16 23:19:30.576595
422	Isreal	2020-01-16 23:19:30.57815	2020-01-16 23:19:30.57815
423	Stefania	2020-01-16 23:19:30.579728	2020-01-16 23:19:30.579728
424	Etsuko	2020-01-16 23:19:30.581356	2020-01-16 23:19:30.581356
425	Marquis	2020-01-16 23:19:30.582962	2020-01-16 23:19:30.582962
426	Willy	2020-01-16 23:19:30.585003	2020-01-16 23:19:30.585003
427	Misha	2020-01-16 23:19:30.586622	2020-01-16 23:19:30.586622
428	Fay	2020-01-16 23:19:30.58831	2020-01-16 23:19:30.58831
429	Emory	2020-01-16 23:19:30.589856	2020-01-16 23:19:30.589856
430	Jason	2020-01-16 23:19:30.591445	2020-01-16 23:19:30.591445
431	Alethia	2020-01-16 23:19:30.593328	2020-01-16 23:19:30.593328
432	Eldon	2020-01-16 23:19:30.594894	2020-01-16 23:19:30.594894
433	Sammy	2020-01-16 23:19:30.596543	2020-01-16 23:19:30.596543
434	Jaye	2020-01-16 23:19:30.598101	2020-01-16 23:19:30.598101
435	Vince	2020-01-16 23:19:30.599912	2020-01-16 23:19:30.599912
436	Trisha	2020-01-16 23:19:30.601664	2020-01-16 23:19:30.601664
437	Karima	2020-01-16 23:19:30.603276	2020-01-16 23:19:30.603276
438	Terrell	2020-01-16 23:19:30.60484	2020-01-16 23:19:30.60484
439	Clayton	2020-01-16 23:19:30.606728	2020-01-16 23:19:30.606728
440	Deloise	2020-01-16 23:19:30.608352	2020-01-16 23:19:30.608352
441	Fatimah	2020-01-16 23:19:30.610089	2020-01-16 23:19:30.610089
442	Alana	2020-01-16 23:19:30.611919	2020-01-16 23:19:30.611919
443	Cliff	2020-01-16 23:19:30.613525	2020-01-16 23:19:30.613525
444	Abraham	2020-01-16 23:19:30.61508	2020-01-16 23:19:30.61508
445	Herman	2020-01-16 23:19:30.616643	2020-01-16 23:19:30.616643
446	Mitchel	2020-01-16 23:19:30.618669	2020-01-16 23:19:30.618669
447	Emmanuel	2020-01-16 23:19:30.620384	2020-01-16 23:19:30.620384
448	Wilfred	2020-01-16 23:19:30.621978	2020-01-16 23:19:30.621978
449	Laraine	2020-01-16 23:19:30.623552	2020-01-16 23:19:30.623552
450	Agustina	2020-01-16 23:19:30.625093	2020-01-16 23:19:30.625093
451	Jami	2020-01-16 23:19:30.626565	2020-01-16 23:19:30.626565
452	Florentino	2020-01-16 23:19:30.627974	2020-01-16 23:19:30.627974
453	Brice	2020-01-16 23:19:30.629403	2020-01-16 23:19:30.629403
454	Thurman	2020-01-16 23:19:30.631178	2020-01-16 23:19:30.631178
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20200115161743
20200115161931
20200115162008
20200115162726
20200115162956
20200115163757
20200116225413
\.


--
-- Name: divisions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.divisions_id_seq', 27, true);


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.employees_id_seq', 327, true);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.projects_id_seq', 456, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: divisions divisions_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_employees_projects_on_employee_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_employees_projects_on_employee_id ON public.employees_projects USING btree (employee_id);


--
-- Name: index_employees_projects_on_project_id; Type: INDEX; Schema: public; Owner: Guest
--

CREATE INDEX index_employees_projects_on_project_id ON public.employees_projects USING btree (project_id);


--
-- Name: employees fk_rails_550e0790c5; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_rails_550e0790c5 FOREIGN KEY (division_id) REFERENCES public.divisions(id);


--
-- PostgreSQL database dump complete
--

