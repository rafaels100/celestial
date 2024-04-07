--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(48) NOT NULL,
    amount_stars integer,
    amount_planets integer,
    age_in_millions_years numeric,
    amount_mass numeric,
    description text,
    has_life boolean,
    has_intelligent_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(48) NOT NULL,
    amount_craters integer,
    amount_lifeforms integer,
    distance_from_planet numeric,
    amount_mass numeric,
    description text,
    has_life boolean,
    has_intelligent_life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(48),
    amount_moons integer,
    amount_lifeforms integer,
    distance_from_star numeric,
    amount_mass numeric,
    description text,
    has_life boolean,
    has_intelligent_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: prueba; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.prueba (
    prueba_id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    edad integer
);


ALTER TABLE public.prueba OWNER TO freecodecamp;

--
-- Name: prueba_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.prueba_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.prueba_id_seq OWNER TO freecodecamp;

--
-- Name: prueba_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.prueba_id_seq OWNED BY public.prueba.prueba_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(48) NOT NULL,
    amount_planets integer,
    amount_moons integer,
    age_in_millions_years numeric,
    amount_mass numeric,
    distance_from_earth numeric,
    description text,
    galaxy_id integer,
    has_life boolean,
    has_intelligent_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: prueba prueba_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prueba ALTER COLUMN prueba_id SET DEFAULT nextval('public.prueba_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AEDES-123', 1000, 2000, 1232141.32, 30000, 'A rahter small galaxy', false, false);
