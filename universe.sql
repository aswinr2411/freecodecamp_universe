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
    name character varying(40),
    description text NOT NULL,
    brightest_star text NOT NULL,
    genitive_form text
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
-- Name: matter; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.matter (
    matter_id integer NOT NULL,
    name character varying(30),
    temp integer NOT NULL,
    hydrogen text NOT NULL
);


ALTER TABLE public.matter OWNER TO freecodecamp;

--
-- Name: matter_matter_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.matter_matter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matter_matter_id_seq OWNER TO freecodecamp;

--
-- Name: matter_matter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.matter_matter_id_seq OWNED BY public.matter.matter_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    radius_in_km integer NOT NULL,
    discovered_year integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    diameter_in_km integer NOT NULL,
    orbital_velocity numeric NOT NULL,
    ring boolean,
    magnetic_field boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    temperature_in_kelvin integer NOT NULL,
    color character varying(15) NOT NULL,
    galaxy_id integer
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
-- Name: matter matter_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.matter ALTER COLUMN matter_id SET DEFAULT nextval('public.matter_matter_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'The Princess Andromeda,daughter of Greek king Cepheus', 'Alpheratz', 'Andromedae');
INSERT INTO public.galaxy VALUES (2, 'Bootes', 'The herdsman,son of Zeus', 'Arcturus', 'Bootis');
INSERT INTO public.galaxy VALUES (3, 'Cancer', 'The Crab', 'Beta-Cnc', 'Cancri');
INSERT INTO public.galaxy VALUES (4, 'Draco', 'The Dragon', 'Eltanin', 'Draconis');
INSERT INTO public.galaxy VALUES (5, 'Equuleus', 'The little horse', 'Kitalpha', 'Equulei');
INSERT INTO public.galaxy VALUES (6, 'Gemini', 'The mythical twins Castor and Pollux', 'Pollux', 'Geminorum');


--
-- Data for Name: matter; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.matter VALUES (1, 'Molecular Clouds', 15, 'Molecular');
INSERT INTO public.matter VALUES (2, 'CNM', 75, 'Neutral Atomic');
INSERT INTO public.matter VALUES (3, 'WNM', 350, 'Neutral Atomic');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1738, 0, 4);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 1877, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 1877, 5);
INSERT INTO public.moon VALUES (4, 'Io', 1821, 1610, 6);
INSERT INTO public.moon VALUES (5, 'Europa', 1560, 1610, 6);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 1610, 6);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, 1610, 6);
INSERT INTO public.moon VALUES (8, 'Amalthea', 83, 1892, 6);
INSERT INTO public.moon VALUES (9, 'Himalia', 69, 1904, 6);
INSERT INTO public.moon VALUES (10, 'Elara', 3995, 1905, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 198, 1789, 7);
INSERT INTO public.moon VALUES (12, 'Dione', 561, 1684, 7);
INSERT INTO public.moon VALUES (13, 'Titan', 2574, 1655, 7);
INSERT INTO public.moon VALUES (14, 'Stephano', 16, 1999, 8);
INSERT INTO public.moon VALUES (15, 'Mab', 12, 2003, 8);
INSERT INTO public.moon VALUES (16, 'Naiad', 30, 1989, 9);
INSERT INTO public.moon VALUES (17, 'Galatea', 87, 1989, 9);
INSERT INTO public.moon VALUES (18, 'Charon', 606, 1978, 10);
INSERT INTO public.moon VALUES (19, 'Hydra', 27, 2005, 10);
INSERT INTO public.moon VALUES (20, 'Dysnomia', 350, 2005, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, 47.4, false, true, 3);
INSERT INTO public.planet VALUES (3, 'Venus', 12104, 35.0, false, false, 6);
INSERT INTO public.planet VALUES (4, 'Earth', 12756, 29.8, false, true, 3);
INSERT INTO public.planet VALUES (5, 'Mars', 6792, 24.1, false, false, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 142984, 13.1, true, true, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 120536, 9.7, true, true, 4);
INSERT INTO public.planet VALUES (8, 'Uranus', 49528, 6.8, true, true, 5);
INSERT INTO public.planet VALUES (9, 'Neptune', 51118, 5.4, true, true, 2);
INSERT INTO public.planet VALUES (10, 'Pluto', 2376, 4.7, false, true, 4);
INSERT INTO public.planet VALUES (11, 'Ceres', 946, 0.51, false, true, 6);
INSERT INTO public.planet VALUES (12, 'Haumea', 1622, 0.91, true, true, 1);
INSERT INTO public.planet VALUES (13, 'Makemake', 1430, 0.54, false, true, 5);
INSERT INTO public.planet VALUES (14, 'Eris', 2326, 1.37, false, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Spica', 25000, 'Blue', 2);
INSERT INTO public.star VALUES (2, 'Vega', 10000, 'White', 5);
INSERT INTO public.star VALUES (3, 'Sun', 6000, 'Yellow', 3);
INSERT INTO public.star VALUES (4, 'Aldebaran', 4000, 'Orange', 6);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3000, 'Red', 1);
INSERT INTO public.star VALUES (6, 'Feona', 1000, 'Light Blue', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: matter_matter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.matter_matter_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: matter matter_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.matter
    ADD CONSTRAINT matter_name_key UNIQUE (name);


--
-- Name: matter matter_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.matter
    ADD CONSTRAINT matter_pkey PRIMARY KEY (matter_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


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


