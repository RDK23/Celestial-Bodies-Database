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
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    diameter_km integer NOT NULL,
    has_life boolean NOT NULL
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
    star_id integer NOT NULL,
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    has_life boolean NOT NULL,
    number_of_moons integer NOT NULL
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_plant_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_plant_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_plant_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_plant_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_plant_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    mass numeric NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_plant_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 'Our home galaxy', 13600, 0, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Anearby spiral galaxy', 10000, 2537000, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'A spiral galaxy in the Local Group', 10000, 2730000, false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'A grand-design spiral galaxy', 13000, 23000000, false, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'A galaxy with a bright central bulge', 13000, 29350000, false, true);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'A face-on spiral galaxy', 13000, 21000000, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 3, 'Luna', 'Earth natural satellite', 3474, false);
INSERT INTO public.moon VALUES (2, 4, 'Phobos', 'Inner moon of Mars', 22, false);
INSERT INTO public.moon VALUES (3, 4, 'Deimos', 'Outer moon of Mars', 12, false);
INSERT INTO public.moon VALUES (4, 5, 'Io', 'Volcanically active moon of Jupiter', 3643, false);
INSERT INTO public.moon VALUES (5, 5, 'Europa', 'Icy moon of Jupiter', 3122, false);
INSERT INTO public.moon VALUES (6, 5, 'Ganymede', 'Largest moon in the Solar System', 5268, false);
INSERT INTO public.moon VALUES (7, 5, 'Callisto', 'Heavily cratered moon of Jupiter', 4821, false);
INSERT INTO public.moon VALUES (8, 5, 'Amalthea', 'Small inner moon of Jupiter', 167, false);
INSERT INTO public.moon VALUES (9, 6, 'Titan', 'Saturn moon with a thick atmosphere', 5150, false);
INSERT INTO public.moon VALUES (10, 6, 'Enceladus', 'Icy moon with water-rich plumes', 504, false);
INSERT INTO public.moon VALUES (11, 6, 'Rhea', 'Second-largest moon of Saturn', 1528, false);
INSERT INTO public.moon VALUES (12, 6, 'Iapetus', 'Saturn moon with contrasting hemispheres', 1469, false);
INSERT INTO public.moon VALUES (13, 7, 'Titania', 'Largest moon of Uranus', 1578, false);
INSERT INTO public.moon VALUES (14, 7, 'Oberon', 'Outer major moon of Uranus', 1523, false);
INSERT INTO public.moon VALUES (15, 7, 'Miranda', 'Small moon with unusual terrain', 472, false);
INSERT INTO public.moon VALUES (16, 8, 'Triton', 'Large retrograde moon of Neptune', 2707, false);
INSERT INTO public.moon VALUES (17, 8, 'Proteus', 'Irregularly shaped moon of Neptune', 420, false);
INSERT INTO public.moon VALUES (18, 8, 'Nereid', 'Moon with a highly eccentric orbit', 340, false);
INSERT INTO public.moon VALUES (19, 5, 'Thebe', 'Inner moon of Jupiter', 100, false);
INSERT INTO public.moon VALUES (20, 6, 'Dione', 'Icy moon of Saturn', 1123, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'Mercury', 'Smallest planet in the Solar System', 0.00001, false, 0);
INSERT INTO public.planet VALUES (2, 1, 1, 'Venus', 'A hot terrestrial planet', 0.00001, false, 0);
INSERT INTO public.planet VALUES (3, 1, 1, 'Earth', 'Our home planet', 0.00001, true, 1);
INSERT INTO public.planet VALUES (4, 1, 1, 'Mars', 'The red planet', 0.00002, false, 2);
INSERT INTO public.planet VALUES (5, 1, 2, 'Jupiter', 'The largest planet', 0.00005, false, 95);
INSERT INTO public.planet VALUES (6, 1, 2, 'Saturn', 'A gas giant with prominent rings', 0.00009, false, 146);
INSERT INTO public.planet VALUES (7, 1, 3, 'Uranus', 'An ice giant with an extreme axial tilt', 0.0002, false, 28);
INSERT INTO public.planet VALUES (8, 1, 3, 'Neptune', 'A distant blue ice giant', 0.0003, false, 16);
INSERT INTO public.planet VALUES (9, 5, 1, 'Kepler-186f', 'An exoplanet in the habitable zone', 5000000, false, 0);
INSERT INTO public.planet VALUES (10, 5, 2, 'Kepler-22b', 'An exoplanet orbiting Kepler-22', 600000, false, 0);
INSERT INTO public.planet VALUES (11, 6, 1, 'TRAPPIST-1e', 'A terrestrial exoplanet', 390000, false, 0);
INSERT INTO public.planet VALUES (12, 6, 2, 'HD 108874 b', 'An extrasolar gas giant', 68000000, false, 0);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (2, 'Gas Giant', 'A large planet composed mainly of gases');
INSERT INTO public.planet_type VALUES (3, 'Ice Giant', 'A plant rich in Volatile compounds');
INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'A rocky planet with a solid surface');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'The star at the center of our Solar System', 4600, 1.0, true);
INSERT INTO public.star VALUES (2, 1, 'Sirius', 'The brightest star in the night sky', 242, 2.0, true);
INSERT INTO public.star VALUES (3, 1, 'Proxima Centauri', 'The nearest known star to the Sun', 4850, 0.12, true);
INSERT INTO public.star VALUES (4, 1, 'Betelgeuse', 'A red supergiant star', 10, 16.5, true);
INSERT INTO public.star VALUES (5, 2, 'Mirach', 'A bright giant star in Andromeda', 3000, 3.5, true);
INSERT INTO public.star VALUES (6, 3, 'HD 104985', 'A giant star in the Triangulum direction', 5000, 1.6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_plant_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_plant_type_id_seq', 3, true);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

