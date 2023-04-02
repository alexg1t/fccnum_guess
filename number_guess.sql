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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 3);
INSERT INTO public.games VALUES (2, 355, 8);
INSERT INTO public.games VALUES (3, 745, 8);
INSERT INTO public.games VALUES (4, 931, 9);
INSERT INTO public.games VALUES (5, 789, 9);
INSERT INTO public.games VALUES (6, 310, 8);
INSERT INTO public.games VALUES (7, 496, 8);
INSERT INTO public.games VALUES (8, 930, 8);
INSERT INTO public.games VALUES (9, 837, 10);
INSERT INTO public.games VALUES (10, 245, 10);
INSERT INTO public.games VALUES (11, 469, 11);
INSERT INTO public.games VALUES (12, 729, 11);
INSERT INTO public.games VALUES (13, 756, 10);
INSERT INTO public.games VALUES (14, 242, 10);
INSERT INTO public.games VALUES (15, 619, 10);
INSERT INTO public.games VALUES (16, 338, 12);
INSERT INTO public.games VALUES (17, 582, 12);
INSERT INTO public.games VALUES (18, 460, 13);
INSERT INTO public.games VALUES (19, 363, 13);
INSERT INTO public.games VALUES (20, 16, 12);
INSERT INTO public.games VALUES (21, 986, 12);
INSERT INTO public.games VALUES (22, 732, 12);
INSERT INTO public.games VALUES (23, 78, 14);
INSERT INTO public.games VALUES (24, 775, 14);
INSERT INTO public.games VALUES (25, 173, 15);
INSERT INTO public.games VALUES (26, 333, 15);
INSERT INTO public.games VALUES (27, 408, 14);
INSERT INTO public.games VALUES (28, 750, 14);
INSERT INTO public.games VALUES (29, 72, 14);
INSERT INTO public.games VALUES (30, 335, 16);
INSERT INTO public.games VALUES (31, 165, 16);
INSERT INTO public.games VALUES (32, 7, 17);
INSERT INTO public.games VALUES (33, 558, 17);
INSERT INTO public.games VALUES (34, 942, 16);
INSERT INTO public.games VALUES (35, 181, 16);
INSERT INTO public.games VALUES (36, 870, 16);
INSERT INTO public.games VALUES (37, 978, 18);
INSERT INTO public.games VALUES (38, 147, 18);
INSERT INTO public.games VALUES (39, 146, 19);
INSERT INTO public.games VALUES (40, 241, 19);
INSERT INTO public.games VALUES (41, 470, 18);
INSERT INTO public.games VALUES (42, 456, 18);
INSERT INTO public.games VALUES (43, 915, 18);
INSERT INTO public.games VALUES (44, 591, 20);
INSERT INTO public.games VALUES (45, 565, 20);
INSERT INTO public.games VALUES (46, 1001, 21);
INSERT INTO public.games VALUES (47, 108, 21);
INSERT INTO public.games VALUES (48, 298, 20);
INSERT INTO public.games VALUES (49, 116, 20);
INSERT INTO public.games VALUES (50, 923, 20);
INSERT INTO public.games VALUES (51, 194, 22);
INSERT INTO public.games VALUES (52, 926, 22);
INSERT INTO public.games VALUES (53, 115, 23);
INSERT INTO public.games VALUES (54, 88, 23);
INSERT INTO public.games VALUES (55, 567, 22);
INSERT INTO public.games VALUES (56, 174, 22);
INSERT INTO public.games VALUES (57, 439, 22);
INSERT INTO public.games VALUES (58, 547, 24);
INSERT INTO public.games VALUES (59, 556, 24);
INSERT INTO public.games VALUES (60, 17, 25);
INSERT INTO public.games VALUES (61, 711, 25);
INSERT INTO public.games VALUES (62, 142, 24);
INSERT INTO public.games VALUES (63, 441, 24);
INSERT INTO public.games VALUES (64, 483, 24);
INSERT INTO public.games VALUES (65, 686, 26);
INSERT INTO public.games VALUES (66, 584, 26);
INSERT INTO public.games VALUES (67, 340, 27);
INSERT INTO public.games VALUES (68, 822, 27);
INSERT INTO public.games VALUES (69, 66, 26);
INSERT INTO public.games VALUES (70, 683, 26);
INSERT INTO public.games VALUES (71, 848, 26);
INSERT INTO public.games VALUES (72, 698, 28);
INSERT INTO public.games VALUES (73, 462, 28);
INSERT INTO public.games VALUES (74, 362, 29);
INSERT INTO public.games VALUES (75, 651, 29);
INSERT INTO public.games VALUES (76, 786, 28);
INSERT INTO public.games VALUES (77, 975, 28);
INSERT INTO public.games VALUES (78, 343, 28);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'alex');
INSERT INTO public.users VALUES (2, 'pablo');
INSERT INTO public.users VALUES (3, 'ALEX');
INSERT INTO public.users VALUES (4, 'user_1680474958567');
INSERT INTO public.users VALUES (5, 'user_1680474958566');
INSERT INTO public.users VALUES (6, 'user_1680475087152');
INSERT INTO public.users VALUES (7, 'user_1680475087151');
INSERT INTO public.users VALUES (8, 'user_1680475698161');
INSERT INTO public.users VALUES (9, 'user_1680475698160');
INSERT INTO public.users VALUES (10, 'user_1680475733001');
INSERT INTO public.users VALUES (11, 'user_1680475733000');
INSERT INTO public.users VALUES (12, 'user_1680475864055');
INSERT INTO public.users VALUES (13, 'user_1680475864054');
INSERT INTO public.users VALUES (14, 'user_1680475916944');
INSERT INTO public.users VALUES (15, 'user_1680475916943');
INSERT INTO public.users VALUES (16, 'user_1680475937303');
INSERT INTO public.users VALUES (17, 'user_1680475937302');
INSERT INTO public.users VALUES (18, 'user_1680475947747');
INSERT INTO public.users VALUES (19, 'user_1680475947746');
INSERT INTO public.users VALUES (20, 'user_1680475973098');
INSERT INTO public.users VALUES (21, 'user_1680475973097');
INSERT INTO public.users VALUES (22, 'user_1680476044192');
INSERT INTO public.users VALUES (23, 'user_1680476044191');
INSERT INTO public.users VALUES (24, 'user_1680476183414');
INSERT INTO public.users VALUES (25, 'user_1680476183413');
INSERT INTO public.users VALUES (26, 'user_1680476327021');
INSERT INTO public.users VALUES (27, 'user_1680476327020');
INSERT INTO public.users VALUES (28, 'user_1680476354525');
INSERT INTO public.users VALUES (29, 'user_1680476354524');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 78, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 29, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

