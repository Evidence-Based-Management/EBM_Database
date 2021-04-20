-- Table: public.kva_time_to_market

-- DROP TABLE public.kva_time_to_market;

CREATE TABLE public.kva_time_to_market
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    build_and_integration_frequency character varying COLLATE pg_catalog."default",
    release_frequency character varying COLLATE pg_catalog."default",
    release_stabilization_period character varying COLLATE pg_catalog."default",
    mean_time_to_repair character varying COLLATE pg_catalog."default",
    cycle_time character varying COLLATE pg_catalog."default",
    lead_time character varying COLLATE pg_catalog."default",
    time_to_learn character varying COLLATE pg_catalog."default",
    id_team integer NOT NULL,
    id_iteration integer NOT NULL,
    CONSTRAINT kvm_time_to_market_pkey PRIMARY KEY (id),
    CONSTRAINT fk_iteration FOREIGN KEY (id_iteration)
        REFERENCES public.iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_team FOREIGN KEY (id_team)
        REFERENCES public.team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
