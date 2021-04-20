-- Table: public.iteration_product

-- DROP TABLE public.iteration_product;

CREATE TABLE public.iteration_product
(
    id_iteration integer NOT NULL,
    id_product integer NOT NULL,
    CONSTRAINT fk_iteration FOREIGN KEY (id_iteration)
        REFERENCES public.iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_product FOREIGN KEY (id_product)
        REFERENCES public.product (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)