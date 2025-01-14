PGDMP                         {            clients    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    clients    DATABASE     �   CREATE DATABASE clients WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1251';
    DROP DATABASE clients;
                postgres    false            �            1259    16400 	   customers    TABLE       CREATE TABLE public.customers (
    id integer NOT NULL,
    full_name character varying(200) NOT NULL,
    passport_data integer NOT NULL,
    marital_status character varying(15) NOT NULL,
    registration_address character varying(100) NOT NULL,
    phone_number character varying(100) NOT NULL,
    job_information character varying(200) NOT NULL,
    loan_ammount integer NOT NULL,
    approved character varying(20),
    signed character varying(20),
    loan_term integer,
    sign_date character varying(50)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16399    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    215            �           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    214            e           2604    16403    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    16400 	   customers 
   TABLE DATA           �   COPY public.customers (id, full_name, passport_data, marital_status, registration_address, phone_number, job_information, loan_ammount, approved, signed, loan_term, sign_date) FROM stdin;
    public          postgres    false    215   �       �           0    0    customers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.customers_id_seq', 43, true);
          public          postgres    false    214            g           2606    16407    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    215            �   6  x��XKr�6]C���R� �!���'���j�D^ĩd�O�]I\%)')�lE�&��X��
��� 	�f([I�F㡻� Q0��:W��W�P7�R�&�D-�z'Q�H�J�sQ�d\d�Ʌ`�/�bZ�1u�n�]4� VnTBn�m�*S��j^�{����l|/ԝ�Bƭ:g�RߪE��9��tÛ&�N��A�.5br���5�8���Ђ��D�	�F���H�\A�������8�WW��BM	D %����D�:���f�o(���	� �$��QQ�i��SG��W�+ȿP�������(�:Dչ�mA��3�16�����\������M�;OzS�˔���|C�5�1���ǰo��3�1�^F����\����Jt5e[[�Bk2<GkQ���O6�f��ٜ%��r�ð��P�B��C���3�KZ�d&s=�}��@�+@u�f���[,�,OP�9��^��iCZ���Y�2�W���h?�v?k�f:2n�ȏ/ uB�f��I�����qAI�j�.�"������ꂕU��_�c۬�7�Rj9���p��J�7�>���JBPP$=����;�,p;���Z
x9�r��	Z�6}��B���W�Hp�%���AV��!��'e�K�������G�:�[�g�=�K��`��ƨ �B~-�a�.C��kB��G9d�NٿI	�$��u0�ف�l:���\�+
G��Y�m�G���}�&����HCȾ�<��c���O�D�+$a���Dj�!JN�mT�_Τ@Jā�O���5�Ʋ1d��Y�J�#�Y��z�u@a���VpG��ӈ>Y�q�X�'��p���^�K���n���۟ß'E�3]l�J]̛V<����ط�o�m����>�[b��U�]*�^.��'��y+�F���x����t�{sAW���ϝ���0���ʾT@�kapF�h?��FV�IS��H�.#��dFU,z��P/P��5>��vג��\�w����Y`�؞Sl�r֥��.�+�Í><�o��S�[#���B�SH4
��B�U(f"e>�rw�#!}0]�\�\�f�z|���yx��pы��n��ŗ���n=yΌOP��h6�Ḭ�M���_(�g�0-�C��{̶\w�3����cy����MJ���o@�7"l��icPӉ���1z�A���I�Cm-���Q�ͭ�;�u���1TPS��S8�~1n���Gff�Qm]�ȏ�~sp�$����u��&"�X��ʔ�>�=�vOu�����TQڷMn=q7��y̴=9Y���o���>�,��     