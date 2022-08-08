--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

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
-- Name: Continent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Continent" (
    id uuid NOT NULL,
    continent "char" NOT NULL,
    "twoLetterSymbol" "char",
    "threeLetterSymbol" "char",
    "infectionRisk" double precision NOT NULL,
    "caseFatilityRate" double precision NOT NULL,
    "testPercentage" double precision NOT NULL,
    "recoveryProporation" double precision NOT NULL,
    "totalCases" bigint NOT NULL,
    "newCases" integer NOT NULL,
    "totalDeaths" integer NOT NULL,
    "newDeaths" integer NOT NULL,
    "totalRecovered" "char" NOT NULL,
    "activeCases" integer NOT NULL,
    "totalTests" "char" NOT NULL,
    population "char" NOT NULL
);


--
-- Name: Country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Country" (
    id text NOT NULL,
    rank integer NOT NULL,
    country text NOT NULL,
    "twoLetterSymbol" text,
    "threeLetterSymbol" text,
    "infectionRisk" double precision NOT NULL,
    "caseFatalityRate" double precision NOT NULL,
    "recoveryProporation" double precision NOT NULL,
    "totalCases" bigint NOT NULL,
    "newCases" bigint NOT NULL,
    "totalDeaths" bigint NOT NULL,
    "newDeaths" bigint NOT NULL,
    "totalRecovered" text NOT NULL,
    "newRecovered" bigint NOT NULL,
    "activeCases" bigint NOT NULL,
    population text NOT NULL,
    "totalTests" text NOT NULL,
    continent text NOT NULL
);


--
-- Name: State; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."State" (
    country text,
    province text NOT NULL,
    iso text,
    date text,
    confirmed integer,
    recovered integer,
    deaths integer,
    "caseFatalityRate" double precision,
    "fatalityRate" double precision,
    active integer,
    "recoveryProporation" double precision
);


--
-- Data for Name: Continent; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Continent" (id, continent, "twoLetterSymbol", "threeLetterSymbol", "infectionRisk", "caseFatilityRate", "testPercentage", "recoveryProporation", "totalCases", "newCases", "totalDeaths", "newDeaths", "totalRecovered", "activeCases", "totalTests", population) FROM stdin;
\.


