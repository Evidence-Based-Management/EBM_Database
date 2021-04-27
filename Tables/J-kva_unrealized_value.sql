-- Table: public.kva_unrealized_value

-- DROP TABLE public.kva_unrealized_value;

CREATE TABLE kva_unrealized_value
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    market_share character varying COLLATE pg_catalog."default",
    customer_or_user_satisfaction_gap character varying COLLATE pg_catalog."default",
    id_team integer NOT NULL,
    id_iteration integer NOT NULL,
    CONSTRAINT kvm_unrealized_value_pkey PRIMARY KEY (id),
    CONSTRAINT fk_iteration FOREIGN KEY (id_iteration)
        REFERENCES iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT fk_team FOREIGN KEY (id_team)
        REFERENCES team (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
