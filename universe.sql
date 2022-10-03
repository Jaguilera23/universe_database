--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    description character varying(100),
    age_in_millions_of_years integer,
    galaxy_type character varying(30),
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    description character varying(100),
    age_in_million_of_years integer,
    is_spherical boolean,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    name character varying,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
    color character varying(30),
    description text,
    nebula_id integer NOT NULL
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    age_in_millions_of_years integer,
    distance_from_earth integer,
    planet_type character varying(30),
    has_life boolean,
    description character varying(100),
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description character varying(100),
    age_in_millions_of_years integer,
    distance_from_earth integer,
    star_type character varying(30),
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1001, 2537, 'Andromeda', 10000, 'espiral', 'M31');
INSERT INTO public.galaxy VALUES (1002, 150000000, 'galaxia masiva', 20000, 'espiral', 'NGC 6753');
INSERT INTO public.galaxy VALUES (1003, 25000000, 'se encuentra en la constelacion de Canes Venatici', 50000, 'espiral', 'NGC 4248');
INSERT INTO public.galaxy VALUES (1004, 150000000, 'galaxia masiva', 35000, 'espiral', 'NGC 6853');
INSERT INTO public.galaxy VALUES (1005, 5000000, 'galaxia con agujero negro super masivo', 55000, 'eliptica', 'NGC 3248');
INSERT INTO public.galaxy VALUES (1006, 37000000, NULL, 12000, 'elipitica', 'NGC 3737');
INSERT INTO public.galaxy VALUES (1007, 34000, NULL, 3424, 'espiral', 'M345');
INSERT INTO public.galaxy VALUES (1008, 2300000, NULL, 4325, 'espiral', 'NGC 3789');
INSERT INTO public.galaxy VALUES (1009, 15000000, NULL, 4573, 'eliptica', 'NGC 4677');
INSERT INTO public.galaxy VALUES (1010, 500000, NULL, 2547, 'eliptica', 'M76');
INSERT INTO public.galaxy VALUES (1011, 34000, NULL, 3424, 'espiral', 'M3456');
INSERT INTO public.galaxy VALUES (1012, 2300000, NULL, 4325, 'espiral', 'NGC 389');
INSERT INTO public.galaxy VALUES (1013, 15000000, NULL, 4573, 'eliptica', 'NGC 467');
INSERT INTO public.galaxy VALUES (1014, 500000, NULL, 2547, 'eliptica', 'M896');
INSERT INTO public.galaxy VALUES (1015, 84000, NULL, 3333, 'espiral', 'M9999');
INSERT INTO public.galaxy VALUES (1016, 23000000, NULL, 6658, 'espiral', 'NGC 5444');
INSERT INTO public.galaxy VALUES (1017, 1500000, NULL, 8573, 'eliptica', 'NGC 6546');
INSERT INTO public.galaxy VALUES (1018, 500000, NULL, 2327, 'eliptica', 'M8556');
INSERT INTO public.galaxy VALUES (1019, 430000, NULL, 5444, 'espiral', 'M555');
INSERT INTO public.galaxy VALUES (1020, 45000, NULL, 5000, 'espiral', 'M333');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 789090, true, 'fero', 1, 1);
INSERT INTO public.moon VALUES (NULL, 789932, true, 'ads', 2, 2);
INSERT INTO public.moon VALUES (NULL, 345678, false, 'yujk', 3, 3);
INSERT INTO public.moon VALUES (NULL, 56789, false, 'rtyghjnm', 4, 4);
INSERT INTO public.moon VALUES (NULL, 67808, true, 'ghjmcf', 5, 5);
INSERT INTO public.moon VALUES (NULL, 3333, true, 'ghjkm', 6, 6);
INSERT INTO public.moon VALUES (NULL, 68990, false, 'sdcvbn', 7, 7);
INSERT INTO public.moon VALUES (NULL, 44455, false, 'zxcvbn', 8, 8);
INSERT INTO public.moon VALUES (NULL, 77890, true, 'mjuy', 9, 9);
INSERT INTO public.moon VALUES (NULL, 655678, true, 'pñlkj', 10, 10);
INSERT INTO public.moon VALUES (NULL, 73090, true, 'feroww', 11, 11);
INSERT INTO public.moon VALUES (NULL, 782232, true, 'adsff', 12, 12);
INSERT INTO public.moon VALUES (NULL, 34512, false, 'yujkas', 13, 13);
INSERT INTO public.moon VALUES (NULL, 567891, false, 'rtygnm', 14, 14);
INSERT INTO public.moon VALUES (NULL, 678, true, 'ghjm', 15, 15);
INSERT INTO public.moon VALUES (NULL, 33313, true, 'ghj', 16, 16);
INSERT INTO public.moon VALUES (NULL, 6990, false, 'sdbn', 17, 17);
INSERT INTO public.moon VALUES (NULL, 4455, false, 'zxbn', 18, 18);
INSERT INTO public.moon VALUES (NULL, 7780, true, 'mj', 19, 19);
INSERT INTO public.moon VALUES (NULL, 6558, true, 'ñkj', 20, 20);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES ('afrodita', 234555, 54434, 'red', NULL, 1);
INSERT INTO public.nebula VALUES ('horse', 567993, 98765, 'blue', NULL, 2);
INSERT INTO public.nebula VALUES ('cat', 56789, 9567874, 'red', NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2000, 56000, NULL, true, NULL, 'bio', 1, 1);
INSERT INTO public.planet VALUES (3409, 96000, NULL, false, NULL, 'versu', 2, 2);
INSERT INTO public.planet VALUES (4500, 76000, NULL, false, NULL, 'yef', 3, 3);
INSERT INTO public.planet VALUES (9000, 6877, NULL, false, NULL, 'jepo', 4, 4);
INSERT INTO public.planet VALUES (6500, 9799, NULL, false, NULL, 'merc', 5, 5);
INSERT INTO public.planet VALUES (450000, 8777, NULL, false, NULL, 'verk', 6, 6);
INSERT INTO public.planet VALUES (3409, 96000, NULL, false, NULL, 'vmart', 7, 7);
INSERT INTO public.planet VALUES (4500, 76000, NULL, true, NULL, 'pent', 8, 8);
INSERT INTO public.planet VALUES (9000, 6877, NULL, true, NULL, 'yit', 9, 9);
INSERT INTO public.planet VALUES (6500, 9799, NULL, false, NULL, 'qwert', 10, 10);
INSERT INTO public.planet VALUES (450000, 8777, NULL, false, NULL, 'asdf', 11, 11);
INSERT INTO public.planet VALUES (245000, 78999, NULL, false, NULL, 'uiop', 12, 12);
INSERT INTO public.planet VALUES (20000, 8800, NULL, true, NULL, 'huop', 13, 13);
INSERT INTO public.planet VALUES (348900, 8777, NULL, false, NULL, 'lkop', 14, 14);
INSERT INTO public.planet VALUES (66678, 8900, NULL, false, NULL, 'tyuh', 15, 15);
INSERT INTO public.planet VALUES (45454, 89999, NULL, false, NULL, 'dfgh', 16, 16);
INSERT INTO public.planet VALUES (65554, 9000, NULL, false, NULL, 'zxcv', 17, 17);
INSERT INTO public.planet VALUES (8849, 12342, NULL, true, NULL, 'jkl', 18, 18);
INSERT INTO public.planet VALUES (7734, 454545, NULL, true, NULL, 'fgbn', 19, 19);
INSERT INTO public.planet VALUES (34343, 78908, NULL, false, NULL, 'jlliu', 20, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'blue star', 2000, 2537, 'B', 'sirius', 1001);
INSERT INTO public.star VALUES (2, 'red giant star', 1000, 150000000, 'A', 'magna', 1002);
INSERT INTO public.star VALUES (3, 'yellow star', 500, 25000000, 'T', 'drako', 1003);
INSERT INTO public.star VALUES (4, NULL, 3200, 100000, 'C', 'bafi', 1004);
INSERT INTO public.star VALUES (5, NULL, 5000, 20000000, 'D', 'suka', 1005);
INSERT INTO public.star VALUES (6, NULL, 6000, 570000, 'B', 'stanford', 1006);
INSERT INTO public.star VALUES (7, NULL, 76000, 23000, 'B', 'alpha', 1007);
INSERT INTO public.star VALUES (8, NULL, 8900, 45559, 'C', 'groot', 1008);
INSERT INTO public.star VALUES (9, NULL, 7666, 9000, 'X', 'afrodita', 1009);
INSERT INTO public.star VALUES (10, NULL, 4444, 78900, 'C', 'greg', 1010);
INSERT INTO public.star VALUES (11, NULL, 5666, 9999, 'D', 'karla', 1011);
INSERT INTO public.star VALUES (12, NULL, 78908, 7777, 'C', 'esther', 1012);
INSERT INTO public.star VALUES (13, NULL, 44444, 878787, 'D', 'carlos', 1013);
INSERT INTO public.star VALUES (14, NULL, 545454, 1233, 'C', 'pegasus', 1014);
INSERT INTO public.star VALUES (15, NULL, 22222, 10000, 'B', 'sag', 1015);
INSERT INTO public.star VALUES (16, NULL, 3200, 100000, 'C', 'laika', 1016);
INSERT INTO public.star VALUES (17, NULL, 5000, 20000000, 'D', 'boro', 1017);
INSERT INTO public.star VALUES (18, NULL, 6000, 570000, 'B', 'sony', 1018);
INSERT INTO public.star VALUES (19, NULL, 76000, 23000, 'B', 'beta', 1019);
INSERT INTO public.star VALUES (20, NULL, 8900, 45559, 'C', 'mex', 1020);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: nebula nebula_nebula_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_nebula_id_key UNIQUE (nebula_id);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