--
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Country" (id, rank, country, "twoLetterSymbol", "threeLetterSymbol", "infectionRisk", "caseFatalityRate", "recoveryProporation", "totalCases", "newCases", "totalDeaths", "newDeaths", "totalRecovered", "newRecovered", "activeCases", population, "totalTests", continent) FROM stdin;
63492a0f-56d7-4c00-9ac1-d64fd5414029	0	Total:	\N	\N	0	1.12	94.76	572872470	392877	6398648	447	542881146	271133	23592676	0	0	All
40f44943-8413-4a31-a4df-deee8111f85f	0	World	\N	\N	0	1.12	94.76	572872470	392877	6398648	447	542881146	271133	23592676	0	0	All
be02608d-a52f-4586-ae9b-220dee7daaf1	1	USA	us	usa	0	1.14	94.74	91942744	0	1051235	0	87107075	0	3784434	0	1062672363	North America
f6ecf8d7-5867-42dc-9290-24fda4cb14f0	2	India	in	ind	3.11	1.2	98.46	43847065	0	525930	0	43171653	0	149482	1407791774	871656205	Asia
338a3103-483a-4292-9559-1aac2ed47a90	3	Brazil	br	bra	15.54	2.02	95.05	33506282	0	676551	0	31846441	0	983290	215653799	63776166	South America
911f9162-c39d-4e1c-9768-4d147cce2604	4	France	fr	fra	50.85	0.45	93.16	33339350	0	151237	0	31057688	0	2130425	65569260	271490188	Europe
4be614b7-9865-4e78-a841-7dca20abd314	5	Germany	de	deu	35.86	0.47	93.27	30239122	0	143061	0	28203900	89600	1892161	84332524	122332384	Europe
6b196012-2ecd-45e8-aac2-9379e5300894	6	UK	gb	gbr	33.83	0.79	96.73	23212565	0	182727	0	22454371	17182	575467	68616286	522526476	Europe
55dd283b-20e8-49ac-96f9-774f05abdfa9	7	Italy	it	ita	33.95	0.83	92.05	20467349	0	170527	0	18841001	0	1455821	60279812	234264775	Europe
bc4902f3-885b-4666-bbae-a159b53c831b	8	S. Korea	kr	kor	37.15	0.13	96.3	19077659	68579	24825	31	18371070	6236	681764	51359526	15804065	Asia
8d1ed383-8d38-4bf0-9931-ed46922de1a4	9	Russia	ru	rus	12.68	2.06	96.82	18517779	6659	382080	41	17929059	4687	206640	146062583	273400000	Europe
a30588f4-4e4b-4e3b-92b2-1baeb341682e	10	Turkey	tr	tur	18.01	0.64	98.05	15524071	0	99184	0	15221506	0	203381	86197768	162743369	Asia
63ceffad-0f5b-4c16-9ac6-9a3e037159ab	11	Spain	es	esp	28.07	0.83	94.83	13132159	0	109642	0	12453757	0	568760	46791856	471036328	Europe
905d7fab-0083-4209-8a10-61f8b3e74994	12	Japan	jp	jpn	8.58	0.29	90.74	10785505	180826	31735	38	9787072	54449	966698	125683870	60065262	Asia
de1a2462-a817-4b62-839f-9c0f5f717eda	13	Vietnam	vn	vnm	10.86	0.4	91.39	10764986	0	43091	0	9837645	0	884250	99132274	85826548	Asia
7b0615b0-8cf9-43f0-82a9-55f99f273ff2	14	Argentina	ar	arg	20.56	1.36	97.72	9465827	0	129202	0	9249607	3879	87018	46045152	35716069	South America
16766eed-520b-48d0-b7a1-f268b1b95520	15	Australia	au	aus	34.55	0.12	95.26	9020385	53247	11032	64	8593214	0	416139	26105850	75591502	Australia/Oceania
7d4fc69a-8af7-4d94-8b6e-61be6d099a90	16	Netherlands	nl	nld	48.23	0.27	97.75	8301277	0	22450	0	8114821	0	164006	17212504	21107399	Europe
fa5c2b0a-f283-406a-9d80-2ec4c1309a62	17	Iran	ir	irn	8.47	1.94	96.8	7304550	0	141593	0	7071005	0	91952	86194829	52690831	Asia
6d301ced-1214-48a3-952e-ffc655c8c284	18	Mexico	mx	mex	4.98	4.99	85.76	6556679	33660	326879	115	5623127	25383	606673	131707128	17361633	North America
f90f48b5-e45e-4039-b963-64af3ef07a1c	19	Colombia	co	col	12.02	2.25	96.9	6247634	0	140603	0	6053853	0	53178	51993654	35889624	South America
2ff2436f-a569-44bf-ba29-083ad4f81f70	20	Indonesia	id	idn	2.2	2.55	96.85	6154494	0	156880	0	5960833	0	36781	279447364	102562428	Asia
6450f181-d69f-44f8-9707-e16ef455de60	21	Poland	pl	pol	16	1.93	88.31	6041891	0	116492	0	5335797	0	589602	37761748	36585593	Europe
9fb86a08-d197-4fcb-b08a-bebbe5f6c642	22	Portugal	pt	prt	52.41	0.46	95.67	5312553	0	24513	0	5082282	0	205758	10135846	43527258	Europe
6c1e2aef-eb2e-4cf7-9382-ed1358459d13	23	Ukraine	ua	ukr	11.62	2.17	97.79	5020181	0	108690	0	4909329	321	2162	43195994	19521252	Europe
3648e894-a54c-41c8-8abf-4994e7b2b79c	25	Austria	at	aut	51.12	0.41	96.83	4658125	0	18987	0	4510463	0	128675	9111635	192634445	Europe
e104cdc2-f1cc-45de-a101-fc1d50310e23	26	Malaysia	my	mys	13.97	0.77	98.2	4640235	0	35888	0	4556938	0	47409	33215327	61978267	Asia
b012c316-0e20-4bfe-9ce2-edf9dcca2f0b	27	Thailand	th	tha	6.52	0.68	98.79	4570885	2424	31101	25	4515759	1816	24025	70158616	17270775	Asia
d16f103a-0088-436d-bac6-0a29535520f9	28	Israel	il	isr	48.66	0.25	98.23	4537907	0	11209	0	4457705	0	68993	9326000	41373364	Asia
0a14bd04-b96e-4afb-b4bf-8a4657740ccd	29	Taiwan	tw	twn	18.35	0.19	87.3	4386289	24093	8478	86	3829369	34658	548442	23905041	22289912	Asia
fe31ac25-e0fe-49e9-a802-f00e0ed703d4	30	Belgium	be	bel	37.47	0.73	95.28	4381331	0	32118	0	4174671	9415	174542	11692911	34887878	Europe
311c2c2c-2484-42eb-a30b-e163a001a74e	31	Greece	gr	grc	40.81	0.73	85.84	4210771	0	30707	0	3614441	0	565623	10318843	87638663	Europe
4a532c8d-46b7-45ea-b6a4-eb4966239356	32	Chile	cl	chl	21.39	1.42	92.44	4161478	0	59216	0	3846891	0	255371	19452264	41539472	South America
e25f14b6-e3e8-4944-bef8-81d695a18188	33	Canada	ca	can	10.44	1.09	92.11	4012359	0	43583	0	3695850	0	272926	38419880	62586673	North America
d2c89dbe-ab3b-4178-8d7d-1c908d7471c8	34	South Africa	za	zaf	6.58	2.55	97.3	4001816	0	101942	0	3893872	0	6002	60840210	25913254	Africa
05633ff1-5dc7-49f6-b72a-2052c46ec3e1	35	Czechia	cz	cze	36.88	1.02	98.52	3964280	2701	40380	4	3905474	2532	18426	10749661	55672067	Europe
1653a805-d080-4261-8e3f-dd2c7fef64bf	36	Switzerland	ch	che	44.32	0.36	94.96	3893084	0	14024	0	3697062	5941	181998	8784242	21598881	Europe
c5905947-ac1b-4bbb-8985-e794bb6ab6c3	37	Peru	pe	per	11.21	5.63	90.71	3801893	0	213918	0	3448767	0	139208	33912567	32548901	South America
f0e6ea86-a22d-405c-a0c7-63dbb2a2c03f	38	Philippines	ph	phl	3.32	1.62	97.79	3741987	0	60641	0	3659139	0	22207	112568274	31245239	Asia
9aa3efef-70e8-4d44-bb06-5113e05a298a	39	Denmark	dk	dnk	52.28	0.22	98.99	3049890	0	6581	0	3019074	0	24235	5833970	127888446	Europe
4a525969-421a-4975-ae32-bfca080f31ec	40	Romania	ro	rou	15.75	2.2	95.74	2988788	0	65839	0	2861348	0	61601	18975038	23826769	Europe
1846091c-6ef4-4641-8231-afcf4a6a77b6	41	Sweden	se	swe	24.77	0.76	98.5	2533978	0	19216	0	2495909	0	18853	10228229	18731976	Europe
7d322f05-e02b-40f5-bd69-577adea222a3	42	Iraq	iq	irq	5.76	1.04	97.47	2421716	0	25280	0	2360420	0	36016	42071080	18985439	Asia
cc09f3b8-9fd0-44ca-859c-ad9524bf9f28	43	Serbia	rs	srb	23.91	0.78	97.28	2072089	0	16193	0	2015735	0	40161	8665330	10094224	Europe
c41513ff-6514-470a-b9f1-ff13a051cad2	44	Bangladesh	bd	bgd	1.19	1.46	96.56	2000279	0	29256	0	1931494	0	39529	168049768	14538033	Asia
d1e5413c-287a-449f-bd0d-6bfc56d0b365	45	Hungary	hu	hun	20.3	2.4	96.52	1951079	0	46736	0	1883085	0	21258	9610135	11394556	Europe
785cd61b-3f21-4b2c-958a-ea07ecdad12c	46	Slovakia	sk	svk	33.13	1.12	98.3	1810418	1015	20193	5	1779575	704	10650	5465057	7210437	Europe
802162af-bec2-4b62-849e-4ecbf1d9c380	47	Jordan	jo	jor	16.33	0.83	99.11	1700526	0	14068	0	1685354	0	1104	10410584	16894012	Asia
81672076-33c2-48e4-81d2-db6ce456cc78	48	Georgia	ge	geo	41.96	1.01	98.19	1667453	0	16847	0	1637293	0	13313	3973491	16920079	Asia
f7c6cb29-752b-4f13-b419-813680ad7e12	49	Singapore	sg	sgp	27.52	0.09	93.42	1636109	0	1466	0	1528441	0	106202	5944571	24107231	Asia
aed73591-ee4f-4d22-a0f3-3d025d0b7821	50	Ireland	ie	irl	32.25	0.46	96.34	1628745	0	7537	0	1569062	0	52146	5050752	12508154	Europe
ff0aaa9f-fc0e-4469-a70f-cece3c15fbb2	51	New Zealand	nz	nzl	30.98	0.12	95.7	1549589	9080	1890	22	1482919	10770	64780	5002100	7354369	Australia/Oceania
935ff8a6-77f1-4114-9403-9cbb7fa9cb99	52	Pakistan	pk	pak	0.67	1.97	97.34	1549073	679	30462	7	1507935	0	10676	229676994	29379709	Asia
4d14f059-2c26-4982-8132-fcc9a3e1deb3	53	Norway	no	nor	26.4	0.25	99.42	1453985	0	3596	0	1445611	0	4778	5508057	11002430	Europe
d1fc1231-ca5a-4f3c-b4cb-4770cdf15a98	54	Kazakhstan	kz	kaz	6.89	1.03	97.92	1326190	2480	13664	0	1298633	872	13893	19236704	11575012	Asia
5de37feb-3a9b-42d2-8c09-345c543829a7	55	Hong Kong	hk	hkg	17.18	0.72	92.6	1309208	0	9448	0	1212360	0	87400	7621546	50415048	Asia
75159d96-aba5-49fc-96a1-34fa22ef4770	56	Morocco	ma	mar	3.32	1.29	97.82	1255681	0	16204	0	1228339	0	11138	37806598	12148796	Africa
a2f0283a-7995-4463-889c-5bfef1e7796d	57	Bulgaria	bg	bgr	17.43	3.13	95.49	1192284	0	37319	0	1138566	0	16399	6841397	10207607	Europe
28cc8b8a-2bf8-43a0-935a-02226843eecb	58	Croatia	hr	hrv	28.95	1.38	97.69	1173374	0	16188	0	1146221	0	10965	4053451	5012871	Europe
dc7c0e8c-ad34-446d-a695-59fe62ef8c2d	59	Finland	fi	fin	21.07	0.43	96.38	1171034	0	5012	0	1128585	0	37437	5558344	11129795	Europe
49bd08ef-9b3b-49c0-b8e6-fa7816ff0700	60	Lebanon	lb	lbn	17.01	0.91	94.54	1150424	0	10499	0	1087587	0	52338	6762880	4795578	Asia
eea4bad6-f826-4771-b1e4-d43b3124a0de	61	Tunisia	tn	tun	9.23	2.6	0	1114370	0	28942	0	1085428	0	0	12071898	4803289	Africa
e3509c74-070d-4629-b48e-478afa585c60	62	Cuba	cu	cub	9.79	0.77	99.19	1107100	0	8529	0	1098175	0	396	11312462	13997964	North America
1fe0506d-1912-462f-880b-04c8ebeae16c	63	Lithuania	lt	ltu	40.78	0.85	96.29	1078344	850	9197	1	1038300	0	30847	2644585	10039212	Europe
b9e72506-ad28-4266-8ab3-57bbb16ae65d	64	Slovenia	si	svn	51.33	0.63	97.42	1067317	0	6673	0	1039799	0	20845	2079523	2696528	Europe
c2273b77-1484-454b-a2a4-42478d4847df	65	Guatemala	gt	gtm	5.4	1.88	90.62	1004311	0	18881	0	910145	0	75285	18594330	5209636	North America
885c537d-9654-4502-8a5d-81bd424a659c	66	Belarus	by	blr	10.53	0.72	99.15	994037	0	7118	0	985592	0	1327	9442959	13646641	Europe
5b87d5fe-3ba9-42e8-bb88-09ae079e1fcb	67	Bolivia	bo	bol	8.26	2.22	92.03	991680	6050	22007	8	912600	2551	57073	11999143	2705422	South America
6743d550-56b6-4a61-9ef4-67cd895e11ef	68	Nepal	np	npl	3.25	1.22	98.53	982719	0	11954	0	968228	0	2537	30210139	5793443	Asia
5d7de038-91f5-4150-b3f0-ecb490d78997	69	UAE	ae	are	9.66	0.24	97.93	978966	0	2329	0	958728	0	17909	10135147	175105328	Asia
6a4f1e2a-ae9b-4d53-8966-3364c7e486ec	70	Uruguay	uy	ury	27.66	0.76	99.03	967808	0	7387	0	958402	0	2019	3498382	6114822	South America
f86d0349-d502-4895-bf64-3364728f10c0	71	Ecuador	ec	ecu	5.2	3.78	92.96	946487	0	35786	0	879893	0	30808	18191766	2470170	South America
21d1365d-9bc7-4624-a17d-c30d5b86a35f	72	Panama	pa	pan	21.15	0.89	97.9	942083	0	8395	0	922313	0	11375	4453881	6695106	North America
75989859-6f57-4c6a-82de-9134e3698840	73	Mongolia	mn	mng	27.59	0.23	0	934357	0	2179	0	932178	0	0	3386417	4030048	Asia
bb6306c0-534b-4377-9027-c92d4338c384	74	Costa Rica	cr	cri	17.44	0.94	95.11	904934	0	8525	0	860711	0	35698	5189387	4659757	North America
681d9074-d938-4db5-935b-c3468192b7a5	75	Latvia	lv	lva	46.18	0.69	97.88	851433	0	5879	0	833382	0	12172	1843529	7381884	Europe
8322c6dd-f9f8-4061-bf31-a64e1ba32344	76	Saudi Arabia	sa	sau	2.24	1.15	97.94	806401	0	9236	0	789766	0	7399	35924323	43762431	Asia
0945c7b4-d129-4deb-9c5e-803aa859e387	77	Azerbaijan	az	aze	7.7	1.22	98.6	795495	0	9729	0	784356	0	1410	10326345	7011596	Asia
3a31a649-913a-4832-a625-b9ea1fc659c6	78	Paraguay	py	pry	9.42	2.77	93.99	688820	0	19083	0	647415	0	22322	7311980	2646163	South America
79b25104-b717-4a88-a9f8-deb868ddf519	79	Sri Lanka	lk	lka	3.08	2.49	97.41	664704	0	16535	0	647466	0	703	21597105	6486117	Asia
0d159598-c97e-485c-a17b-a34a82ae29bd	80	Bahrain	bh	bhr	35.85	0.23	98.29	653447	0	1506	0	642249	0	9692	1822710	10134436	Asia
d6f78add-5ba5-4a09-9207-f7ec95db5e61	81	Kuwait	kw	kwt	14.73	0.39	99	648216	0	2556	0	641752	0	3908	4399926	8242720	Asia
4b172cda-eece-4d9d-959d-5d9bd0152a7a	82	Dominican Republic	do	dom	5.64	0.7	98.76	624167	0	4383	0	616402	0	3382	11070706	3566351	North America
656a97f0-ebc6-49bd-8aca-ba2b36ef2e5f	83	Myanmar	mm	mmr	1.11	3.17	96.56	613887	0	19434	0	592774	0	1679	55156791	8479903	Asia
d4008e11-6975-4ea6-a9d0-aa571c2604aa	84	Palestine	ps	pse	11.09	0.9	98.36	592699	0	5360	0	582977	0	4362	5344293	3078533	Asia
8ffed1e8-55da-40c5-ba55-c8217745b6d4	85	Estonia	ee	est	43.98	0.45	89.74	584178	0	2612	0	524225	0	57341	1328362	3429748	Europe
f2bd16b1-2a21-42c3-ba7a-62e372619ba6	86	Cyprus	cy	cyp	44.55	0.2	22.78	545896	0	1086	0	124370	0	420440	1225359	9477138	Asia
a4bf948e-feab-40c2-a4f3-8f1845227cb0	87	Venezuela	ve	ven	1.88	1.08	98.19	531657	0	5753	0	522054	0	3850	28271005	3359014	South America
40ec322d-781b-4601-a88e-ea02e883d286	88	Moldova	md	mda	12.96	2.22	96.89	520321	0	11567	0	504142	0	4612	4014770	3216305	Europe
7844e28f-fac5-4139-9e38-10524822bcc6	89	Egypt	eg	egy	0.49	4.77	85.75	515645	0	24613	0	442182	0	48850	106287529	3693367	Africa
7fbd3cf9-04e1-4ecf-8187-7c1a53fcdd39	90	Libya	ly	lby	7.12	1.28	97.68	502642	0	6431	0	490973	0	5238	7062664	2477219	Africa
8b530d04-0043-48cc-938c-71395833398f	91	Ethiopia	et	eth	0.41	1.54	95.3	491508	0	7564	0	468421	0	15523	120795782	5115781	Africa
06e13c04-2cd2-4b58-89c9-bf5e9673e7de	92	Honduras	hn	hnd	4.25	2.51	30.47	434796	0	10930	0	132498	0	291368	10227249	1429390	North America
07e7a02c-dadf-46fd-b333-03cf9576b9e3	93	Réunion	re	reu	47.25	0.19	97.52	429237	0	825	0	418572	0	9840	908397	1603660	Africa
f281c4d9-4a39-44d4-baa9-8deb858d73cb	94	Armenia	am	arm	14.27	2.03	97.23	424400	0	8629	0	412661	0	3110	2974584	3109931	Asia
d7b5b1f3-7613-497f-ad47-659c3e7b274f	95	Qatar	qa	qat	14.23	0.17	97.71	399553	0	680	0	390408	0	8465	2807805	3714907	Asia
0c7482a0-3655-48e5-a002-ea7e84e9a5e0	96	Oman	om	omn	7.31	1.08	97.88	393002	0	4260	0	384669	0	4073	5372617	25000000	Asia
6f12c131-ea0a-4953-9249-e3a16555b940	97	Bosnia and Herzegovina	ba	bih	11.81	4.14	0	382382	0	15825	0	366557	0	0	3239052	1806332	Europe
4d0b4ae2-5c78-4099-83c1-106807cc3ca4	98	Kenya	ke	ken	0.6	1.68	97.98	337085	0	5670	0	330261	0	1154	56197120	3804085	Africa
8be534c1-1507-4eaa-a2a7-d3ddfecd8b35	99	Zambia	zm	zmb	1.69	1.22	98.32	328550	0	4013	0	323022	0	1515	19438407	3608029	Africa
b9dfb35b-fcd7-4235-88db-3164f085fe32	100	Botswana	bw	bwa	13.28	0.85	98.96	325181	0	2763	0	321815	0	603	2448875	2026898	Africa
a4a08077-a4ec-4cca-a3f9-da0271e814a2	101	North Macedonia	mk	mkd	15.43	2.91	95.9	321386	0	9349	0	308199	0	3838	2083199	2088126	Europe
fddf0a3a-754d-4938-bf36-23233f4a20ff	102	Albania	al	alb	10.5	1.17	95.57	301394	0	3521	0	288047	0	9826	2871364	1866752	Europe
a1f7abfd-5e25-4c08-955a-c61a8ad19665	103	Luxembourg	lu	lux	42.44	0.4	94.62	274524	0	1102	0	259768	0	13654	646836	4349750	Europe
c1312566-0372-4b3f-b856-2ab3f468b8f2	104	Algeria	dz	dza	0.59	2.58	67.09	266654	0	6875	0	178911	0	80868	45472827	230861	Africa
97dd3c39-1d10-44f7-b8db-6719494b8cd1	105	Nigeria	ng	nga	0.12	1.21	97.44	259720	0	3146	0	253074	0	3500	216603542	5356770	Africa
09427c33-6194-4989-a06e-4d6d52518b06	106	Zimbabwe	zw	zwe	1.67	2.17	97.62	256217	0	5570	0	250112	0	535	15306064	2436185	Africa
e4a3c6fe-8601-48ca-b352-666fda42efef	107	Montenegro	me	mne	39.82	1.09	96.9	250173	0	2736	0	242410	0	5027	628229	2523803	Europe
c0e96d03-21df-42c0-a932-ec088d305cba	108	Uzbekistan	uz	uzb	0.7	0.67	98.73	242570	68	1637	0	239501	84	1432	34462672	1377915	Asia
11b1c43d-0f5c-4503-855a-6bc5588790e2	109	Mozambique	mz	moz	0.69	0.97	98.84	229252	0	2215	0	226593	0	444	33048848	1362541	Africa
b191f56d-eaf8-4a97-b1d3-e220e20aa686	110	Martinique	mq	mtq	56.54	0.47	0.05	211836	0	1005	0	104	0	210727	374669	828928	North America
a07df09d-690a-4ca7-8d76-0b01a071ea51	111	Laos	la	lao	2.81	0.36	0	210719	43	757	0	209962	0	0	7491793	1233207	Asia
a173c7c0-6c68-4505-a21e-303b977f4432	112	Kyrgyzstan	kg	kgz	2.99	1.49	97.55	201329	0	2991	0	196406	0	1932	6744654	1907195	Asia
4fd8c9f5-b433-4ae4-b8a0-3b04a1841304	113	Iceland	is	isl	57.96	0.09	0	200397	0	179	0	200218	0	0	345778	1981163	Europe
c784559e-003a-490b-9753-4b23ee5fdb39	114	Brunei	bn	brn	42.99	0.12	85.58	191774	0	225	0	164116	0	27433	446058	717784	Asia
a22a19dd-cd37-4b17-bb78-214d939dcba6	115	Afghanistan	af	afg	0.45	4.2	89.99	184360	85	7738	0	165904	27	10718	40723919	1019678	Asia
3aae6f72-2cd7-423d-9e01-c89c936d9d98	116	Maldives	mv	mdv	32.84	0.17	89	183908	0	307	0	163687	0	19914	560043	2213831	Asia
0eabfcba-af61-47f8-9054-217d94a00c7d	117	El Salvador	sv	slv	2.76	2.31	91.67	180970	0	4184	0	165895	0	10891	6553226	2368512	North America
30ac458c-b000-48f2-abc7-7c4c1c3e590c	118	Guadeloupe	gp	glp	44.79	0.54	1.25	179285	0	960	0	2250	0	176075	400264	938039	North America
b1c7dda7-4fd3-4c84-9385-4a67aae6d0af	119	Trinidad and Tobago	tt	tto	12.05	2.38	94.01	169805	0	4041	0	159640	0	6124	1408768	786328	North America
30371056-ab76-408a-ab94-6e90ea8d6727	120	Namibia	na	nam	6.42	2.4	97.38	169253	0	4065	0	164813	0	375	2635151	1062663	Africa
38c9ecad-032b-490b-b53d-3926970e07e3	121	Uganda	ug	uga	0.35	2.15	59.46	168887	0	3627	0	100420	0	64840	48699504	2987946	Africa
45d2c117-d4d7-4ad4-92c2-a18419a2ac40	122	Ghana	gh	gha	0.52	0.87	98.77	167215	0	1456	0	165153	0	606	32401368	2479277	Africa
6441ca62-ed56-432f-b0c0-3024122e2588	123	Jamaica	jm	jam	4.86	2.19	63.92	145157	0	3176	0	92784	0	49197	2987634	1142202	North America
f01f73fb-71ea-4624-b07e-e86ac91bc8aa	124	Cambodia	kh	khm	0.79	2.24	97.67	136545	13	3056	0	133363	11	126	17192867	3008618	Asia
1f86fa0e-6fd9-4730-87fd-0ddbc0f36c5a	125	Rwanda	rw	rwa	0.97	1.11	34.49	131970	0	1466	0	45522	0	84982	13609789	5630294	Africa
34f83a43-85ad-481a-a2ee-85187b17353c	126	Cameroon	cm	cmr	0.43	1.61	98.1	120068	0	1931	0	117791	0	346	27899197	1751774	Africa
90d0759a-ecb8-4dd3-9312-e8f952e2834f	127	Malta	mt	mlt	25.19	0.7	94.67	111833	0	780	0	105872	0	5181	443951	2005262	Europe
b50812db-56f1-447e-968b-526934c83624	128	Angola	ao	ago	0.29	1.87	95.05	102209	0	1912	0	97149	0	3148	34960117	1499795	Africa
cd1dfb64-b4f2-4661-b570-66a98c26eeb1	129	DRC	cd	cod	0.1	1.51	55.4	91928	0	1390	0	50930	0	39608	95137901	846704	Africa
80ba148c-004a-40fa-8304-1b4195fc4a28	130	French Guiana	gf	guf	29.19	0.44	12.26	91812	0	404	0	11254	0	80154	314538	644972	South America
c8f46d40-0f9b-4a75-bbca-97461b78c8b8	131	Barbados	bb	brb	30.88	0.54	97.2	88965	0	480	0	86475	0	2010	288095	719662	North America
b7cb925f-fc60-4ed0-b0d8-fd0a77dae164	132	Malawi	mw	mwi	0.43	3.05	95.92	87156	0	2656	0	83596	0	904	20142356	599393	Africa
797ccfb3-faf9-46fe-8e11-db4c9ea50700	133	Channel Islands	us	usa	49.19	0.21	97.74	87142	0	186	0	85175	0	1781	177145	1252808	Europe
35347f67-6496-45b8-b013-622e97792c33	134	Senegal	sn	sen	0.49	2.26	97.45	86938	0	1968	0	84725	0	245	17647609	1129367	Africa
bbfdfb8a-1a86-4ad2-a36c-38f6c9cbf0c4	135	Ivory Coast	ci	civ	0.31	0.95	98.63	84845	0	808	0	83680	0	357	27716073	1571143	Africa
93bf229f-1445-4ce5-aa0a-63c907479092	136	Suriname	sr	sur	13.55	1.7	61.27	80949	0	1379	0	49595	0	29975	597397	238361	South America
6b425e6c-2b37-480f-bfe9-3531d926ef63	137	French Polynesia	pf	pyf	26.14	0.87	0	74305	0	649	0	73656	0	0	284233	0	Australia/Oceania
5f88cfd7-6a96-4234-86e2-050ea154a08d	138	Eswatini	sz	swz	6.18	1.93	98.03	73247	0	1417	0	71802	0	28	1184766	1039761	Africa
d53fe90c-410d-4315-a7ba-941fab44867d	139	Guyana	gy	guy	8.72	1.83	96.87	69252	0	1268	0	67081	0	903	794324	672314	South America
0bc14339-2009-4132-a9f6-2a27ed8dd533	140	New Caledonia	nc	ncl	23.36	0.46	96.63	67999	0	314	0	65708	0	1977	291119	98964	Australia/Oceania
7b513adb-ea2d-490b-a0d5-8f9f7af33ddc	141	Fiji	fj	fji	7.39	1.29	96.65	67191	0	870	0	64941	0	1380	909748	596112	Australia/Oceania
c6f18a23-8f0d-43b2-9824-43841ad9e91b	142	Belize	bz	blz	16.14	1.02	98.04	66546	0	680	0	65242	0	624	412412	576016	North America
e13ba956-f90f-4d60-a37f-4dfe17710fe1	143	Madagascar	mg	mdg	0.23	2.12	96.96	66289	0	1406	0	64277	0	606	29148984	484927	Africa
7d476ff7-09ba-4720-a954-8116aa4732af	144	Sudan	sd	sdn	0.14	7.88	0	62914	0	4955	0	57959	0	0	45946099	562941	Africa
34e08b74-4426-4f8f-ba04-2ad3268d57ed	145	Mauritania	mr	mrt	1.27	1.59	96.55	62185	0	989	0	60042	0	1154	4899965	898965	Africa
1b4c6f13-6569-42c4-ac46-70aac0a61cf1	146	Cabo Verde	cv	cpv	10.91	0.66	99.02	62017	0	409	0	61410	0	198	568355	401416	Africa
bf5fe94d-de57-4ff8-b174-c1238e097c6c	147	Bhutan	bt	btn	7.62	0.03	99.75	60109	0	21	0	59959	0	129	789009	2303734	Asia
86c418c9-9bad-4c05-90a0-31f87650ee52	148	Syria	sy	syr	0.31	5.62	94.21	56044	0	3150	0	52799	0	95	18371357	146269	Asia
9151888a-1e30-41cf-83ac-6b30b75199ba	149	Gabon	ga	gab	2.07	0.63	98.32	48289	0	306	0	47477	0	506	2333295	1604748	Africa
d7bf6e66-1301-41b6-abef-9d561247123d	150	Seychelles	sc	syc	45.37	0.37	99.05	45185	0	167	0	44755	0	263	99594	0	Africa
9390f297-9b1c-4460-9969-09162343cfaa	151	Curaçao	cw	cuw	27.15	0.63	98.89	44932	0	282	0	44434	0	216	165467	496693	North America
1d10595e-15e7-4d0f-a990-6b45b1af1120	152	Papua New Guinea	pg	png	0.48	1.48	98.24	44768	0	662	0	43982	0	124	9294141	249149	Australia/Oceania
3a152b44-2832-418e-853e-50a89cacf701	153	Andorra	ad	and	57.63	0.34	98.05	44671	0	153	0	43802	0	716	77518	249838	Europe
7d567c91-c413-4427-b015-408a660c2fb7	154	Burundi	bi	bdi	0.35	0.09	0	43593	0	38	0	43555	0	0	12616081	345742	Africa
ebe06cac-5d5c-4fdd-bfe0-7fb7b27fbf19	155	Aruba	aw	abw	38.8	0.54	98.87	41787	0	224	0	41315	0	248	107694	177885	North America
fd80c13b-96b1-49cb-8612-2fc3c13907fd	156	Mauritius	mu	mus	3.06	2.58	95.25	39012	0	1008	0	37157	0	847	1276089	358675	Africa
ba51f892-30dd-43c5-a994-f70954fc88d5	157	Mayotte	yt	myt	13.26	0.49	0	37958	0	187	0	37771	0	0	286296	176919	Africa
23047b40-5204-4d21-a200-b219d68f6fdc	158	Togo	tg	tgo	0.44	0.73	98.54	37909	0	276	0	37356	0	277	8676111	764336	Africa
1e9e5a58-50c9-4ff6-988d-2b7cdc2ae9c2	159	Isle of Man	im	imn	43.67	0.3	71.38	37538	0	111	0	26794	0	10633	85954	150753	Europe
10f44464-c1a6-4339-b9a7-cc76ca8596d2	160	Tanzania	tz	tza	0.06	2.24	0	37510	0	841	0	36669	0	0	63218832	0	Africa
110c186f-54e9-4114-8646-c55536cbf62c	161	Guinea	gn	gin	0.27	1.19	97.49	37358	0	443	0	36419	0	496	13862355	660107	Africa
26a055d8-a99d-4f17-9698-7ec229f92804	162	Bahamas	bs	bhs	9.11	2.25	95.97	36533	0	822	0	35060	0	651	400940	241422	North America
2cd14646-419f-420e-83f3-004a8647ec65	163	Faeroe Islands	fo	fro	70.38	0.08	0	34658	0	28	0	34630	0	0	49243	778000	Europe
a5a50324-b8db-40ce-9a38-8c9f42b2257d	164	Lesotho	ls	lso	1.56	2.06	70.96	34040	0	702	0	24155	0	9183	2177029	431221	Africa
fe9ceb47-3198-44a6-977f-ad8a1c678ed7	165	Haiti	ht	hti	0.27	2.61	93.07	32131	0	838	0	29905	0	1388	11687222	132422	North America
3333f6e7-a25a-4047-89f1-54968028405f	166	Mali	ml	mli	0.15	2.36	97.33	31208	0	737	0	30376	0	95	21445425	712176	Africa
1004b1bb-30c2-49d2-b341-8a07c3fdcf99	167	Cayman Islands	ky	cym	41.55	0.1	30.58	27966	0	29	0	8553	0	19384	67303	222773	North America
cdb788e9-dee2-4809-993f-421c2223ef13	168	Saint Lucia	lc	lca	14.87	1.4	98.03	27559	0	385	0	27017	0	157	185346	209716	North America
e2155710-14d8-4ee2-87c2-7d46c3ac1ef8	169	Benin	bj	ben	0.21	0.6	93.53	27271	0	163	0	25506	0	1602	12773537	604310	Africa
ecade240-f4b1-4d06-b965-d48fa3c4486b	170	Somalia	so	som	0.16	5.02	48.98	26912	0	1350	0	13182	0	12380	16801341	400466	Africa
c149304f-2523-4a3e-bc83-3d34d9c222e2	171	Congo	cg	cog	0.42	1.57	82.01	24604	0	386	0	20178	0	4040	5796259	347815	Africa
3bf85af0-0824-456e-b402-e67770e0d954	172	Timor-Leste	tl	tls	1.68	0.58	99.37	22980	0	133	0	22836	0	11	1369876	271855	Asia
eb3c622c-4e09-4e76-9f62-5986ec532511	173	Solomon Islands	sb	slb	2.99	0.71	75.92	21544	0	153	0	16357	0	5034	721382	5117	Australia/Oceania
2777760e-308e-4b64-ae2a-32861952ca58	174	Burkina Faso	bf	bfa	0.09	1.83	98.01	20853	0	382	0	20439	0	32	22077185	248995	Africa
8862c06a-6b2a-43dd-b0e7-65fa2c6adaac	175	Gibraltar	gi	gib	59.11	0.53	83.3	19902	0	105	0	16579	0	3218	33670	534283	Europe
2e666397-1a93-4e38-a782-be34d6ea78b7	176	San Marino	sm	smr	57.15	0.6	96.85	19474	0	117	0	18861	0	496	34077	152231	Europe
759b83e8-7188-4a7f-9cc9-d580187ac7ba	177	Grenada	gd	grd	16.48	1.24	98.07	18720	0	233	0	18358	0	129	113591	173321	North America
a5595bac-dc78-412d-b4d6-a3dec5f10cff	178	Nicaragua	ni	nic	0.27	1.22	22.85	18491	0	225	0	4225	0	14041	6785978	0	North America
f23e58f6-ff0e-4fac-ac2f-a82c51b41d30	179	Liechtenstein	li	lie	48.15	0.46	98.34	18468	0	85	0	18162	0	221	38352	102174	Europe
ade1dd49-6935-41ea-9387-173c6fabbdf2	180	Tajikistan	tj	tjk	0.18	0.7	97.07	17786	0	125	0	17264	0	397	9976390	0	Asia
6b5f4ee7-4e90-42ac-9490-5a8052f01697	181	South Sudan	ss	ssd	0.15	0.78	88.14	17733	0	138	0	15630	0	1965	11462511	410280	Africa
113949e6-d893-4803-9e79-ed404b7ef8f2	182	Bermuda	bm	bmu	27.49	0.84	97.36	16988	0	142	0	16539	0	307	61807	962769	North America
bec0723e-b568-405c-aa9d-79c25dc00bc9	183	Equatorial Guinea	gq	gnq	1.11	1.1	96.18	16654	0	183	0	16018	0	453	1497386	352052	Africa
c830054b-710d-4310-8c0f-d3f68bdb773c	184	Djibouti	dj	dji	1.54	1.2	98.32	15690	0	189	0	15427	0	74	1017427	305941	Africa
a24e99b5-d592-437a-bbeb-eb19bdfbc803	185	Samoa	ws	wsm	7.58	0.19	10.53	15243	0	29	0	1605	0	13609	201114	172019	Australia/Oceania
17833c0d-21d8-4fa8-9744-2c39c541867f	186	Dominica	dm	dma	20.53	0.46	97.99	14852	0	68	0	14554	0	230	72352	210195	North America
5af2bc78-d5a6-4ba3-892b-a5e804f50f1c	187	CAR	cf	caf	0.29	0.77	46.62	14712	0	113	0	6859	0	7740	5001755	81294	Africa
cd8aca67-cf0e-4935-ba90-40fbeba12f31	188	Monaco	mc	mco	34.95	0.41	98.06	13914	0	57	0	13644	0	213	39812	77770	Europe
d310d75e-c9d9-4175-bfe9-77a72865fbb0	190	Gambia	gm	gmb	0.47	3.06	96.37	12028	0	368	0	11591	0	69	2555717	155686	Africa
10c001f9-5d62-4525-bfae-70dbdd7493d9	191	Greenland	gl	grl	21.01	0.18	23.06	11971	0	21	0	2761	0	9189	56972	164926	North America
7571007a-00f6-4500-bb60-f4fefbd4e388	192	Yemen	ye	yem	0.04	18.14	76.91	11849	0	2149	0	9113	0	587	31171343	265253	Asia
2223fb5d-b4b7-44f6-a006-ade92c817990	193	Vanuatu	vu	vut	3.64	0.12	99.56	11723	0	14	0	11672	0	37	321845	24976	Australia/Oceania
e874ebf4-8dc3-4430-8cee-7188fe21b727	194	Saint Martin	mf	maf	28.51	0.55	12.26	11410	0	63	0	1399	0	9948	40017	112382	North America
e5f66c08-7ee3-42ef-8794-bc5893959c2d	195	Sint Maarten	sx	sxm	24.41	0.81	98.82	10708	0	87	0	10582	0	39	43873	62056	North America
7c640202-55e5-4657-9891-f36fc57df35b	196	Caribbean Netherlands	bq	bes	39.65	0.33	98.88	10595	0	35	0	10476	0	84	26722	30126	North America
73a44b22-4103-4219-abf6-6a9052c5a6ea	197	Eritrea	er	eri	0.27	1.04	98.33	9907	0	103	0	9742	0	62	3646950	23693	Africa
ff4865bd-4235-44b3-89a7-d5780521117c	198	Niger	ne	ner	0.04	3.42	94.77	9104	0	311	0	8628	0	165	26001265	254538	Africa
a9022093-264b-4ef7-8040-1af903412df3	199	Antigua and Barbuda	ag	atg	8.75	1.65	98.06	8712	0	144	0	8543	0	25	99590	18901	North America
1a7c2436-654a-4ee5-b441-c5ecca24cdb3	200	Guinea-Bissau	gw	gnb	0.41	2.04	97.04	8400	0	171	0	8151	0	78	2063264	145231	Africa
1ab1822a-8b0c-42bd-afe6-fb7e43d89d69	201	Comoros	km	com	0.91	1.93	95.93	8270	0	160	0	7933	0	177	907540	0	Africa
efc676e5-a2c5-4d3b-9572-257b5e001d39	202	Sierra Leone	sl	sle	0.09	1.62	0	7725	0	125	0	7600	0	0	8309224	259958	Africa
66685d8a-d2f8-45e9-b5b5-047535dbb566	203	Liberia	lr	lbr	0.14	3.92	76.55	7508	0	294	0	5747	0	1467	5301144	139824	Africa
eb98badf-bb25-4255-89eb-930e5be74222	204	Chad	td	tcd	0.04	2.6	65.6	7430	0	193	0	4874	0	2363	17391186	191341	Africa
f4a6f24f-8b9a-4f70-b7f0-3c1a3cbdfbff	205	British Virgin Islands	vg	vgb	23.27	0.88	0	7131	0	63	0	7068	0	0	30643	105790	North America
8ea1486d-6647-4b7c-835e-a2788a6a5b7b	206	St. Vincent Grenadines	vc	vct	6.32	1.63	94.12	7056	0	115	0	6641	0	300	111661	100459	North America
6bcba3d3-d887-47d5-bdcd-7282cf91cc1e	208	Saint Kitts and Nevis	kn	kna	11.88	0.72	98.22	6413	0	46	0	6299	0	68	53970	108021	North America
acee9dc8-0b7d-4eb7-9f1a-5e682db302ae	209	Turks and Caicos	tc	tca	15.72	0.58	98.23	6255	0	36	0	6144	0	75	39790	548537	North America
85061c40-883d-44e2-9a50-c6c0b5de2a54	210	Sao Tome and Principe	st	stp	2.68	1.22	98.52	6087	0	74	0	5997	0	16	227494	29036	Africa
399cc203-6843-4a31-b599-5fe5a0365cb6	213	St. Barth	bl	blm	49.84	0.12	0	4954	0	6	0	4948	0	0	9939	78646	North America
834d4b30-7863-48af-bee8-54b606081edf	214	Anguilla	ai	aia	23.14	0.25	99.41	3535	0	9	0	3514	0	12	15277	51382	North America
f3f7c897-e88f-426f-b804-efc3ea76a20c	216	Saint Pierre Miquelon	pm	spm	51.78	0.03	82.46	2970	0	1	0	2449	0	520	5736	24521	North America
ec87cb7a-533c-4ed1-a2bd-7eb05549f552	217	Falkland Islands	fk	flk	49.65	0	0	1831	0	0	0	0	0	0	3688	8632	South America
563abe42-b4b2-4102-81a5-e65bcd3b8faa	218	Montserrat	ms	msr	20.65	0.78	98.45	1032	0	8	0	1016	0	8	4998	14759	North America
4f5de98a-49e3-4394-9534-b4b0c800ff96	219	Macao	mo	mac	0.12	0.77	42.25	781	0	6	0	330	0	445	667464	7806	Asia
b230d5ca-c30a-4d22-814e-53ceccfb8364	220	Diamond Princess	us	usa	0	1.83	98.17	712	0	13	0	699	0	0	0	0	
f2e9f8ce-c9cd-4ba0-bebe-bb0a853870c3	221	Wallis and Futuna	wf	wlf	4.92	1.31	82.18	533	0	7	0	438	0	88	10836	20508	Australia/Oceania
4088c3ae-7003-40cf-971a-8db0325a24a0	222	Marshall Islands	mh	mhl	0.1	0	79.66	59	0	0	0	47	0	12	60008	0	Australia/Oceania
f4fd07f5-e786-4153-bafe-7b35194a7eef	224	Vatican City	va	vat	3.6	0	100	29	0	0	0	29	0	0	805	0	Europe
98a06a3a-311a-445f-9caf-3b967e1ffef5	226	Western Sahara	eh	esh	0	10	90	10	0	1	0	9	0	0	627418	0	Africa
fa63e305-e10f-4b5d-a400-2edd6dcab0f4	227	MS Zaandam	us	usa	0	22.22	77.78	9	0	2	0	7	0	0	0	0	
eb9b3fbc-6738-4a35-a943-42a0e05ea149	230	China	cn	chn	0.02	2.29	96.97	228355	175	5226	0	221445	106	1684	1439323776	160000000	Asia
\.


