PGDMP     !                    {         	   Bikestore    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24597 	   Bikestore    DATABASE     �   CREATE DATABASE "Bikestore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Bikestore";
                postgres    false            �            1259    41558 	   productos    TABLE     �  CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(100) NOT NULL,
    descripcion character varying(900) NOT NULL,
    precio money NOT NULL,
    stock integer NOT NULL,
    categoria character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL,
    marca character varying(255) NOT NULL,
    color character varying(255) NOT NULL,
    img_producto character varying(255)
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    41557    productos_id_producto_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.productos_id_producto_seq;
       public          postgres    false    224                        0    0    productos_id_producto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;
          public          postgres    false    223            �           2604    41614    productos id_producto    DEFAULT     ~   ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);
 D   ALTER TABLE public.productos ALTER COLUMN id_producto DROP DEFAULT;
       public          postgres    false    224    223    224                      0    41558 	   productos 
   TABLE DATA           �   COPY public.productos (id_producto, nombre_producto, descripcion, precio, stock, categoria, tipo, marca, color, img_producto) FROM stdin;
    public          postgres    false    224   �       !           0    0    productos_id_producto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.productos_id_producto_seq', 12, true);
          public          postgres    false    223            �           2606    41565    productos productos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    224               �  x��WM��6={�z�I��%p���w7���e/#���H�BJF��c=��?��ُ�)��{�M�μ���^\L/���j���j�W��/���rޚ#,Kto�!(9B�>�*�[+Q!H�l���~��M�Nje@�ˬ�m���`�N�(��ơЇ?�����-ڢ����a�g
4��(A��㙦V���sO�J8Ua~�CEyW+J�VgZh��cX�S�����a?@E�-g���BO?�-�&�:�v�Ⱈ�۠�98%�s����k_�b��۰��Ihkx��([�*`�?��*��T�����B��.�TZW(ȿs(jCA���)t�:ʁ�vTb�W8빖�TnOkmt�w�RC� K��a4#�n +��j:�b6�yd
�uZ?A���q'��v�����۰�kOе�lM���V�S�ֳ��r-��enQ�gY���F�d0�z#5�0)�Y�����Ni6g��u5�\����#��O�}�l���G��^�O�7��Z͖�ɽ__/��0�y�2�R0��=��.�0��'Q>�����^����M�iw-��(Q]��XF�l<��I,�x��t18��I�'a"���#F?���	!������ݘ�_ �Kс��ĩ�i4
VF֎�l�b���t�p2��(x�z/j#�4P�P�I���% 8u�n:Y*�trm���۠�5�)�X�O2E<j���+�D��TUE�*N�]�K�ĥ5yM����˭}�@M��pk��T�`�"�̭`E���e�)I������jƃR�*%�5,������a8#�h�Ѳ6h��
͢��2�1?h>�y�$��^������fq��^��
$�r=BD�U���h,�i��q��l܏�^(췂���_LWܚ7���儮@_>�����^YGX�����ϋ�ǒ yW����6H�LBw�V86�<B�3w�DJ-�pP^�N����ʣ	R�o0�����M8%����m�c@1�_9��x?Ea�8��L{0�%�q�'�?�ђ}@�l7t�ձ;��*83�U��B?�~�����4
������lH��q����5�,��l1�3oO��Q2T�̢8�d�['2"����%�4�����߽y����?	7/��v�XQ����*�C�9���+�,���Czp�8^�0-�q����� 8zt�n�G�-����>||lw�e�ݸ�Wg�ml������Ŭ��5��ػ�q�/P�&*��h�{�ZJzYM��MC��=L{�A@�svv�'近     