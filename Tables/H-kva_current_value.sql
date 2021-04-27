-- Table: public.kva_current_value

-- DROP TABLE public.kva_current_value;

CREATE TABLE kva_current_value
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    revenue_per_employee character varying COLLATE pg_catalog."default",
    product_cost_ratio character varying COLLATE pg_catalog."default",
    employee_satisfaction character varying COLLATE pg_catalog."default",
    customer_satisfaction character varying COLLATE pg_catalog."default",
    customer_usage_index character varying COLLATE pg_catalog."default",
    id_iteration integer NOT NULL,
    id_team integer NOT NULL,
    CONSTRAINT kvm_current_value_pkey PRIMARY KEY (id),
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