INSERT INTO public.galaxy VALUES (2, 'HUMONGOUS-321', 1000000, 200000, 1231.32, 30000000, 'A rahter big galaxy', true, false);
INSERT INTO public.galaxy VALUES (3, 'Milky way', 1000000000, 200000000, 14000.32, 30000000000000, 'A rahter ubiquotus galaxy', true, true);
INSERT INTO public.galaxy VALUES (4, 'Locati', 10, 20, 3123321, 1000, 'Nothing makes sense here', false, true);
INSERT INTO public.galaxy VALUES (5, 'Rightful', 10, 20, 3123321, 1000, 'Everything makes sense here', false, false);
INSERT INTO public.galaxy VALUES (6, 'Wrongfull', 1, 2, 3321, 100, 'Things aint right here', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 100, 0, 300000, 32123.3, 'Luna lunera', false, false, 1);
INSERT INTO public.moon VALUES (2, 'Calipso', 10, 10, 30000, 123.3, 'Mucho oceano', true, false, 2);
INSERT INTO public.moon VALUES (3, 'Ceranus', 1, 0, 3000, 1203.3, 'Muy cerca', false, false, 3);
INSERT INTO public.moon VALUES (4, 'Localuna', 10, 10, 30000, 1323203.3, 'Crazy stuff', true, true, 4);
INSERT INTO public.moon VALUES (5, 'LocatiLunero', 130, 10, 30000, 1323203.3, 'Crazy stuff x 2', true, true, 4);
INSERT INTO public.moon VALUES (6, 'Horrenda', 130, 10, 30000, 1323203.3, 'Scary stuff x 2', true, true, 7);
INSERT INTO public.moon VALUES (7, 'Mistaker', 130, 10, 300030, 13232203.3, 'This shouldnt be', true, true, 6);
INSERT INTO public.moon VALUES (8, 'Mistook', 130, 0, 300030, 13232203.3, 'Nothing to see', false, false, 6);
INSERT INTO public.moon VALUES (9, 'Bendicion', 130, 10, 330030, 132203.3, 'Here they have fun', true, true, 12);
INSERT INTO public.moon VALUES (10, 'Funy', 130, 100, 30030, 132203.3, 'Here they have more fun', true, true, 10);
INSERT INTO public.moon VALUES (11, 'Funyy', 130, 10, 90030, 13203.3, 'Here they some fun', true, true, 9);
INSERT INTO public.moon VALUES (12, 'Freddy', 130, 1, 90030, 13203.3, 'Here they keep freddy', true, true, 7);
INSERT INTO public.moon VALUES (13, 'Jason', 130, 1, 90030, 13203.3, 'Here they keep jason', true, true, 7);
INSERT INTO public.moon VALUES (14, 'Michael Myers', 130, 1, 90030, 13203.3, 'Here they keep Michael Myers', true, true, 8);
INSERT INTO public.moon VALUES (15, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 1);
INSERT INTO public.moon VALUES (16, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 2);
INSERT INTO public.moon VALUES (17, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 3);
INSERT INTO public.moon VALUES (18, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 4);
INSERT INTO public.moon VALUES (19, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 1);
INSERT INTO public.moon VALUES (20, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 2);
INSERT INTO public.moon VALUES (21, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 3);
INSERT INTO public.moon VALUES (22, 'CopyLuna', 30, 0, 90030, 13203.3, 'Lazy moon', false, false, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 1, 23123, 800000, 123453, 'Hogar', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, 0, 8000, 1234, 'de Milo', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Proxima d', 0, 203123, 8000000, 443453, 'Vecino', false, false, 2);
INSERT INTO public.planet VALUES (4, 'Loc26', 1, 1, 80000, 4434, 'Madmans', false, true, 4);
INSERT INTO public.planet VALUES (5, 'Derecho', 11, 0, 8000, 43434, 'Still as all things should be', false, false, 5);
INSERT INTO public.planet VALUES (6, 'Error', 1, 1, 800, 4434, 'Something aint right with these folks', true, true, 6);
INSERT INTO public.planet VALUES (7, 'Horror', 1, 1, 80, 4434, 'Something lurks here', false, true, 4);
INSERT INTO public.planet VALUES (8, 'Horror', 1, 1, 80, 4434, 'Something lurks here', true, true, 3);
INSERT INTO public.planet VALUES (9, 'Beautiful', 1, 1, 80, 444, 'Beauty lives here', true, true, 1);
INSERT INTO public.planet VALUES (10, 'Beautiful', 1, 1, 80, 444, 'Beauty lives here', true, true, 1);
INSERT INTO public.planet VALUES (11, 'Condemned', 1, 0, 8, 444, 'Tierra de los condenados', true, true, 4);
INSERT INTO public.planet VALUES (12, 'Blessed', 1, 1, 32, 4434, 'Tierra de los bendecidos', true, true, 1);


--
-- Data for Name: prueba; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.prueba VALUES (1, 'Juan', 40);
INSERT INTO public.prueba VALUES (2, 'Elthon', 64);
INSERT INTO public.prueba VALUES (3, 'Mario', 64);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 16, 9000, 123213213, 60000000, 'Our star', 3, true, true);
INSERT INTO public.star VALUES (2, 'Proxima Centaury', 2, 6, 5000, 123213, 999999999999, 'Closest star', 2, false, false);
INSERT INTO public.star VALUES (3, 'FARAWAY-212', 10, 16, 10000, 10101200323213, 99999999999999, 'Star far away', 3, true, false);
INSERT INTO public.star VALUES (4, 'Locardi', 100, 2032, 123132, 93929, 312332, 'Estrella loca', 4, false, true);
INSERT INTO public.star VALUES (5, 'Okaty', 4200, 1032, 13223132, 3929, 32312332, 'Estrella correcta', 5, false, false);
INSERT INTO public.star VALUES (6, 'Malarda', 42030, 10322, 132232, 929, 3312332, 'Estrella incorrecta', 6, true, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 6, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 22, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 12, true);


--
-- Name: prueba_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.prueba_id_seq', 3, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 6, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: prueba prueba_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prueba
    ADD CONSTRAINT prueba_pkey PRIMARY KEY (prueba_id);


--
-- Name: prueba prueba_prueba_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.prueba
    ADD CONSTRAINT prueba_prueba_id_key UNIQUE (prueba_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_in_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_in_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_in_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_in_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_in_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_in_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

