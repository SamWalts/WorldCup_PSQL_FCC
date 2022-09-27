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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_games_id_seq OWNER TO freecodecamp;

--
-- Name: games_games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_games_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_games_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (303, 1300, 1301, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (304, 1302, 1303, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (305, 1301, 1303, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (306, 1300, 1302, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (307, 1301, 1304, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (308, 1303, 1305, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (309, 1302, 1306, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (310, 1300, 1307, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (311, 1303, 1308, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (312, 1305, 1309, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (313, 1302, 1310, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (314, 1306, 1311, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (315, 1301, 1312, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (316, 1304, 1313, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (317, 1307, 1314, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (318, 1300, 1315, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (319, 1316, 1315, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (320, 1317, 1306, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (321, 1315, 1317, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (322, 1316, 1306, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (323, 1317, 1318, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (324, 1315, 1302, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (325, 1306, 1308, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (326, 1316, 1300, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (327, 1306, 1319, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (328, 1308, 1307, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (329, 1300, 1320, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (330, 1316, 1321, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (331, 1317, 1311, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (332, 1318, 1322, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (333, 1315, 1309, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (334, 1302, 1323, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1300, 'France');
INSERT INTO public.teams VALUES (1301, 'Croatia');
INSERT INTO public.teams VALUES (1302, 'Belgium');
INSERT INTO public.teams VALUES (1303, 'England');
INSERT INTO public.teams VALUES (1304, 'Russia');
INSERT INTO public.teams VALUES (1305, 'Sweden');
INSERT INTO public.teams VALUES (1306, 'Brazil');
INSERT INTO public.teams VALUES (1307, 'Uruguay');
INSERT INTO public.teams VALUES (1308, 'Colombia');
INSERT INTO public.teams VALUES (1309, 'Switzerland');
INSERT INTO public.teams VALUES (1310, 'Japan');
INSERT INTO public.teams VALUES (1311, 'Mexico');
INSERT INTO public.teams VALUES (1312, 'Denmark');
INSERT INTO public.teams VALUES (1313, 'Spain');
INSERT INTO public.teams VALUES (1314, 'Portugal');
INSERT INTO public.teams VALUES (1315, 'Argentina');
INSERT INTO public.teams VALUES (1316, 'Germany');
INSERT INTO public.teams VALUES (1317, 'Netherlands');
INSERT INTO public.teams VALUES (1318, 'Costa Rica');
INSERT INTO public.teams VALUES (1319, 'Chile');
INSERT INTO public.teams VALUES (1320, 'Nigeria');
INSERT INTO public.teams VALUES (1321, 'Algeria');
INSERT INTO public.teams VALUES (1322, 'Greece');
INSERT INTO public.teams VALUES (1323, 'United States');


--
-- Name: games_games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_games_id_seq', 334, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1323, true);


--
-- Name: games games_games_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_games_id_key UNIQUE (game_id);


--
-- Name: games games_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_id PRIMARY KEY (game_id);


--
-- Name: teams name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: teams team_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT team_id PRIMARY KEY (team_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

