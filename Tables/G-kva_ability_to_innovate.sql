-- Table: public.kva_ability_to_innovate

-- DROP TABLE public.kva_ability_to_innovate;

CREATE TABLE kva_ability_to_innovate
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    feature_usage_index character varying COLLATE pg_catalog."default",
    innovation_rate character varying COLLATE pg_catalog."default",
    defect_trends character varying COLLATE pg_catalog."default",
    on_product_index character varying COLLATE pg_catalog."default",
    installed_version_index character varying COLLATE pg_catalog."default",
    technical_debt character varying COLLATE pg_catalog."default",
    production_incident_trends character varying COLLATE pg_catalog."default",
    active_code_branches_time_spent_merging_code_between_branches character varying COLLATE pg_catalog."default",
    time_spent_context_switching character varying COLLATE pg_catalog."default",
    id_iteration integer NOT NULL,
    id_team integer NOT NULL,
    CONSTRAINT kvm_ability_to_innovate_pkey PRIMARY KEY (id),
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
