--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    decription text
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    decription text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    star_id integer NOT NULL
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    has_life boolean,
    is_spherical boolean,
    decription text,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    decription text
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

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13600, 'Our home spiral galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.537, 10000, 'Nearest major spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2.73, 12000, 'Third-largest in Local Group');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 29.35, 13250, 'Galaxy with a bright nucleus');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 23.16, 400, 'Grand-design spiral galaxy');
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13.05, 13270, 'Prominent lenticular galaxy');


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, true, false, 'Galaxy with spiral arms rotating around a central bulge', 'Spiral');
INSERT INTO public.galaxy_types VALUES (2, false, true, 'Smooth, nearly featureless oval or spherical galaxy', 'Elliptical');
INSERT INTO public.galaxy_types VALUES (3, false, false, 'Galaxy without a distinct regular shape', 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 0.38, 4500, 3);
INSERT INTO public.moon VALUES (22, 'Phobos', 77.79, 4500, 4);
INSERT INTO public.moon VALUES (23, 'Deimos', 77.79, 4500, 4);
INSERT INTO public.moon VALUES (24, 'Io', 628.3, 4500, 5);
INSERT INTO public.moon VALUES (25, 'Europa', 628.3, 4500, 5);
INSERT INTO public.moon VALUES (26, 'Ganymede', 628.3, 4500, 5);
INSERT INTO public.moon VALUES (27, 'Callisto', 628.3, 4500, 5);
INSERT INTO public.moon VALUES (28, 'Titan', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (29, 'Enceladus', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (30, 'Mimas', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (31, 'Tethys', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (32, 'Dione', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (33, 'Rhea', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (34, 'Iapetus', 1275.0, 4500, 6);
INSERT INTO public.moon VALUES (35, 'Miranda', 2723.0, 4500, 7);
INSERT INTO public.moon VALUES (36, 'Ariel', 2723.0, 4500, 7);
INSERT INTO public.moon VALUES (37, 'Umbriel', 2723.0, 4500, 7);
INSERT INTO public.moon VALUES (38, 'Titania', 2723.0, 4500, 7);
INSERT INTO public.moon VALUES (39, 'Oberon', 2723.0, 4500, 7);
INSERT INTO public.moon VALUES (40, 'Triton', 4351.0, 4500, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 91.69, 4500, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 41.4, 4500, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0, 4500, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 78.34, 4500, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 628.73, 4500, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1275.0, 4500, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2723.95, 4500, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4351.4, 4500, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 4.24, 4850, 2);
INSERT INTO public.planet VALUES (10, 'Proxima c', 4.24, 4850, 2);
INSERT INTO public.planet VALUES (11, 'Sirius b1', 8.6, 240, 3);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 582.0, 4000, 4);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, true, true, 'Rocky planet with solid surface', 'Terrestrial');
INSERT INTO public.planet_types VALUES (2, false, true, 'Large planet composed mostly of gases', 'Gas Giant');
INSERT INTO public.planet_types VALUES (3, false, true, 'Giant planet composed mainly of heavier elements', 'Ice Giant');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.0000158, 4600, 1, 'Star at center of Solar System');
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.246, 4850, 1, 'Closest star to the Sun');
INSERT INTO public.star VALUES (3, 'Sirius', 8.6, 242, 1, 'Brightest star in night sky');
INSERT INTO public.star VALUES (4, 'Betelgeuse', 642.5, 10, 1, 'Red supergiant in Orion');
INSERT INTO public.star VALUES (5, 'Alpheratz', 97, 60, 2, 'Brightest star in Andromeda');
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 4.37, 5300, 1, 'Part of Alpha Centauri system');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


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
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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