--
-- Data for Name: State; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."State" (country, province, iso, date, confirmed, recovered, deaths, "caseFatalityRate", "fatalityRate", active, "recoveryProporation") FROM stdin;
Canada	Diamond Princess	CAN	2021-12-09	0	0	0	\N	\N	-1	\N
Canada	Yukon	CAN	2021-12-02	1533	0	0	0.91	\N	1519	0
Canada	Saskatchewan	CAN	2021-12-11	81780	0	0	1.15	\N	80843	0
Canada	Nova Scotia	CAN	2020-12-04	1358	1176	1176	4.79	\N	117	86.6
Canada	Prince Edward Island	CAN	2021-12-11	397	0	0	0	\N	397	0
Canada	New Brunswick	CAN	2021-12-02	8506	0	0	1.53	\N	8376	0
Canada	Newfoundland and Labrador	CAN	2021-12-09	2076	0	0	0.87	\N	2058	0
Canada	Ontario	CAN	2021-12-02	628666	0	0	1.6	\N	618602	0
Canada	Grand Princess	CAN	2021-12-11	13	0	0	0	\N	13	0
Canada	Northwest Territories	CAN	2021-12-11	2070	0	0	0.58	\N	2058	0
Canada	Repatriated Travellers	CAN	2021-12-02	13	0	0	0	\N	13	0
Canada	Manitoba	CAN	2021-12-09	69314	0	0	1.94	\N	67970	0
Canada	British Columbia	CAN	2021-12-02	219180	0	0	1.07	\N	216835	0
Canada	Quebec	CAN	2020-12-04	147877	127549	127549	4.86	\N	13145	86.25
Canada	Nunavut	CAN	2020-12-04	206	155	155	0	\N	51	75.24
Canada	Alberta	CAN	2021-12-09	338141	0	0	0.97	\N	334870	0
Vietnam		VNM	2020-11-30	1347	1179	1179	2.6	\N	133	87.53
Australia	New South Wales	AUS	2020-12-04	4605	3186	3186	1.15	\N	1366	69.19
Australia	Northern Territory	AUS	2021-12-02	292	0	0	0.34	\N	291	0
Australia	Queensland	AUS	2021-12-11	2168	0	0	0.32	\N	2161	0
Australia	Western Australia	AUS	2020-11-30	821	789	789	1.1	\N	23	96.1
Australia	Victoria	AUS	2021-12-09	133734	0	0	1.05	\N	132333	0
Australia	Australian Capital Territory	AUS	2021-12-09	2179	0	0	0.69	\N	2164	0
Australia	Tasmania	AUS	2021-12-02	240	0	0	5.42	\N	227	0
Australia	South Australia	AUS	2020-12-04	562	551	551	0.71	\N	7	98.04
US	Wyoming	USA	1970-01-01	33305	24478	24478	0.65	\N	8612	73.5
US	Virgin Islands	USA	1970-01-01	1544	1466	1466	1.49	\N	55	94.95
US	Northern Mariana Islands	USA	1970-01-01	106	29	29	1.89	\N	75	27.36
US	Nebraska	USA	1970-01-01	126466	63562	63562	0.78	\N	61915	50.26
US	Wisconsin	USA	1970-01-01	411730	315086	315086	0.85	\N	93150	76.53
US	North Carolina	USA	1970-01-01	364512	315979	315979	1.44	\N	43272	86.69
US	Vermont	USA	1970-01-01	4172	2523	2523	1.65	\N	1580	60.47
US	Massachusetts	USA	1970-01-01	226132	155473	155473	4.75	\N	59911	68.75
US	Alabama	USA	2021-03-06	157079	\N	\N	1.46	\N	154783	0
US	Minnesota	USA	1970-01-01	318763	272608	272608	1.13	\N	42562	85.52
US	New Jersey	USA	1970-01-01	337304	43771	43771	5.04	\N	276540	12.98
US	Kansas	USA	1970-01-01	157446	3403	3403	0.99	\N	152483	2.16
US	Iowa	USA	1970-01-01	202410	132271	132271	1.19	\N	67736	65.35
US	New Hampshire	USA	1970-01-01	20480	14999	14999	2.57	\N	4955	73.24
US	Colorado	USA	1970-01-01	232905	12538	12538	1.14	\N	217711	5.38
US	Washington	USA	1970-01-01	162700	0	0	1.66	\N	0	0
US	Arkansas	USA	1970-01-01	157359	138696	138696	1.59	\N	16161	88.14
US	Oklahoma	USA	1970-01-01	197745	163727	163727	0.88	\N	32275	82.8
US	Nevada	USA	1970-01-01	152169	0	0	1.41	\N	0	0
US	Oregon	USA	1970-01-01	75431	5870	5870	1.21	\N	68649	7.78
US	District of Columbia	USA	1970-01-01	21552	15746	15746	3.16	\N	5126	73.06
US	South Dakota	USA	1970-01-01	80464	62334	62334	1.18	\N	17184	77.47
US	Pennsylvania	USA	1970-01-01	361464	216878	216878	2.87	\N	134203	60
US	Ohio	USA	1970-01-01	421063	271326	271326	1.53	\N	143308	64.44
US	California	USA	1970-01-01	1212968	0	0	1.58	\N	0	0
US	Rhode Island	USA	1970-01-01	56723	3737	3737	2.42	\N	51613	6.59
US	Hawaii	USA	1970-01-01	18223	11958	11958	1.34	\N	6021	65.62
US	Delaware	USA	1970-01-01	35654	17463	17463	2.17	\N	17419	48.98
US	Utah	USA	1970-01-01	195706	134296	134296	0.45	\N	60539	68.62
US	Tennessee	USA	1970-01-01	374493	328710	328710	1.23	\N	41181	87.77
US	Arizona	USA	1970-01-01	326817	52438	52438	2.03	\N	267740	16.05
US	Missouri	USA	1970-01-01	299762	0	0	1.28	\N	0	0
US	Georgia	USA	1970-01-01	422133	0	0	2.24	\N	0	0
US	Connecticut	USA	1970-01-01	117295	9800	9800	4.28	\N	102475	8.36
US	Mississippi	USA	1970-01-01	153270	128746	128746	2.48	\N	20717	84
US	New York	USA	1970-01-01	647980	85556	85556	4.13	\N	535677	13.2
US	New Mexico	USA	1970-01-01	97095	32569	32569	1.61	\N	62958	33.54
US	North Dakota	USA	1970-01-01	79252	71848	71848	0.87	\N	6712	90.66
US	South Carolina	USA	1970-01-01	217487	114457	114457	2.01	\N	98649	52.63
US	Michigan	USA	1970-01-01	388942	165269	165269	2.46	\N	214109	42.49
US	Florida	USA	1970-01-01	983370	0	0	1.92	\N	0	0
US	Puerto Rico	USA	1970-01-01	52545	43123	43123	2.1	\N	8316	82.07
US	Idaho	USA	1970-01-01	100484	40461	40461	0.92	\N	59103	40.27
US	Maryland	USA	1970-01-01	198370	8608	8608	2.34	\N	185121	4.34
US	Montana	USA	1970-01-01	62198	45486	45486	1.09	\N	16031	73.13
US	Maine	USA	1970-01-01	11757	9098	9098	1.65	\N	2465	77.38
US	Virginia	USA	1970-01-01	237835	24199	24199	1.71	\N	209574	10.17
US	Guam	USA	1970-01-01	6852	5817	5817	1.63	\N	923	84.89
US	Louisiana	USA	1970-01-01	232414	192488	192488	2.76	\N	33506	82.82
US	Texas	USA	1970-01-01	1168111	962639	962639	1.83	\N	184093	82.41
US	Indiana	USA	1970-01-01	338977	197078	197078	1.69	\N	136176	58.14
US	West Virginia	USA	1970-01-01	47842	30320	30320	1.54	\N	16787	63.38
US	Illinois	USA	1970-01-01	726304	0	0	1.79	\N	0	0
US	Alaska	USA	1970-01-01	31323	7165	7165	0.39	\N	24037	22.87
US	Kentucky	USA	1970-01-01	179041	28281	28281	1.07	\N	148852	15.8
\.


--
-- Name: Continent Continent_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Continent"
    ADD CONSTRAINT "Continent_pkey" PRIMARY KEY (id);


--
-- Name: Country Country_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY (id);


--
-- Name: State State_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."State"
    ADD CONSTRAINT "State_pkey" PRIMARY KEY (province);


--
-- PostgreSQL database dump complete
--
