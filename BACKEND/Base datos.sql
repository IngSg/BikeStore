PGDMP     6                    {         	   Bikestore    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24597 	   Bikestore    DATABASE     �   CREATE DATABASE "Bikestore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Bikestore";
                postgres    false            �            1259    24598    prod    TABLE     �  CREATE TABLE public.prod (
    "ID_Producto" bigint NOT NULL,
    "Nombre_Producto " character varying(100) NOT NULL,
    "Descripcion " character varying,
    "Precio " money NOT NULL,
    "Stock" integer NOT NULL,
    "Categoria " character varying NOT NULL,
    "Tipo " character varying NOT NULL,
    "Marca " character varying NOT NULL,
    "Color " character varying NOT NULL,
    "Img_Producto" character varying
);
    DROP TABLE public.prod;
       public         heap    postgres    false            �            1259    24633    usuarios    TABLE     +  CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre text NOT NULL,
    apellido text NOT NULL,
    correo_electronico text NOT NULL,
    direccion text NOT NULL,
    "hash_contraseña" text NOT NULL,
    numero_telefono text NOT NULL,
    documento_identidad text NOT NULL
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24632    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    216                       0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    215            i           2604    24636    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    24598    prod 
   TABLE DATA           �   COPY public.prod ("ID_Producto", "Nombre_Producto ", "Descripcion ", "Precio ", "Stock", "Categoria ", "Tipo ", "Marca ", "Color ", "Img_Producto") FROM stdin;
    public          postgres    false    214   �       �          0    24633    usuarios 
   TABLE DATA           �   COPY public.usuarios (id_usuario, nombre, apellido, correo_electronico, direccion, "hash_contraseña", numero_telefono, documento_identidad) FROM stdin;
    public          postgres    false    216   �                  0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 21, true);
          public          postgres    false    215            k           2606    24604    prod Prod_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.prod
    ADD CONSTRAINT "Prod_pkey" PRIMARY KEY ("ID_Producto");
 :   ALTER TABLE ONLY public.prod DROP CONSTRAINT "Prod_pkey";
       public            postgres    false    214            m           2606    24640    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    216            �   W   x�3�L�L��W(*-I�L��rK+�JS�
��"ə�)�)�*
�zF �c`�i�	��ę^Ι��^�������� \r      �   �   x���Kn�0@��S��$�*���(`�Q��V=C/�Q�iv�8A�x��� �g��}Q��w�B�k;P��0@ݿL���@m�6h0/�F�
�,�&w�*}$�紾=D������۝�U�4�uxg��eR�lJ�K)�E�0���m���f�����ʫYڏ��[���3�޺�T���ꏏ՟D�z0$H�eG�0{R�:FB�%�����Qh��P.T�N;�Lwz?(�~ 3W�     