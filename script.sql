--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-15 14:15:06

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

DROP DATABASE "IntelciaGroup";
--
-- TOC entry 3384 (class 1262 OID 24581)
-- Name: IntelciaGroup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "IntelciaGroup" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE "IntelciaGroup" OWNER TO postgres;

\connect "IntelciaGroup"

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
-- TOC entry 211 (class 1259 OID 24595)
-- Name: ChefProjet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ChefProjet" (
    id integer NOT NULL,
    "nomChef" "char"
);


ALTER TABLE public."ChefProjet" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24627)
-- Name: Client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Client" (
    "idClient" integer NOT NULL,
    nom "char",
    tel integer
);


ALTER TABLE public."Client" OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24590)
-- Name: Division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Division" (
    adresse "char",
    "nomDivision" "char",
    num integer NOT NULL,
    region "char"
);


ALTER TABLE public."Division" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24617)
-- Name: Equipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Equipe" (
    "idEquipe" integer NOT NULL,
    "nomEquipe" "char",
    competence "char",
    id_salarie integer
);


ALTER TABLE public."Equipe" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24622)
-- Name: Materiel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Materiel" (
    nom "char",
    "refMateriel" integer NOT NULL,
    type "char",
    id_salarie integer
);


ALTER TABLE public."Materiel" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24612)
-- Name: Projet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Projet" (
    "dateDebut" date,
    "deateEcheance" date,
    "dateFin" date,
    nom "char",
    "numProjet" integer NOT NULL,
    theme "char",
    id_client integer
);


ALTER TABLE public."Projet" OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24587)
-- Name: Salarie; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Salarie" (
    fonction "char",
    "nomSalarie" "char",
    id integer NOT NULL,
    id_division integer
);


ALTER TABLE public."Salarie" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24632)
-- Name: SalarieTache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."SalarieTache" (
    id_salarie integer,
    id_tache integer
);


ALTER TABLE public."SalarieTache" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24607)
-- Name: Tache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tache" (
    cout integer,
    "dateDebut" date,
    "dateFin" date,
    ref integer NOT NULL,
    id_projet integer
);


ALTER TABLE public."Tache" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24600)
-- Name: Vendeur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Vendeur" (
    id integer NOT NULL,
    "nomVendeur" "char"
);


ALTER TABLE public."Vendeur" OWNER TO postgres;

--
-- TOC entry 3371 (class 0 OID 24595)
-- Dependencies: 211
-- Data for Name: ChefProjet; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3377 (class 0 OID 24627)
-- Dependencies: 217
-- Data for Name: Client; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3370 (class 0 OID 24590)
-- Dependencies: 210
-- Data for Name: Division; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3375 (class 0 OID 24617)
-- Dependencies: 215
-- Data for Name: Equipe; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3376 (class 0 OID 24622)
-- Dependencies: 216
-- Data for Name: Materiel; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3374 (class 0 OID 24612)
-- Dependencies: 214
-- Data for Name: Projet; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3369 (class 0 OID 24587)
-- Dependencies: 209
-- Data for Name: Salarie; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3378 (class 0 OID 24632)
-- Dependencies: 218
-- Data for Name: SalarieTache; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3373 (class 0 OID 24607)
-- Dependencies: 213
-- Data for Name: Tache; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3372 (class 0 OID 24600)
-- Dependencies: 212
-- Data for Name: Vendeur; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3205 (class 2606 OID 24599)
-- Name: ChefProjet ChefProjet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ChefProjet"
    ADD CONSTRAINT "ChefProjet_pkey" PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 24631)
-- Name: Client Client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY ("idClient");


--
-- TOC entry 3215 (class 2606 OID 24621)
-- Name: Equipe Equipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Equipe"
    ADD CONSTRAINT "Equipe_pkey" PRIMARY KEY ("idEquipe");


--
-- TOC entry 3218 (class 2606 OID 24626)
-- Name: Materiel Materiel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Materiel"
    ADD CONSTRAINT "Materiel_pkey" PRIMARY KEY ("refMateriel");


