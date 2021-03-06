PGDMP     1    7                x         	   exercise3    13.1    13.1 4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16522 	   exercise3    DATABASE     m   CREATE DATABASE exercise3 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE exercise3;
                postgres    false            �            1259    16612    customer    TABLE     �   CREATE TABLE public.customer (
    name "char" NOT NULL,
    phone_numbers "char",
    customer_id integer NOT NULL,
    "TK" integer,
    city "char",
    street "char",
    street_number integer,
    area "char"
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16610    customer_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public          postgres    false    201            �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customer_customer_id_seq OWNED BY public.customer.customer_id;
          public          postgres    false    200            �            1259    16665    employee    TABLE     E  CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    name "char" NOT NULL,
    surname "char" NOT NULL,
    afm "char" NOT NULL,
    "TK" integer NOT NULL,
    city "char" NOT NULL,
    street "char" NOT NULL,
    street_number integer NOT NULL,
    area "char" NOT NULL,
    phone_numbers "char" NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16663    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    207            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    206            �            1259    16628    product    TABLE       CREATE TABLE public.product (
    product_id integer NOT NULL,
    category "char" NOT NULL,
    short_descr "char" NOT NULL,
    " purchase_price" money NOT NULL,
    long_descr "char" NOT NULL,
    selling_price money NOT NULL,
    available_amount integer NOT NULL
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16626    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    203            �           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    202            �            1259    16674    sales_order    TABLE     *  CREATE TABLE public.sales_order (
    total_price money NOT NULL,
    date_sold date NOT NULL,
    quantity_sold integer NOT NULL,
    price_per_piece money NOT NULL,
    sales_id integer NOT NULL,
    product_id bigint NOT NULL,
    employee_id bigint NOT NULL,
    customer_id bigint NOT NULL
);
    DROP TABLE public.sales_order;
       public         heap    postgres    false            �            1259    16672    sales_order_sales_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sales_order_sales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.sales_order_sales_id_seq;
       public          postgres    false    209            �           0    0    sales_order_sales_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.sales_order_sales_id_seq OWNED BY public.sales_order.sales_id;
          public          postgres    false    208            �            1259    16636    supplier    TABLE     �   CREATE TABLE public.supplier (
    supplier_id integer NOT NULL,
    name "char" NOT NULL,
    "TK" "char",
    area "char",
    city "char",
    street_num integer,
    phone_numbers "char",
    street "char"
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16634    supplier_supplier_id_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_supplier_id_seq;
       public          postgres    false    205            �           0    0    supplier_supplier_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_supplier_id_seq OWNED BY public.supplier.supplier_id;
          public          postgres    false    204            �            1259    16697    supplies_order    TABLE     :  CREATE TABLE public.supplies_order (
    total_price money NOT NULL,
    date_purchased date NOT NULL,
    quantity_purchased integer NOT NULL,
    price_per_piece money NOT NULL,
    supplies_id integer NOT NULL,
    product_id bigint NOT NULL,
    employee_id bigint NOT NULL,
    customer_id bigint NOT NULL
);
 "   DROP TABLE public.supplies_order;
       public         heap    postgres    false            �            1259    16695    supplies_order_supplies_id_seq    SEQUENCE     �   CREATE SEQUENCE public.supplies_order_supplies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.supplies_order_supplies_id_seq;
       public          postgres    false    211            �           0    0    supplies_order_supplies_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.supplies_order_supplies_id_seq OWNED BY public.supplies_order.supplies_id;
          public          postgres    false    210            @           2604    16615    customer customer_id    DEFAULT     |   ALTER TABLE ONLY public.customer ALTER COLUMN customer_id SET DEFAULT nextval('public.customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public          postgres    false    201    200    201            C           2604    16668    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    207    206    207            A           2604    16631    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    203    202    203            D           2604    16677    sales_order sales_id    DEFAULT     |   ALTER TABLE ONLY public.sales_order ALTER COLUMN sales_id SET DEFAULT nextval('public.sales_order_sales_id_seq'::regclass);
 C   ALTER TABLE public.sales_order ALTER COLUMN sales_id DROP DEFAULT;
       public          postgres    false    209    208    209            B           2604    16639    supplier supplier_id    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN supplier_id SET DEFAULT nextval('public.supplier_supplier_id_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN supplier_id DROP DEFAULT;
       public          postgres    false    205    204    205            E           2604    16700    supplies_order supplies_id    DEFAULT     �   ALTER TABLE ONLY public.supplies_order ALTER COLUMN supplies_id SET DEFAULT nextval('public.supplies_order_supplies_id_seq'::regclass);
 I   ALTER TABLE public.supplies_order ALTER COLUMN supplies_id DROP DEFAULT;
       public          postgres    false    211    210    211            �          0    16612    customer 
   TABLE DATA           m   COPY public.customer (name, phone_numbers, customer_id, "TK", city, street, street_number, area) FROM stdin;
    public          postgres    false    201   DA       �          0    16665    employee 
   TABLE DATA           {   COPY public.employee (employee_id, name, surname, afm, "TK", city, street, street_number, area, phone_numbers) FROM stdin;
    public          postgres    false    207   aA       �          0    16628    product 
   TABLE DATA           �   COPY public.product (product_id, category, short_descr, " purchase_price", long_descr, selling_price, available_amount) FROM stdin;
    public          postgres    false    203   ~A       �          0    16674    sales_order 
   TABLE DATA           �   COPY public.sales_order (total_price, date_sold, quantity_sold, price_per_piece, sales_id, product_id, employee_id, customer_id) FROM stdin;
    public          postgres    false    209   �A       �          0    16636    supplier 
   TABLE DATA           j   COPY public.supplier (supplier_id, name, "TK", area, city, street_num, phone_numbers, street) FROM stdin;
    public          postgres    false    205   �A       �          0    16697    supplies_order 
   TABLE DATA           �   COPY public.supplies_order (total_price, date_purchased, quantity_purchased, price_per_piece, supplies_id, product_id, employee_id, customer_id) FROM stdin;
    public          postgres    false    211   �A       �           0    0    customer_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customer_customer_id_seq', 1, false);
          public          postgres    false    200            �           0    0    employee_employee_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);
          public          postgres    false    206            �           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public          postgres    false    202            �           0    0    sales_order_sales_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.sales_order_sales_id_seq', 1, false);
          public          postgres    false    208            �           0    0    supplier_supplier_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_supplier_id_seq', 1, false);
          public          postgres    false    204            �           0    0    supplies_order_supplies_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.supplies_order_supplies_id_seq', 1, false);
          public          postgres    false    210            I           2606    16633    product Product_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "Product_pkey" PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.product DROP CONSTRAINT "Product_pkey";
       public            postgres    false    203            G           2606    16617    customer customer_id_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_id_pk PRIMARY KEY (customer_id);
 A   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_id_pk;
       public            postgres    false    201            M           2606    16670    employee employee_id_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_id_pk PRIMARY KEY (employee_id);
 A   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_id_pk;
       public            postgres    false    207            O           2606    16679    sales_order sales_order_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_pkey PRIMARY KEY (sales_id);
 F   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_pkey;
       public            postgres    false    209            K           2606    16641    supplier supplier_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (supplier_id);
 >   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pk;
       public            postgres    false    205            Q           2606    16702 "   supplies_order supplies_order_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.supplies_order
    ADD CONSTRAINT supplies_order_pkey PRIMARY KEY (supplies_id);
 L   ALTER TABLE ONLY public.supplies_order DROP CONSTRAINT supplies_order_pkey;
       public            postgres    false    211            T           2606    16690 (   sales_order sales_order_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 R   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_customer_id_fkey;
       public          postgres    false    2887    201    209            S           2606    16685 (   sales_order sales_order_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 R   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_employee_id_fkey;
       public          postgres    false    2893    207    209            R           2606    16680 '   sales_order sales_order_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.sales_order
    ADD CONSTRAINT sales_order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 Q   ALTER TABLE ONLY public.sales_order DROP CONSTRAINT sales_order_product_id_fkey;
       public          postgres    false    2889    209    203            W           2606    16713 .   supplies_order supplies_order_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplies_order
    ADD CONSTRAINT supplies_order_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 X   ALTER TABLE ONLY public.supplies_order DROP CONSTRAINT supplies_order_customer_id_fkey;
       public          postgres    false    211    201    2887            V           2606    16708 .   supplies_order supplies_order_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplies_order
    ADD CONSTRAINT supplies_order_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);
 X   ALTER TABLE ONLY public.supplies_order DROP CONSTRAINT supplies_order_employee_id_fkey;
       public          postgres    false    211    207    2893            U           2606    16703 -   supplies_order supplies_order_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.supplies_order
    ADD CONSTRAINT supplies_order_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 W   ALTER TABLE ONLY public.supplies_order DROP CONSTRAINT supplies_order_product_id_fkey;
       public          postgres    false    2889    203    211            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     