-- Table: public.team

-- DROP TABLE public.team;

CREATE TABLE public.team
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    date_join timestamp with time zone,
    id_user integer,
    CONSTRAINT team_pkey PRIMARY KEY (id),
    CONSTRAINT team_user FOREIGN KEY (id_user)
        REFERENCES public.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