--
-- TOC entry 3212 (class 2606 OID 24616)
-- Name: Projet Projet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projet"
    ADD CONSTRAINT "Projet_pkey" PRIMARY KEY ("numProjet");


--
-- TOC entry 3200 (class 2606 OID 24606)
-- Name: Salarie Salarie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Salarie"
    ADD CONSTRAINT "Salarie_pkey" PRIMARY KEY (id);


--
-- TOC entry 3209 (class 2606 OID 24611)
-- Name: Tache Tache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tache"
    ADD CONSTRAINT "Tache_pkey" PRIMARY KEY (ref);


--
-- TOC entry 3207 (class 2606 OID 24604)
-- Name: Vendeur Vendeur_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Vendeur"
    ADD CONSTRAINT "Vendeur_pkey" PRIMARY KEY (id);


--
-- TOC entry 3203 (class 2606 OID 24594)
-- Name: Division division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Division"
    ADD CONSTRAINT division_pkey PRIMARY KEY (num);


--
-- TOC entry 3221 (class 1259 OID 24646)
-- Name: fki_id-salarie; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "fki_id-salarie" ON public."SalarieTache" USING btree (id_salarie);


--
-- TOC entry 3213 (class 1259 OID 24664)
-- Name: fki_id_client; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_client ON public."Projet" USING btree (id_client);


--
-- TOC entry 3201 (class 1259 OID 24652)
-- Name: fki_id_division; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_division ON public."Salarie" USING btree (id_division);


--
-- TOC entry 3210 (class 1259 OID 24658)
-- Name: fki_id_projet; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_projet ON public."Tache" USING btree (id_projet);


--
-- TOC entry 3216 (class 1259 OID 24670)
-- Name: fki_id_salarie; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_salarie ON public."Equipe" USING btree (id_salarie);


--
-- TOC entry 3222 (class 1259 OID 24640)
-- Name: fki_id_tahce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_id_tahce ON public."SalarieTache" USING btree (id_tache);


--
-- TOC entry 3229 (class 2606 OID 24641)
-- Name: SalarieTache id-salarie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalarieTache"
    ADD CONSTRAINT "id-salarie" FOREIGN KEY (id_salarie) REFERENCES public."Salarie"(id) NOT VALID;


--
-- TOC entry 3225 (class 2606 OID 24659)
-- Name: Projet id_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Projet"
    ADD CONSTRAINT id_client FOREIGN KEY (id_client) REFERENCES public."Client"("idClient") NOT VALID;


--
-- TOC entry 3223 (class 2606 OID 24647)
-- Name: Salarie id_division; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Salarie"
    ADD CONSTRAINT id_division FOREIGN KEY (id_division) REFERENCES public."Division"(num) NOT VALID;


--
-- TOC entry 3224 (class 2606 OID 24653)
-- Name: Tache id_projet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tache"
    ADD CONSTRAINT id_projet FOREIGN KEY (id_projet) REFERENCES public."Projet"("numProjet") NOT VALID;


--
-- TOC entry 3226 (class 2606 OID 24671)
-- Name: Equipe id_salarie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Equipe"
    ADD CONSTRAINT id_salarie FOREIGN KEY (id_salarie) REFERENCES public."Salarie"(id) NOT VALID;


--
-- TOC entry 3227 (class 2606 OID 24676)
-- Name: Materiel id_salarie; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Materiel"
    ADD CONSTRAINT id_salarie FOREIGN KEY (id_salarie) REFERENCES public."Salarie"(id) NOT VALID;


--
-- TOC entry 3228 (class 2606 OID 24635)
-- Name: SalarieTache id_tahce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."SalarieTache"
    ADD CONSTRAINT id_tahce FOREIGN KEY (id_tache) REFERENCES public."Tache"(ref) NOT VALID;


-- Completed on 2021-12-15 14:15:07

--
-- PostgreSQL database dump complete
--

