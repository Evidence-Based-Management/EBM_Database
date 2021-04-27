-- Table: public.iteration_product

-- DROP TABLE public.iteration_product;

CREATE TABLE iteration_product
(
    id_iteration integer NOT NULL,
    id_product integer NOT NULL,
    CONSTRAINT fk_iteration FOREIGN KEY (id_iteration)
        REFERENCES iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_product FOREIGN KEY (id_product)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)