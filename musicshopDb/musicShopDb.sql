PGDMP     1                    y        	   musicShop    13.2    13.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17016 	   musicShop    DATABASE     o   CREATE DATABASE "musicShop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "musicShop";
                postgres    false            �            1259    17048 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17046    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    17058    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17056    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    17040    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17038    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    17066 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17076    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17074    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    17064    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    17084    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17082 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    17144    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17142    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    17030    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17028    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    17019    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17017    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    17284    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17252    payment_invoice    TABLE     �  CREATE TABLE public.payment_invoice (
    id integer NOT NULL,
    invoice_date timestamp with time zone NOT NULL,
    billing_address character varying(70),
    billing_city character varying(40),
    billing_state character varying(40),
    billing_country character varying(40),
    billing_postal_code character varying(10),
    total bigint NOT NULL,
    customer_id integer NOT NULL
);
 #   DROP TABLE public.payment_invoice;
       public         heap    postgres    false            �            1259    17250    payment_invoice_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_invoice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_invoice_id_seq;
       public          postgres    false    231            �           0    0    payment_invoice_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_invoice_id_seq OWNED BY public.payment_invoice.id;
          public          postgres    false    230            �            1259    17260    payment_invoiceline    TABLE     �   CREATE TABLE public.payment_invoiceline (
    id integer NOT NULL,
    unit_price integer NOT NULL,
    quantity integer NOT NULL,
    invoice_id integer NOT NULL,
    track_id integer NOT NULL
);
 '   DROP TABLE public.payment_invoiceline;
       public         heap    postgres    false            �            1259    17258    payment_invoiceline_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_invoiceline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.payment_invoiceline_id_seq;
       public          postgres    false    233            �           0    0    payment_invoiceline_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.payment_invoiceline_id_seq OWNED BY public.payment_invoiceline.id;
          public          postgres    false    232            �            1259    17188    product_album    TABLE     �   CREATE TABLE public.product_album (
    id integer NOT NULL,
    title character varying(160) NOT NULL,
    artist_id integer NOT NULL
);
 !   DROP TABLE public.product_album;
       public         heap    postgres    false            �            1259    17186    product_album_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_album_id_seq;
       public          postgres    false    221            �           0    0    product_album_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_album_id_seq OWNED BY public.product_album.id;
          public          postgres    false    220            �            1259    17196    product_artist    TABLE     j   CREATE TABLE public.product_artist (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);
 "   DROP TABLE public.product_artist;
       public         heap    postgres    false            �            1259    17194    product_artist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_artist_id_seq;
       public          postgres    false    223            �           0    0    product_artist_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_artist_id_seq OWNED BY public.product_artist.id;
          public          postgres    false    222            �            1259    17204    product_genre    TABLE     i   CREATE TABLE public.product_genre (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);
 !   DROP TABLE public.product_genre;
       public         heap    postgres    false            �            1259    17202    product_genre_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_genre_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_genre_id_seq;
       public          postgres    false    225            �           0    0    product_genre_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_genre_id_seq OWNED BY public.product_genre.id;
          public          postgres    false    224            �            1259    17212    product_mediatype    TABLE     m   CREATE TABLE public.product_mediatype (
    id integer NOT NULL,
    name character varying(120) NOT NULL
);
 %   DROP TABLE public.product_mediatype;
       public         heap    postgres    false            �            1259    17210    product_mediatype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_mediatype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.product_mediatype_id_seq;
       public          postgres    false    227            �           0    0    product_mediatype_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.product_mediatype_id_seq OWNED BY public.product_mediatype.id;
          public          postgres    false    226            �            1259    17220    product_track    TABLE     F  CREATE TABLE public.product_track (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    composer character varying(200),
    milliseconds integer NOT NULL,
    bytes integer NOT NULL,
    unit_price integer NOT NULL,
    album_id integer,
    genre_id integer NOT NULL,
    mediatype_id integer NOT NULL
);
 !   DROP TABLE public.product_track;
       public         heap    postgres    false            �            1259    17218    product_track_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_track_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_track_id_seq;
       public          postgres    false    229            �           0    0    product_track_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_track_id_seq OWNED BY public.product_track.id;
          public          postgres    false    228            �            1259    17177    user_customer    TABLE     �  CREATE TABLE public.user_customer (
    id integer NOT NULL,
    first_name character varying(40) NOT NULL,
    last_name character varying(20) NOT NULL,
    company character varying(80),
    address character varying(70),
    city character varying(40),
    state character varying(40),
    country character varying(40),
    postal_code character varying(10),
    phone character varying(24),
    fax character varying(24),
    email character varying(254) NOT NULL,
    support_rep_id integer NOT NULL
);
 !   DROP TABLE public.user_customer;
       public         heap    postgres    false            �            1259    17175    user_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.user_customer_id_seq;
       public          postgres    false    219            �           0    0    user_customer_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.user_customer_id_seq OWNED BY public.user_customer.id;
          public          postgres    false    218            �           2604    17051    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �           2604    17061    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    17043    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    17069    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            �           2604    17079    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    17087    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    17147    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17033    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �           2604    17022    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    17255    payment_invoice id    DEFAULT     x   ALTER TABLE ONLY public.payment_invoice ALTER COLUMN id SET DEFAULT nextval('public.payment_invoice_id_seq'::regclass);
 A   ALTER TABLE public.payment_invoice ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    17263    payment_invoiceline id    DEFAULT     �   ALTER TABLE ONLY public.payment_invoiceline ALTER COLUMN id SET DEFAULT nextval('public.payment_invoiceline_id_seq'::regclass);
 E   ALTER TABLE public.payment_invoiceline ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233            �           2604    17191    product_album id    DEFAULT     t   ALTER TABLE ONLY public.product_album ALTER COLUMN id SET DEFAULT nextval('public.product_album_id_seq'::regclass);
 ?   ALTER TABLE public.product_album ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17199    product_artist id    DEFAULT     v   ALTER TABLE ONLY public.product_artist ALTER COLUMN id SET DEFAULT nextval('public.product_artist_id_seq'::regclass);
 @   ALTER TABLE public.product_artist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    17207    product_genre id    DEFAULT     t   ALTER TABLE ONLY public.product_genre ALTER COLUMN id SET DEFAULT nextval('public.product_genre_id_seq'::regclass);
 ?   ALTER TABLE public.product_genre ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    17215    product_mediatype id    DEFAULT     |   ALTER TABLE ONLY public.product_mediatype ALTER COLUMN id SET DEFAULT nextval('public.product_mediatype_id_seq'::regclass);
 C   ALTER TABLE public.product_mediatype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    17223    product_track id    DEFAULT     t   ALTER TABLE ONLY public.product_track ALTER COLUMN id SET DEFAULT nextval('public.product_track_id_seq'::regclass);
 ?   ALTER TABLE public.product_track ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    17180    user_customer id    DEFAULT     t   ALTER TABLE ONLY public.user_customer ALTER COLUMN id SET DEFAULT nextval('public.user_customer_id_seq'::regclass);
 ?   ALTER TABLE public.user_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            |          0    17048 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   9�       ~          0    17058    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   V�       z          0    17040    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   s�       �          0    17066 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   ��       �          0    17076    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   A�       �          0    17084    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   ^�       �          0    17144    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   {�       x          0    17030    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   ��       v          0    17019    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   C�       �          0    17284    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    234   ��       �          0    17252    payment_invoice 
   TABLE DATA           �   COPY public.payment_invoice (id, invoice_date, billing_address, billing_city, billing_state, billing_country, billing_postal_code, total, customer_id) FROM stdin;
    public          postgres    false    231   ��       �          0    17260    payment_invoiceline 
   TABLE DATA           ]   COPY public.payment_invoiceline (id, unit_price, quantity, invoice_id, track_id) FROM stdin;
    public          postgres    false    233   �       �          0    17188    product_album 
   TABLE DATA           =   COPY public.product_album (id, title, artist_id) FROM stdin;
    public          postgres    false    221   �+      �          0    17196    product_artist 
   TABLE DATA           2   COPY public.product_artist (id, name) FROM stdin;
    public          postgres    false    223   DA      �          0    17204    product_genre 
   TABLE DATA           1   COPY public.product_genre (id, name) FROM stdin;
    public          postgres    false    225   �O      �          0    17212    product_mediatype 
   TABLE DATA           5   COPY public.product_mediatype (id, name) FROM stdin;
    public          postgres    false    227   �P      �          0    17220    product_track 
   TABLE DATA           ~   COPY public.product_track (id, name, composer, milliseconds, bytes, unit_price, album_id, genre_id, mediatype_id) FROM stdin;
    public          postgres    false    229   Q      �          0    17177    user_customer 
   TABLE DATA           �   COPY public.user_customer (id, first_name, last_name, company, address, city, state, country, postal_code, phone, fax, email, support_rep_id) FROM stdin;
    public          postgres    false    219   '�      �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);
          public          postgres    false    204            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);
          public          postgres    false    200            �           0    0    payment_invoice_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_invoice_id_seq', 1, false);
          public          postgres    false    230            �           0    0    payment_invoiceline_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.payment_invoiceline_id_seq', 1, false);
          public          postgres    false    232            �           0    0    product_album_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_album_id_seq', 1, false);
          public          postgres    false    220            �           0    0    product_artist_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_artist_id_seq', 1, false);
          public          postgres    false    222            �           0    0    product_genre_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_genre_id_seq', 1, false);
          public          postgres    false    224            �           0    0    product_mediatype_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.product_mediatype_id_seq', 1, false);
          public          postgres    false    226            �           0    0    product_track_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_track_id_seq', 1, false);
          public          postgres    false    228            �           0    0    user_customer_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.user_customer_id_seq', 1, false);
          public          postgres    false    218            �           2606    17173    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    17100 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    17063 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    17053    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    17091 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    17045 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    17081 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            �           2606    17115 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    17071    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            �           2606    17089 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    17129 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            �           2606    17167     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    17153 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    17037 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    17035 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    17027 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    17291 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    234            �           2606    17257 $   payment_invoice payment_invoice_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.payment_invoice
    ADD CONSTRAINT payment_invoice_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.payment_invoice DROP CONSTRAINT payment_invoice_pkey;
       public            postgres    false    231            �           2606    17265 ,   payment_invoiceline payment_invoiceline_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.payment_invoiceline
    ADD CONSTRAINT payment_invoiceline_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.payment_invoiceline DROP CONSTRAINT payment_invoiceline_pkey;
       public            postgres    false    233            �           2606    17193     product_album product_album_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_album
    ADD CONSTRAINT product_album_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_album DROP CONSTRAINT product_album_pkey;
       public            postgres    false    221            �           2606    17201 "   product_artist product_artist_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_artist
    ADD CONSTRAINT product_artist_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_artist DROP CONSTRAINT product_artist_pkey;
       public            postgres    false    223            �           2606    17209     product_genre product_genre_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_genre
    ADD CONSTRAINT product_genre_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_genre DROP CONSTRAINT product_genre_pkey;
       public            postgres    false    225            �           2606    17217 (   product_mediatype product_mediatype_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.product_mediatype
    ADD CONSTRAINT product_mediatype_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product_mediatype DROP CONSTRAINT product_mediatype_pkey;
       public            postgres    false    227            �           2606    17225     product_track product_track_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_track
    ADD CONSTRAINT product_track_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_track DROP CONSTRAINT product_track_pkey;
       public            postgres    false    229            �           2606    17185     user_customer user_customer_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.user_customer
    ADD CONSTRAINT user_customer_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.user_customer DROP CONSTRAINT user_customer_pkey;
       public            postgres    false    219            �           1259    17174    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    17111 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    17112 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    17097 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    17127 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            �           1259    17126 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            �           1259    17141 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            �           1259    17140 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    17168     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    17164 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    17165 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    17293 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    234            �           1259    17292 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    234            �           1259    17271 '   payment_invoice_customer_id_id_ad5fe16d    INDEX     j   CREATE INDEX payment_invoice_customer_id_id_ad5fe16d ON public.payment_invoice USING btree (customer_id);
 ;   DROP INDEX public.payment_invoice_customer_id_id_ad5fe16d;
       public            postgres    false    231            �           1259    17282 *   payment_invoiceline_invoice_id_id_1af82a23    INDEX     p   CREATE INDEX payment_invoiceline_invoice_id_id_1af82a23 ON public.payment_invoiceline USING btree (invoice_id);
 >   DROP INDEX public.payment_invoiceline_invoice_id_id_1af82a23;
       public            postgres    false    233            �           1259    17283 (   payment_invoiceline_track_id_id_fe911c6e    INDEX     l   CREATE INDEX payment_invoiceline_track_id_id_fe911c6e ON public.payment_invoiceline USING btree (track_id);
 <   DROP INDEX public.payment_invoiceline_track_id_id_fe911c6e;
       public            postgres    false    233            �           1259    17249 #   product_album_artist_id_id_dd69c06c    INDEX     b   CREATE INDEX product_album_artist_id_id_dd69c06c ON public.product_album USING btree (artist_id);
 7   DROP INDEX public.product_album_artist_id_id_dd69c06c;
       public            postgres    false    221            �           1259    17246 "   product_track_album_id_id_16b672f0    INDEX     `   CREATE INDEX product_track_album_id_id_16b672f0 ON public.product_track USING btree (album_id);
 6   DROP INDEX public.product_track_album_id_id_16b672f0;
       public            postgres    false    229            �           1259    17247 "   product_track_genre_id_id_72d4b97f    INDEX     `   CREATE INDEX product_track_genre_id_id_72d4b97f ON public.product_track USING btree (genre_id);
 6   DROP INDEX public.product_track_genre_id_id_72d4b97f;
       public            postgres    false    229            �           1259    17248 '   product_track_media_type_id_id_92c84620    INDEX     i   CREATE INDEX product_track_media_type_id_id_92c84620 ON public.product_track USING btree (mediatype_id);
 ;   DROP INDEX public.product_track_media_type_id_id_92c84620;
       public            postgres    false    229            �           2606    17106 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2983    209    205            �           2606    17101 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    207    209    2988            �           2606    17092 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    2978    203            �           2606    17121 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    213    2988            �           2606    17116 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    211    213    2996            �           2606    17135 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2983    205    215            �           2606    17130 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    211    2996    215            �           2606    17154 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2978    203    217            �           2606    17159 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    211    217    2996            �           2606    17295 H   payment_invoice payment_invoice_customer_id_d6863c08_fk_user_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_invoice
    ADD CONSTRAINT payment_invoice_customer_id_d6863c08_fk_user_customer_id FOREIGN KEY (customer_id) REFERENCES public.user_customer(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.payment_invoice DROP CONSTRAINT payment_invoice_customer_id_d6863c08_fk_user_customer_id;
       public          postgres    false    231    219    3017            �           2606    17300 Q   payment_invoiceline payment_invoiceline_invoice_id_9370bef2_fk_payment_invoice_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_invoiceline
    ADD CONSTRAINT payment_invoiceline_invoice_id_9370bef2_fk_payment_invoice_id FOREIGN KEY (invoice_id) REFERENCES public.payment_invoice(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.payment_invoiceline DROP CONSTRAINT payment_invoiceline_invoice_id_9370bef2_fk_payment_invoice_id;
       public          postgres    false    231    3034    233            �           2606    17305 M   payment_invoiceline payment_invoiceline_track_id_d6a8ced1_fk_product_track_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_invoiceline
    ADD CONSTRAINT payment_invoiceline_track_id_d6a8ced1_fk_product_track_id FOREIGN KEY (track_id) REFERENCES public.product_track(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.payment_invoiceline DROP CONSTRAINT payment_invoiceline_track_id_d6a8ced1_fk_product_track_id;
       public          postgres    false    229    233    3031            �           2606    17310 C   product_album product_album_artist_id_36259af0_fk_product_artist_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_album
    ADD CONSTRAINT product_album_artist_id_36259af0_fk_product_artist_id FOREIGN KEY (artist_id) REFERENCES public.product_artist(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.product_album DROP CONSTRAINT product_album_artist_id_36259af0_fk_product_artist_id;
       public          postgres    false    3022    221    223            �           2606    17315 A   product_track product_track_album_id_0fde8148_fk_product_album_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_track
    ADD CONSTRAINT product_track_album_id_0fde8148_fk_product_album_id FOREIGN KEY (album_id) REFERENCES public.product_album(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.product_track DROP CONSTRAINT product_track_album_id_0fde8148_fk_product_album_id;
       public          postgres    false    3020    221    229            �           2606    17320 A   product_track product_track_genre_id_651f82f8_fk_product_genre_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_track
    ADD CONSTRAINT product_track_genre_id_651f82f8_fk_product_genre_id FOREIGN KEY (genre_id) REFERENCES public.product_genre(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.product_track DROP CONSTRAINT product_track_genre_id_651f82f8_fk_product_genre_id;
       public          postgres    false    225    229    3024            �           2606    17327 I   product_track product_track_mediatype_id_a0369d5e_fk_product_mediatype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_track
    ADD CONSTRAINT product_track_mediatype_id_a0369d5e_fk_product_mediatype_id FOREIGN KEY (mediatype_id) REFERENCES public.product_mediatype(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.product_track DROP CONSTRAINT product_track_mediatype_id_a0369d5e_fk_product_mediatype_id;
       public          postgres    false    3026    229    227            |      x������ � �      ~      x������ � �      z     x�m�I��0E��)t�Fk��5j�p�ؒ!���#U}���U�>P�,Ïn,�˥�M�"���ʰտ���X����kr��	��[Z=�-?���a{C�V�i��2Lc�HM�`�;���c!hؓ*:�w��<=�&AZ�����9����)#�R�J��Z�K�CC�2���Sl�@kw��8����<<���4��_+֯G
-��wby�"/0��^/<�,_���M��-�zI�W$�*V.���S0�vŠ'�ɺBd%�&�.�t����g�2V.�ʇ'�˸�	hn0>.�4����y'Ңu�]��B@\�3 &� 	�5�ݼ�ά@E�]��\���L�a ��큚S�n7]����K� ��3�R-L���4&�B�m繦��.C�1/�Ŧ��q�$���a���٣di@M�:w��P��MEl\���ea���X2�\<����o��D�������"�˲��#�	���I��ժ���5VmoŶ�FOh����x�^�?8�',��&��[��p���      �   �   x�e��
�@@���S��](���aZT$���&B(:�I*QO�вs�����]Ǧ$m� ���;�=��Hr7��VG��0$����V�QﱍaN]�R7S�9m���B�B>R�R�A�������liZ��$}k�	�����)_      �      x������ � �      �      x������ � �      �      x������ � �      x   �   x�]�K�0D��ai��.lBj�E�� ��D�(���i�<�9���Lf��W{@!���9a����ZpXCU<@�ɚfs!�x���ρ�E�P�rl���?�j��7����F�6!tn�F��'�m�ć'���c[�^�C��h�Dx�!���Wq      v   X  x���ێ�0���S��j��8$�YV����D�4���o�BʶTT�������L�M=�0\ۢO  ����]�~��@�1g�ɤ��7p.�@����"ET6�ĝ*_�Wi �<W�lٜC��j��j.�)�N�m��1�wL(��8�����;��W���&N�̨�=٣%�|�Nwl��b�&
=�T�I֕C�ٶ�*��S�	a+�cˢ>�m���3MG��ic.E�|���lf�� ^���-T�/T�L3!b�S�~�:���r{d,��A��,��}m��`'�/8�Et�^5��ҟ��t�m$��k:[}��/���aZ^��7M�X7���f�|�E�fyyP.,��u}��H�e�0�$�cd�횟�jT_��$t�au���>}���*���T��R��1�c�L�����F���$��Va��H�>��W�������ll�	D����(�Y�~!�$�����������!n>�����*P(-"�G��e���Y�"�:Ļ�Ȇ��� ����¤R	��& �f�g=2�O�ʠ2�S�׌�-Cʊ2�g1�7O2�#@�B�RK^�����u��      �     x���n�0  �g���/���P�J:"���\��!��k�Y��w�l�E�&~�vJ�@ ����� _�3w�r��˜x��z݇���Y�����eqx-��d�_Ql�Qȓxt�W����"R0��j�����8��<"�C�~��ރ��^�E<M��.��l#��Hʪ�$YK;ж9ۻ�f�j7��cr?���{�,X�_;b� �]������3�n��S#&8����S�e!W �S��B!Kk� �@�4���E�4�_T      �      x����r�6���ɧ�����{���N֖��c��Z�H\�f\�{���np��pt�\���p�n���Fd(�y"��B����!�*E��ݮ�����a�{r���*�������g��ʞ��C���U*�a�9z$~��m�n?��w�ڮ���W���1W��s�%#d*S���-�Y����y�}�ev����s.��]wx�@��Ε�oA5�( ��yS\�˞����v��_d�ͦY5�����*3��t(�J��Y�S��I/ϳ�n�3�D�P��C̷����k��8� ���f�����#���A&��:�pb�.��}�ow�fw���u��3DU�6Y������>���f��Է����p�޶YU
AӞ)�O	f��P�^7�m�b{�v=��~{���Wms�ϟ�R��Q `N���A(�����7n�:��ox��/}�n6+�L����h@z����д����jk��M�oW�ߺ��j��]AQ�xNQQ��c�a� �8Lr��	h!������m�Q���>/��;�6�ۮ��]�g�P�	�(h�aL	�D��]��n)j���wD�n9)Vٻ#�%>�ivh��ʡ�e����㑣	�~�.�~�m���J����A{PD�B��ǉ�n	r��Bj�H
�*	�W�@^�X�I/�U��9~�����"=K�C�a�uΡGC����?�ݧ6{ެ�ߛ�dW7���B�pYR�Hz<�VT��hQ��p������+��i��%�Ӻ���~"��>W<NQQ���P_Ϥ�*��b{�����[m�/�M�e�~���� ��YY�3�ˆT�x����R���f��;���ݺ���QzL�-F�p�����o>5��z۬蕷�k���~٬�J���R����oiQ�D/�KO1�R��EY��=�?w��-}ɲ�n�_7b޼&�j�����zF�B��A�L&�Cߴr$�oI% �g��z���a���fWo����peeF�8�B91��WMq��6g�%K���v����m�?М3*i���Msh7�?h��UO+VmK�RxX0�)��X�$xZ�--U�4K�DG���������}�lvw}s{�/ �����a�o�U�}�]���Y�v���'�甞aTnQ�PrI�8(�弦!k��ݶ��h�鯫���ٴ]�ͮ��J�P	V��cz�	�{[T��z{�-��ߝ�k㧟GV�y���EA�Rϰ*�w��v��L�oi��Om�]\���V_�fb�������>��'k�
�%B�4K�4�)�+���9�˛�-k������y�_�Jx�)YE�Ai�������-t76M��u��wv�u�1C��%���՘��x_Қ�;��~,-�������ܮ�IJ�'�+9á�u��������5��;x[ȧVYd����"w��N��V��S�uJiG�jE9�n����Y!i���izw���?������+�[�I�S��lV�]j���׭���.~:lV͸�*޵�}�f���*{u52_�_xˋR��<�A=1��S�׹����������7|]�~mH��b����^�<�7��ͦ���e/ݾ�Z�(����%x^+��X�J�� PRK�b����@�Ͼo6��C�?P�=�l�|�Tu�/�dm�=��S3��E�e�a�D�����fbBo�l�R���^IM���c��o�Z��?��z��;�WΙ��j�w��G�P�v{�P��w�n�6B���G1/{�e�4�I�Hi)-+���X�<�Ąb��\�b�������1	h6�y�z��z��[w��m���n�
Ғ��C�]��~�7kZ�0ֽ��R3�W��˦��а5��w��!ɏ��Drd�����[L��)�=�='؃���f�ҕ�A��,p*(6r]{f0`ɩ��B��8&^@�6x_ `bF�b��^����3�7�w�������*v_�:�`�&7K�SZw���5p���d���l
�O�u^�'!/x�����I�@i�J9T#Q�a��*=fY��a�J;N
Q[vzG���81�[��i
�R�.�*�����gh��=-���Q��(i�i{N�fE+,zލ�����08'U^�2Q�(C�Z8�W���K�u��
��H°=Q�#�E��y-
�/u��i��}e�����1~�2�ß��t�]���p�3�������8���,�����j>�J�`��A�d�i�8�3U��� 2tN��Օ��a'PT]{Nq^D�^;:#�Qs���Un���A�Sީ8B��PPо��k�V���m���/,G�_���R������s�ۺ�-��/L�r#=,�uS�nF9Z�Y�L�YAd$X�	�=��T��d*�"e���_7cȉ ^]��]�b߬��4���x�T�.�~��Ί�vW\6��?-� �'�Y���� P�.zz7]��9��%m��3���}�s|V��]6� ��Z�$��X%x\0�ҥI��Ri���\v.@H��p㳏ϫ���)�y��<�1i��nM��[�&mj�e�
8=�U������^|�JĴ9��*�
�"�P���=)�L���0�v�_aخ�k�#�QK�.���yAl�o������4 -�zzS����\�sK�t�O����#&��� rU*�yX/�U�e%�P��X�6}�	�*��7N�#@�A�o��i�5@{\�̤������õ������&�?e����BO̭�-��涹�o�gg�C�#���ή8��־L�{zӪ��sd��F#�b
������@�����L*It�y�A�fK�>��1��'q�$o����q��t6: �cN��.HE���-7��hC � 󧚘0�:�E{���T�^���q��k����ĉ0l5�)%Q�%Q��ǅ�������H-R���=)<)�s���VHp��X.>ٜ�<��h2P�xc � 9�F=1��Uv�V$���-�}B[�$K�#VG��Q�=*��8��V�d�A��a�b�Y;T#I��&�4�FI�O ����LLjz���;3��PȅP��S�I�Pe5TI��dO��)�?)��S�vR@������0Q��ǔ�^�r؀ U9XXn�Z����O�3Ȥ�*�*P��{�4mUV[K�? �Bǈ��bX��6S��b�~�/<�[R��l��$��j�D؁(�������r���
��
J��am�+��e�aA�Ċ��bY�5Q���k������I�oT6��'Se�	�XoB���������4�`�벐�@K�z�Jxe�X+�8MUNm�S���)�d�ve���`U=*�x�pݾx&"(ŵ �Z�s��uL] r] أ��a�+��+�����A�ꪲ�j�Տ� pN�AmuО�0D������=m?���!K�=og�ԋ'ɤ 6)����XP��ҋ�pz]���ʣ��Y*��JiU{t=񚧭�U���HYb�����cOOD�y(�1m�.�Dz`=�)<`��$D�$�Z��⫻��ت���%Z���֥ÆӜ���_�=���X���<,��ŗO*N�z̐�{4qVX��6n.#�	��	��JB��{Z<-<g��Je�Ҡ�`X��(kz��%=�47��n�Q��[|b�e���=�X��%a���p��2S�@�J�hr0�ÄӞ�����k�ʜ��Ä���z�b�Ű�<<͔�K�9�bL��{6��(�ÄsU�(��j���V2��!ø�W̚��� j_CQyl1�6��EE����=J1����Xw�]@5��N��� 3��R1�R1��%U��S �����5B�4��@���c/�B�x��br��M0&���t� �9@�4�˄K�P�p�������@�_ ��� V�dL��!��1��%1l� �Æ�S�i��#��1u��4� �.@T��O���X�В�t j��'J�.XyN`=�+��
���-7E{"�Ʊd�7K�7���cnL�Ɖ��G0p���pѝd�8�LlȁRzX0�� =  R8��ʓ����V�d�)ag��a��@�S�������L����l �(k���W�Q�bz�%<.��(y�mP�焕��z�Y�zh6���hv՘S���0��T��Nnl�*2����Q�`b�Uy�)u��� ��Ӗ���V����)�	1l��pH��MВj0m3 N�q���R �0�[t8��n.�pj�fb�N�X.��h��pR> ����Vц��FM��1x��8N7L�/��}p8��<K ��pPn�����gF-f8	}<P���Ci�h��FO�#Jƴ�1-='�([ð�������*m' ԥ�M���� �Z Z;Lh%][F]͠u��=,,�MR>�W ����wLP+mժ�v�mh��Q�����J� +t��� ��+�p἞z�+5C_����'�)��ж�J{�ɝr�ծ�������c��jL�r��^BY�m��q��:G��쾿�C�%g�a����k��`F���v!�ZzN`8%����U+G����X���AODHj�#��Z;�ą��n�v�_W�Ng�eg��Zr/��������Q'^2�V�8`)�����( H�o���H�����-�QNGR�-.W����~��z�'�b}4��'��r�����1û	�����fL�z"��r϶�B8�ĕ��f��H�35Iw���VJ�)�'ђ$��eQ
�y��i2)J�	c"��0�tH1&������*c^�xz�q��)����ً�R�l�%g	��f�0�,��Ӗ7Ա<	�$���ok�ˣ���7"++�R�*�0�j�v���q&F>�6�={�*����R�6&������B��9���1M&/�ě �6F�as��Cp�0�R����ӈ��}�e�r]2%QyL'�zh�H,=�k_ڪ��2U�g~�>$V���vl��G��&nP�6��=��8���v�YJ1Oj"%xT0��5T�Æ��	�g;���[~��M�7b��Ñ� [��`����[~��Nb3]��p�m�Si�쪳��C]�.D�4<!�Xۦ@g�6,)��Y��3o9}�&�'��5����.b��p�-�o�$��eA*����_W�J����Tc�ȩ4J�T۽@*�qa-L�j����`r��T������;�&RO�'�/�����S�%�`;��rL�u؜Xo{�Rz�����VK�'�)��)e�p��H�Xi[	�R�OXfA�� �1�ʉ�J��,�z�����,��N��J�Zۛ@j�'��V5x�iަa�E�ÅG�	��k����«$�f��"��$zb~�]_���a.j"����~n�v#����i+���������6�ʂBI�6@V�S�_�:��/{՘+���$�a�ΠNj"+�я�cL�+����>�1m��*=<<�2f��e*�@Sk*mKYU��'y`��jL�zb�/5����7�����?�d�<�1�i��5z�d��0n�6�t����"L�p@�ʱ'��%4�F=�������в�3���!��<&�d��
d]{fRI2��L�������pk�5k�p�0R�^�Ҁ�NDIR?a�.�1ul��o7w�����3��!�(�,�hu�&Ҕ�(�y��@�=v�!j�Ac*�����jL�j@��q����v���9&L�Rvj�"r��b��D	�~�I�n*�������L(�g=��i؁QB9h!i���0�(/��E��|Pb�	����[�JT3��f JԞrʯ=)�?%���~�L۟&��?���[1l�( �� �+2��8@G���v����<�/@�Cs      �      x�M�[�츮C�+�a�������	��7ՕK�	UZ��_���_��_s�7=��#�U���?�o����������ʧ�_)��V����W|��׍w��~~Ŀ�ř�����ҿ��;���G�޿�ſw��������>��;�W[��|��.Q֯�:uJ��K�[�-1گ�Y�X�׊��~�^q~�fp��)���_Sզ�y�6�,z_a�z�D���
;���1��J��������3�X�X�yհ\OY�}��~���=e'��a'B]���U61�=5�_u�o��,ʔj�EYWٹ9�S�\U�oF.�����r��ìO��lW������~s\��oΫ���u�鿹���~�\����k���K�#��S�n.ݎÊ\�_��lE.v���[��[��05k?eQ"�������S���S���Sv�G.�.O�\�~r<�{^e�o��,ʖ�E�\���;�U6K�<��^e�崫l�Nʢ���>�)�����r"��7lϹ
������d��*I���d��VN�ׯ��R�q�����+���o]�Q3oR�
K�nVӎy)7�iť��մcR��Z��v
���V籁��RZQa�(΃�<%ׇP�����a��$"�'-T\J5ת�*���I�p���D����Q})j^I㈬�I��}%�.�0��Q�)a4�J�d�bJ�������"���0�Q�MnLN�e�bG0*3d��}WZ!*Q�!���ϔv^E���ZT�FCZ1*Q�!��,�f��������oV�
R�7��c������Zm�{�Ś�Y��cW_�rM�P����1+*Q�)y=�P�J��Q��P�(ڔ��Q�!͇J�mJ�u�(ܔYտ��_���r#�~�+1�Q�q}�T����`Q©1�Q�][�(�8�>�nrjLQ�r�n2�95VCQΩ�n�(�Ԩ\QҩQ���S�vEYwm'Yvh,��~�a=T��K��_~X����¨D��%Tp�F��5d�Vj��8RQ�qQa�T�Ի�xQ�q����ܻ��Q�ql��F��oC���i\�Q�]��.*�k�&���g5j�k["F��un��tO�OğO[�a �o?��$m񴬆�BTKkh�{5\ ���|W-��'>ߟ^���Rڪ[�r��[Ւ�4�\U�nh+pUKoh�pU�oh+qUKp�UxM��/?��j}�a�U�������ٸ���*4��I#�ȯA[���-^�k3'���ݮ�����7�F���x�;P��J���q�� \[�p���$򳰽�ק1�a�-~����6��������v҈w���X�+����ƚ��[���vAm���_PW��5���W�1���հj�5<���_Ӡ��Η�nu��p�̔��/?��j8�a�|��4�j�w��|�<0-�2�/�8����5�õ��pm��?\[��L����p��I�x��8���o?=/��_�V_k�5�3�õ���F�������F�q5֒5��5⭧Q�?p�,�w�5�+�������F��pm�7���/���/���/���/��z^~X�����
�}/?,���������v>����{�=�i:�[���|z"^䷡1�N�O�/�õ���e��x������4���pm��?\#�|� ���r㫎�������/I��m��j�o��k��Am�O���|��F��F���`��?�1_�ԫ�>O[�k��V�Z���^V�Z��k|�Ӟ����?�����j��[�O[�km=�������v�����2gK	��1��ܶ��?\㫧ȯ��뷅�F��_N���׈��F�}u�|�X�4m��pm?�Am~��?\[��j�����"�eߑ�������w��<��������_�է1���-^��ـ-�l��?�1_��v@M����O[�k����/����_�����&m�_�5����������m�����������L|���9���2m�P�x�,|A��7�õ����M����-~�5�o��kċ/E4>���������pm��?��I�I[���6[��������B��4�e��k��O��
�p�=����Am����a3}L��+>ߟn��x��_������?�'��O[����V�z��տ���_/5i˯��������_//���#?���@��oAc��4��6�������ij_�ק�u��k����<��/������ϯ�1�~z#�I����x��/��z��|������V/{��kěOW�[O7��I#�y�7"?��&�;�����ڎo��տ�Am���P[������_������?�����j���x�a�����>jҖ�x�a���?���R�"�m��ƽ��o@[���/��u����?�õ��pm��?������I��GҸ3����p�x��\W�;�7��wfi��*I[|Vi�B!����]�x�i\?�p�F���B����ژ�u��|��������iԿ]����A���A���A���A���A��=���/���K�5�_����_�������8����x��-���X����P���X�'��'�����i�φ�?5��4~�=m~9�?\�.�H����"������]�������m��j�������v���h�/G��kċ��i���A]���tk���V�F��տ�Am�oT?�\��i�������:���}�y5��O��O[��<�������O���a��i�դ-�������h=i�����h3��2@ȝ ���/���A�_��pf�#l$ ���pS8�$ �*S�4�6� �z��~;�q�t߻� v�ݨv`Au�� G`������k���5�P��	�uݺ&�qݽ&��8t� 7�u�V�J��;��ܜ�%�����l��c�L�<3e���)S,��m[��_A�� �au�� �R7��v4,"��s;��|�`y�n�E7�	p�u���*����M�n~�F��n~���S7�Mٯ����I;���b��گ��踲!�|ҦXw�Mv��O"Թ����n�,OZ(���KF��Mn|�_�B�;�(���{�жp�]1�~��Cwĩ�o�8���{��c�~��������_z��2���i����0���M��4�Q~���n�S[<�7ð��Mפ-~iI[�ҟ������6=��ϯ���I#�y���~I[�����{M�>_����מ��_�Ә�:�ވ��F��4滞���E�-8���4�է�.�֞n6~�O��a�X���'_���┭@/�W�mEc�T�-���;ؚ���8_��7Zf�u?��'l���;N��2�&Ԗ��Ď���cz'�x�Ճ�A��%m�e$�8��j��]Ov�;���=AO��H�Ɠ�P#�zz!�N�_��E�o�=P��������wT��E�閴Ż{�L������o>���;�Lc����]}6�wW�}��2��Wwg�il��{�Lc���e����؂%è�9h��/���M�4������s��-���Í��_~�O�a�%v�Ly�]���2eԖ�\îӉ�W�A�x�o����i\�rjl2���x��A�y�4����'�0�p��Ԉ7�F�����B}�@c>�����V/������O�����v�,�5⍧�N�����٭�7>����ÒP���/g���տ%�������V�����ߒ@�����(����_~�Ѳ�I��`#���K�au7R�����4�~���Ԉ����1j��?�%�x;i�S~��X���?�������X���P[<�tG<�L�ϧ1��j��OO�����?�-��ڮ�%���x�h��K��q>L�� 3&!��՗,��!����%q`��E�.����%!�B�d$v寑3�R�F�k�5R�X��2�jp�M0���d'�F�XY����㒣���R0եc�j��F��8@Й�F�8<�|��+𑓀9钳8�Qd-,������ࠗ���	`��\��Qf���b��0    �$�kLC�� �q`A�28���{�f0����~�hP)�4(���Jy���Ɓ�.��rq�nPN��uR�X1��2Œq��)֌K��+���LWV�v�S���ͮ�-�q�(�0�����1����r���-�q�����`�� ���r T4x�'jC&DPm���C6D�t&�te��;���'*/B-®�-3"�ʍ��-;"�z��G ��~���-G"�z�eIVO�<����)9�L[����R�XW�2��2��r˙Ph�gh˚Phq�f˛Xb2'T^�>����*�	`yȟ�(2(}9�*�B��^�-�"�������G9�(+���;U��eU{ˣXy��Q�QV��<ʁ�GઔG9@Й �<�� �2=�Kd�A��bȣ
�M(	X=��(��[E`�tˣ��ny���-�"�s�(���3�z�g���J�b��W���-��N���(�N����Q,1y~I�Q�<��F����4�@u��X�������p��ŸO� �~ȣذ�(��(:3@Pe��S���(L�<ʁ�"�"@	�G9���( ,��<� ל<���Pq�Q8�~ˣ0��(���^N�w�QVO�<����Gl<-��zz�Q����GX�8�L����VvJ�o'`��|'�T��.�t�Q��>G���G�N$V�G� A� ч��,y���2@Н�F������G��>"�r`�ʣ��8�(T`k|ʴ�'f�dy������$�Y�G9���(��<ʁ�GX�=�(ܮž�#�"�ʣ�}y�A�;��lXy�˒GX==�(<�%�"�rqz����S�X���2�����)֧G���إt�Q�_��1�/KL���X�y��ÕT�;��<�ȣ�(�(:3@Pe��R8�Q𑓀Y��G9�Q�Q,�<�����G��yk��� &YE00����G`��Q�$�kNE�� �r`A�Q�����G�%�G;��(��GE`��ȣ:��	X==�(��<� �TE�r�S�X���3�)�S�X���2���ȣ�w'�<
{FŰ;$�L�;��r�z$�s�ʴX��G�>�H`A�� ���$6U�t��A�#+��aw�$0��L�	�]�Km޲���L���|�d�F�<?)�"9�<����ʄ�w"��O&�,��vl�7Ri�#�"�xDS�E2��,��%}�,���eZ$x��k�>G�ᓖ�|�	r�)g,Z����jŷK�౱����n5���o�2��6C�A֙	2�ىY��5�3ad=��g�,�'s�gbK"<7dbNY.v�9�g�l��O��ǜ`t���9��3ad匆x�9A�I�X�wS8�ȧ�L��D#�Ly&£�W"��w���S8:�d�8�Kd��%���k"x��ӎ,s�$a"���T�27<����H:r�����O��9��H���'�#�q��Y��*<���'1�L�	2��Y5��uC6焑��a>������� ���	��V���82;����.�#��#�s��3F��w�����w"��� +L�	����a{Nx-��9�u���G"��a}x:�}<:{=R8�{'Rpn�	�9_"�ϧ$��|j"�ϧ%��|z"����g'�6g&��|V"<��~��>����C�_��[�
�(9A�<ǮA�����g:��0�r��'���	�Z�0�΄��36�uv
�2��J���� 8n'��.$��unp[ f&�ge±v"���Dp,n_'��� X���]�	"�� 	j��1�m@�GGmH8�U��f4�� �`>;��dÅ�~��v A}��HP�o��bP��\B��H
�9��;�:�! A}��Hx�Ս {����܆vF���I��-��`=]ngw5'`��n'l912a�	#G���x��W�~�$�U��X�c�i�DV���m]P�u��g�%��1�ı�J���O����4{j����4�l���z�l^o�]�v�_�~s\͆s>��f����Ǿ_V�2 @7u3 `�Z�4pP?��$�K���:��X/M>���|�|3��S� ;&�L�"~� ���@?lRR�(�6��0hdZ�-c����@�;�r@Py z~����l�%G�$�� �	C] �3ଟ� ��&��x�I��[�i�cV�L�� ���ۻ|�,p��� B����X���z� ���>���B��e�pJ��.v5> ���E��q����c�#Vk�v�`+e:�:��ȷT�ο�6r-�"�"@Py 'H�e��G��z 8�G��Mufe=0t'���t�u��:!8`k�� Zg���!��˧ ��t^0xdR�L���a�Ep
�P X�){�ȟ PJ�� �T}PL��`��L 穬	 �B� ���#�/S�n+j�@�c+W�ٟ<�eJ�bXy �\��/���A#S;>xȿ�K��r�ї7 �̩��bȝ ?����'�kl�	0�25�;��� c��mJP��2��ʣ xUʣT�� ���L�y �P�ŌZ'��ʣ XO�Q ���nQ8O�Q ���( �Sy �Ş	 ��2�<���t����汕G�Ÿy�ˣ�b�ʹ�>
��<ʮ��k_E����]�hP�K���AE��;�L;�Bg.yT�3U��%�"@;.y@a篖 ZrɣT�ֿS���+�����$���( \�j�@�kN��)Y{ W�P���+Ƙ	�u�ى���ɂ�T�Yp���n�6�v[�����۽����DPW[��}Z�� �s�a�]q�Tad匵*[�ɰ� C9J7�j���ݔ���6�#�r���ZNyf���[�x�ȸ��S'�.�"�y#�r��2/���{�_
��ɾH8��/'k&�}�V"<�0'�|�E�AY.R��N66����|���*##��j�ळ���熼�dp��*��68Y���%�ګ�NP[Ժ���Y5op³n����U'<�25�J�"Wì��[Q� �P97�^26w9f���9�X�6'�,ss�����l��9�V"���L8���eq$�5xࢤm�LM�3/�AW��6A��|���BF焑W"�Neu$<:�:'�,�Ù�yt�v$�U��d�Ɩ�����Y�G��,�s��Y���Z@8a}�둠ڨ��g5�p��N� ��>����~��y��\��ZBA�I��*.��"#Gθ��٠�5D�%t�Ȳ@̘Dp�9ثR&脟�L��&"�Z�Fޙ0�rn�Ŏ�_&�#$��8j��Ix,�$��G&�<�ё:ad匝�<:�AΪ|��=�D���f��p���FN؋T>H�v��Av$��NIؔt%¾�-�̕qo)g.��V�	���3��m:|\Qs	��[t�6A�Q�}P���F��PIY9�ۤ�|v&�$�sC>��僨�g�|���S-�.t���$�}.t�ȑ3\b��΄qN"��G�'����Ev����Z�:Ad� 	��|�|�9õ��|���*$�m�.$A}��A���%��.$A}��A��.$A}��AV��sF}���\�~�k'����I��]>�X�� 6)�]�:A��A�[�[�*�0�rFG-�Բ�	k�|�	#�LY9c��� 	�|�	F�����:Ad��FV��H/��p��N8�~������C�|�ײZ8�u��A�fX>H¶��A�³(E�-�ƙ����d>;�g5�p��>�K�YM.H�~V�'��jt��F�.��>�م�L.3�\R�\?�����~����¢���^A��A�n�{�� �|��д����%t��3F���
ϛ�!t�O�L؈�{��L@&�,$�_� vK�Me�I8��A'k&����A��F>��:Ug� �,$AWo|�S��|���*$��R�� �[�1��ܐ���a�o� 	�v�IP���� �  gّ�H9s�<Fʙ��1R�\?�Q�w� ���J�bc��8�΄*gt�bݐ�����i��|�	���LY>脑#��b0�̄�Z��K�|�	�:� �|�~���v��E>H���k&��¶�#��F^��:������ �|�&��|���*$��k��p��,$a}���>���|���>�IX��$�6'���|R�\?�Ն��r��Y7�ͨo�S�|5j��� C� 6�,o{�3ad�����M��NШ^>H�S|�Zߥ#t�O�D�*P'� k%���A'�����^��AG>H��ԕ#���G�Fu�pRyd�ȱ���2�ʄ�c���闂�pV�6L�O�#|�@��r��<�	��C �@9A}������M'N�J�F];��>�o���W|��>�w���A|���Կߧ���Nx���{�[]<�0�
�@��΄c�Dxn�A��A|Y_ϖ^9�T����	����myf���]�
fg�8'�ʗH|�����GD5\����GO�G�5�]�Y9O�?��}wg��>[����	곺~��g��p����NP����	곺8A}V�'�6sf�����Nx�E{B'��3:�q����x�D�B܄1�ѣMad�
q_�q�=�UaF�k�j�
��
���D�� ��3a�ș����m���D�� =Z:���[&��{&������^�g"�y���	�ډ���EN�b�/^�z	�S���	"�$��z%6Z5�������r8���s��>�3��9��>��������3�oh��gP��K�	����8A}V?���Q$�I9s���"�[�#k�����Y$2�K;
���/z+�D.ʙ������	�*#F��0�rƦ��8;~�d�����	�7��D��9���o�(�:�3_G&k&�w����౨��s%�K��ĖO���=��]O\w�=B����Q��{���{���<����+g���^$��]W+5!(Ȱ����ڏ8@����[��?B���?�;��A�f�	���8`bJ�_R�mD_|=�2�� ���U�*#`Pe���1���J���xy��T�F��2��/� ��d�F�����}Q��4]t�	0�y we�}eB(p
�K����%�<��( ,s� �"�!��X�G*�$�`һ� ��S�G�u�����/S�4T��T/��+���7�y7P�G ��)\��]�^�6�	yȻ��� �ʹT���F��	�##+���!�"`��@cPe���a���&Y�G�\�+ X���`�������t=�T��?Y��B�!��G�G*�%V@!U�V�R��#���?B�׸ʠ P.�� �T�GpJ�� o������`g7��6v�>���8@b2&+��Q���1�2�h�Q��G9	 �����[S�x�#bț��� <P�E�D���ɠ�i�a�'��dY �'�"@�( κ<� A�Q�"����<��A#ӎW8�0ȣ 8��( �PN�z��#���?B�z��#���?� �ˣ PO�`|��˔_1��O��2�>�!ౕG��q#���`�����$&���ܼ��Q�L�Ze�q�QV��ɣ:�ɷ�}	�#�( X���8�(�( X���8`Pe���˽����X��`�κ<
�W�<� A�Q <�(�Gٹvx�Q �By ��?B�zz_t��Ő�?�-V|�PH���ʥHXReS$���)'H��DXU�H�g֙�������
W7�	�|�6�Z�) �3�2��(jFd�Dθ��9��I��q<�'Ր$#Gθ^�ȊZ�8)����˸�`,9	�[mI� ��� ����a��H�X3�g�&	��;���'D�����?��d5(�9>��%A�?¯4ԣ�	����8A�U�'���DPwէ�	
��8��:�f$�,jU�/�l-��rΨ��VB��ڕp� 7�_	7�6��a��y�����9Ad��5�k5-q����%AY�愑#�ɍ��3���ʄ��Dx��ߜ ��	"���h _Ծ�	g^�c��HP���$#�Dx-��@��V� �|A�Vn��1�cℳ*�#�|Yk����HP����	����8�K]�x$(�jg��Y�LH��UC'�/�M9sɫ�&NP���$r����F<u5�vRަS[� �PއߏKc56	���ybC��9�X�?'�,t��r@�Q{� �����Ix���0�N�~!��� ���߷�novW���	��|���B>脑G"�N�Ny%�.��h���	^+�n'N�"Lu;q�W��ۉ��R�N���_x�n'N�>Wu;q �I��Tu;q����3�U�N�L�\R�XWu;��clī�v���|���A��A\X@Wu;qr9r���.U�N�p��	"�� �|W���v��j��.t���Ny&RY9�{�ʟىp��$x娺�A>�A��D��LD������0�rƆG� 	gU>�^�U�N��5��v��E�%������e��|�	~� 	^(��I��毧��z�_O9�u=�3��	��V��7��O>�[2�M��o� C� n�`���p�0r���/�:�X+Fމp�䃸���l�:���$���`,� �@d��FV��r8�33�Y�,��3a>'� 	�e��D�nv�Cd��D�n��GG>H�Y�����v�3��^��n'NX��$���A�g� 	�|�	r�)ga�N9W�u;�/iO9Ww� n�U^)��=�՜U�N� C� n�U���D�b��pTu;	���$<7�NY9�U���a��:����N�By� ��+��N�Ry� �M�m#x�k&�3A{�Z�$��E>脑w"��O&�,$��)�A�pu;��!�Tu;	�8=�<Z�N��>�ۉ�gu;qr8�~�/�W�'���v��Y�N��ڨۉ�gu;	��kʙ/|W�'8�E>�m\؈W�����5����0C��@�{�� �|۝Ѕ��ۉ�u;	���A'����1�q�#X�Wu;	��w"<�NY>����6�7�Tu;q�:�X�ATuu;	��3���+���;F>�����	%��GG>H�Y���'uU�� �G>H����'NP����	곺�8A}V�'���|��F�O��>����u3���(A��|��x���9���W� �0|�QU���%#� ��O�`�>��� r� Ǫ�gK�`~jd������Y+FމFV��r/P_'��]2�X�&ª�["<�g��#^�{f������3����l��ᄳz�D΍Sa}>5���2��'��]���>G�/'�����	�Ml<!�����3���K9s��f)Np��-��q#^U�<b�׏V�K	�@4ϸ�����)N#k���n0��	�:� r�2A䢜��S�)5~�%�U�:��Xed��3��ȑ3z��*U�S��9��_U�� �'|�	�E�`Dt��T=T���a����>���֝�� '�guRq���V*NP��K�/.�j��E뉠>���T�Sq����*Nxֵ�3��j��ǽ���m\؈�����?��O      �      x����r9������޴�K�*�u� u�u`�j{fz'6 "1*V�� �z��(R��=�{�*����� #u���n�Vﳪ�w��ͦ�����T���*5b52IR�2�����<���R��([ڤ3��%3�mui�ias�G���5rs}��B�]����v�/]��z옯��S3��{(U��W�M��\�=L�Bu5N̺�W�dnj�h�O�*�G6IP�5��V3��y��߈"uþn���x��e�8��ԓ�JgeΣ4��b�,���#ִ�G���,U�lDm5L��"K�ie?��3q�}<��ҿ�b���(jD���zԻj���~oʅ��F�{+�߲d_���[�4Ei�O^��F�LVZ���Z�h��v�y�8��t��v#n��^5㥳j���W�����UK&�i�TE�F�qnәA#]uq�&�O�������2?�R^O����r��F���l��m>ÿ�������4K#��'ҮN��M3}u�M�.��B�F�SGnffV_�ynX��+?�W׆*J��f#��C=2gt�lF*������Xec��U��Ds�!�y���[�V��A�!��0.�:����%�c�蓊ۍV����'b��Qg&7s�/����k�f��Ug9�(��=���S�W�WW����ܚ��كO�k7_�,�u�.RB"5�8<�V6_��:�F�)��w�ex��hG��VdS����m�����:�F�~eQ��S'�e����!U��h��x�.|�������U�;jb�����V����e[˶�ʯ�T�ITg�h�^C���Xk��[���N���;�G�Z�5OngM]�4����W��x����^'R����zXfK�4:����é������0�a���KWZ�k6:-�-{a��^�G�َDJ��n���!�#��6:�?�c/画CB���3�d�=<�v>���^����O�QP�#@�	�x��r�݁:�v��U�J$l�3�m�S��{����)C �T�.�,���,?л��;�K}��
?�g��ZM��t[JtA7��{Y[M�A<x�[ ��>g6�vC�_dnI��
�Gzꛩ��=�K�Z�|���o�P�P�K��G��z�F��@H7��a�����7��_G~4R'	Qwk��޻DkG�^��{�זb��ĬJ`��PK����J��n�U�ͪi�?&������w�A��F��}\�t�Wq�T�!�/�Sj��t�tK�C��Z��n!�C�}b�� �R�%_h5z�8���Y�4ۨ���O�0HM���n��z�Y"/�_�q�0�0���뷱t���ڈ)Y��סmu�Q�H��*}T�n��=
�Lzx(� T��"9�#q���_+��F�V��7�<|�*���<�|oot����T��d����<R��6S}?)����
�3�F:fgyJo���7�V�H�J*���#��F�P�P	e3�<h(��II����=[;�B3�� �w#�y�������R(IN�Q����,�����0 f��ʹuJ0n���"���ǒ�̦A�� ��c��7����Q�U�K�%%2��k5�j���ju��qn�|$�`V�����]5v6�L�aO��g��٥���'̂����GǄ���� ub���3��#:ki�=�'�$7�@Ȕ�jy�Á��Mz`a���QyY�ɿ]	Hi�m� �	�<!<�6�JVjxv
�?�j`{H&\t�N�4��@^ԯ��z�n�<Y�d��}�Zu�L�,gk�Sh�0��#��;>ig�j�f�mW���Գ�R�	�����^�X}�X/�O5m��v���$�	���;j b��y������H�υP�r�Գ���	�W�ݰDX�	��w�dKQ����@�gU!�'��<K�~��A�z_�~HZ)�a8R��_$��e
�,७w�Z�~/�坿$gqX5<�_�C�s��\��q��|���f�?jƵ&8���r�g���w}#X�g� 8u4�+�� O�XfA���4hҡa�*����Yj���P3�#��C�?��f�;`������{m�r��G����gP�16
���J�Oe�C��r�}�E��$B8gB�&@|���-b����4���߮�{��n�0��-���_Dp�?���="h�`��p�$ג ��e&L�Z&�'WR��0 ���%<�0xÈ�}=�L]���/�RI�g	�|��C.�B�#(*"A�kSL��V�=g[�T�h�E �� �`��Jh��p�c��H5���i�pfCZ眂�>��2��i�-C��e���6���b�h�U	��׀y���$!ث�p �,�w�]u��&�BZx��n׋�P�z�?*a��p���B��iB��scRMA�,��C	�Gaァp�wJU@��7q//P_)%7//�<Vd_����̖槯��������?Si����W�Aṣ���7
������$2NCRor7�-���L}�B1�I��i	b`rZs}�����ūOp4Lu��ENrD=�(�z8-kA�� #�o��b�������2g��k*��m���Q^�Yi'U���@i���A�u�}��K��=aS�Q�Y��mή|��?���!K��'�R��p&��"��n���S�o�|n�O��������f��5#u$@�G��h�-]��/����KP�������;@�A6��~f]���8�-]�	�J^�?�<+Vr؄�.�zm����la~�`��rO�����x���4��>�00�H��l��l�p��O�8�f�a-�ԗj�˚z�'>��&�8J��"��B}oW����{��J-53��Li���M��?�ҮP�g�z҇9����/"� ���N�: ��U�J��Egb����k�p�i��F�J��į��,V#�����8UP���%��7t�wʻ���5���`�]H�g��������|+�O��߾�����W!4�5�q|T$�,�b�θ��1���l��09�#Aҋ^9������N+���e}��}e�p2��t��O�� ���Q��b�<������4{6�a[������;l*�1�B�{Բ�D<
1��x���Vr��aI�����uU8� as}F ��&�HA֠'=@�:~���Ϭ��U���b��b; 춉�eV�o�q$���8���[q\�c6�(qE��P�c(,u�e�c#��?��V:̑]�����:?��7���,���:%=��й�Ю�Zn���{�Z4g�\���߀���>"�%�᛭L�L�>j7�d�?��II
���m��O��f�r�N4���;|�؞S����֢�یԒΫĳ� L�C�{�G ��9���)��2�>����j|s{'�$�S������p��OJ���`���V=�S�ў���:X��bS����Oo>.�$��.V �:�������ɗu�)3���3�#�\7O�k"1Fm�j�BK'+k7G����ܜ�I�&�葯��ͩ㛛�wW';p�|�i���[T��뇖P��4K
B�t@X�\&��\P� �3C�^��yW3��i.��L���m��?*ٵ�3%e|d�_������7���}�!OaſVΖ��U����L�rGٷ�t)Ty��N�����I�h�.c]u\e�N�z�sOy�S�Hv�o��G֖v�2J��w�CL��)ٜ\ғ�V  b!������P�;����Z��=�+��^M��A���:&��q�g�sb���';��+ �k
5#m56ӅM�mr ���gn^��|��tO&��	��2XZ&��,����ˤO��2�i�^�>˒ٽ�������Q������(���"�X�{��e}>J异f��9�I�?9�B���"6�3�|95O�S?%F�%O\��%31T�;��P^��>�It�G_�+Z��w����aZ���Y�ȓ�z�Zd)q�"[��b�4�]o����Z�Y��;������]�uE�SJ���aH.�5}�n�r9�Q�\B����_�v���8�Ll�Oq���@�Z8�]��M���- s  ��!frQ�����¸��x�����r*]��S�]s�K�a���&�¥̃�a��j:����;�Q%'���_|n\�:����gIQs�pvG�Y��V���jN��}�̲�Ú緉7 �����>����T��rX�;����c�����S �F����> �H�m_��L��0�ܓRnh��8�w�-�񠜙�8�|���m'��51�>���]Ҽ��O+RP�L���VN҄��'`����٧mĭ���G�0!�Y�ya�[�V���`�2ɔ�Wd�N,��[�D���c'A�������4eJ�9� "�}�OB�������-T�9 38�1�����jv_���_����f�ku�I S��G�&�6em�/ɇcz�Kgg�	\��ʓ\�Yoѳ�$t~5�l�����Ļ=���T�E]"�b'��$Q�Q��#��X�R#R�9�#�=��!W�#]H���,ށ��,4\�ߜ���m�����AD���YnSy��~R��-����"ح�K��}�����ĪS|7I�R�[�w]yⲗ���UJ)�߇QdK	�|i�7�ߖy��f�ܚY�?��η�6�O�&%��ݷ�Z��|�����9r���7IQ�=���X+uvNh[��lM�U�ww�c�C��pu�z��,C&��u��;	�%�G�4h�n/���������%=n,?����k	nw�)�G�v��X� X!�&+�T�����nS�v��J��/��WI��o��c�k�6aHC�/맖���ɽ��8����N�}c='�ǈ�W�-����I���������2{�R�_�fo �-ڿ++�-
�FC��(*앇�B��2�I�Aɛ�#���C�kxڃ�ArQ�dFn�ቂҪ����CW�v�|[��yo�� Ϭ�oo8�li�ICo�'��v���١�ੌK���VS% a-w7���p��[R����[���В�=놼��z��m��)%�YX�U~�n�Y�@��',��Wh0��O�u0!֙fi*��XP
�I(4��8�t� 3�⫠pn�j�~(L�N2�Ǘ��姕I��ǓK0�R�S�9d�bVGc�\!zih'/k@4{.�ʡ*��@��q	Dž�vč��w�~��:� ��(B~�&��hq��_�>�i��S�R
���aYI�q��䇝V�g��e*?)c�C�l�s�mq�,*��d�t��I����m_��_�'��`�;�X� �����n٥UV[���sm�����Ɛ\��� �t㬢^O�s���%ΈXp`������>:� ě�E���@ڄ�7��%.z�&m���9�냙Q��YO}��A�)�?������U��=��Q-壝��7���L�      �   W  x���[sۺ����_��d��ɶ�{̓Jۉ���N&�y�(XBL: �D���5$'��ڧNU*Al4V���i�����8I�0��J�jh�/W�Z&-5�M�J}�+K[U6i3�2��z�4�(��ՠp^�M�}�O�̭���}f���r�IzjXϝ/s��I_�Lv?��J�j��|��~�4���P������l��>s��&�t?<5��!�FS��\�Vi�Q�	k�{��E�h�Q=g�I��56�2��,1���U�˼�&���I����Ƃ�^�K3x��^�\�諱���՗vL��q>�-��>wI�PLp�.�0T���$Mչ���v���+�����)��g�^��uE
��ڻ�5�JҖ�0!#�L��$m��W� �2s+[T�Gvf+����a��IG�U'.���}~$iO��A����[�����!S�����Rof�Ң�����n����L��fS���A_p{�L�l�KS̽���L�mum����zP�P_�`�6ivԕ��]'ͮ:����w�s�wG{�xA_�P��k/a��U)�r��LZu���p�IZ�	JZ��]=�4�*i�ԙ��!�_�H[MY?=�z:HZ�}F�HZ]�Ά�%�2�&OZer��/Y���؁����p�e���6����\���l+�Cu�\
��P֖W�S�+ˤ�T����l�W��N���l�v[M̆-��Ɔ��:�ŃYԮ`S��d��e���X���uX��l�{&�>��q�e���#���+��xv��榬�N��΍��ۥ_q(��{��B����־9�I��l������ج�'�FI��l)I��<$��훣���lۤ�}>#�L�s�"��"����N_����P����J]}p� su�t���oA	�g� z��W��I7�ͤ���1z���C%`:Z��6鶞޻���+��ۖ;N��'�	;=] �HP���j*���ۀ�.�6(Kg������N�CA&̓n��B�^Ae�;T�/fc��Ge=�[/U�З^�f��er�2E	��Ա���-�U\��'�)eY��^G�\��
B��pI���)?/W�{�멓�(��k�T��^_�/2�(��?T�u}a�M�ujV�(��\�r��2.�7���m�o�S�r����ݷ�ߦ��q�q�XҗJ�I� ���Q�^S�ۤe�sSI����c�_a&��8<d�(�`(U�4�ü�?_r�
�z'
t،W�!�%��7P����5�������=�3b0���
(��������[`�͌�{+��>cUa�À�Q�K61rT�J�ZX�ߩ���k�ڦ�$���|��
�7�ԫ����*g��,����5� �EU!��A@I�6u�'���"BR��h�O��������F@��8���͢����8�՚�Tݼ=z{�v_�g�\�jQۑҟ��L�\I���?��ƸU�<Zy#�M��f享n�w��\�X��m �7u��t�5ބ������$]K���z���(��/�4 �@+�uiQ�-z^/�����,��6��-Ro��qn\�ŕ�n�ʮ��R:�7P�[�<=��W��s+�z��}v�w����bw�:�n��� U.{Do�U���:��%(m$h/~��4^�x�;c�2��o��SCme�#B�@ko�Jj"����C]$��PB�0��Z����0��)���W�?�רu�h�D�C��A�6߀8��#0�R�,�=����m&�-0-�ązJ�Wwwqo��$H�}�j�v�!���ĕ.�o��������%�^�~z�(þF�}w#�8��������i8?��ZL�]��V�\^KP]��Ϲ�ˡoe��07� 2#��o�@^' �3�H� ��ܣғmc�A�܉$*�� 7�"�q�8�Ѹ�޸| ��𴥯�i�Kv��P๔$!!��4��3�(vJBYˉ ���������Y�\��Hc�R�0��JW�] ����Ď!*��[�`7����
+�I�� L����=���ܢ���}�%J;�aM���M
�PN-�_'w�/��� <Q�(c��!"�}�n!f~
Dk��7~��(�?( &\�x	a|⒏~���(�-�NE^���M���2�WW���, \Uǫ���]I�t�s�s�
�,�h�HX��7PΩ�u4�\�C�!����~�z[�,X/zc��)}驤�ҡ+���Z�R�f�f��S��JWf.O���^B���>;z˥hi��������1M3�
�:4b	N|>Ǽ,j�q�ύ*�2,����&d�X���*r�<�����8��ۚ�K�?�!�6���]x�YY�4 y�E�_E#;^z�5������-���j�|![bA���.+��t����hb�R�|��L�z	t0�l�@`!�d�4�/QM>Ҭ���h1���=�"��o�P�3K�S{w`�3E��l�n�/�{�'y%[C�`UH�K\��>�
�����c(��|Lp�b�͈/BEiW�q)fb��W[��4Z{��B�G����|^FB4��4%�X_��G�?n��/�ׁ���_3w ����lf�>�������(���ԓ粟R'���E��g�Q#�	=NABU]�=�q\�v1���$�U$Q��Ú� �}Ȱnp ����^p3��}���"<��UI*�(�h�W�]���@i���wpb�
1�+ax~{yi�O��`�ˑ��=%�c�ohe.�K���M�6,^�:ҭ9��EY�#LK�w
�=/�҈���F���}&��o�� I	��e�������p�r%>�2�ݳ�|P�PULhO��� Dx�F庴_�':����l�m|q��}q���|e��I��:�}�_L��x�O��bcR��uҗ��;g7,�	#�����0��+��FtR�P�.��M!HP0\DJ>*��@�ᆙmuD����ہ�9��w���Ë�mt��a4�����g�w4��q�(t���������-�G ~��4+��T�R�Y���Ҙ���c��7����W/��1sgH�q,gw3�Q�a�GH��G�#��z��k��3Wf?��M�RuM|��d��w��'���K�Uh�nc��PPb�L��pA޺\,��&���!yx��ieLU���-w�]�s�5�B��#M����0��<��tr�r���oo?�[t����r�9� .��>�m�����U�����m�>�QW�V��}����NC��.Q)D����i�����_�@z����:DJ����m!��黔�^�� A+��¾=�}�z�F�ǐ�|*d��a=c?Z��\��m��� X>���[+6=����9�M\T�mv�}�&���m�MգPL��N������c4���Ə7a`��t^Gt|��yV�n4~���jv��}����ɹ7�
cٖ:����Y�Nȝ�@��j=�~�o�ڤ��sIɈ�A�?=x-�$�>�dP�8.eCw�qi����]�z�}��4H��@'��5�6�-�	=m.��k`J�wa��[j��KW"�Y��OZ7��#E���z�C��^bZ��x���[���'�:З���ɖ��x��������t�V��ut�Վ��YͲ�_��f��R���$z����M�����.      �   �   x�M�;o�0�g�Wh�XG�����H��)ڥ!�E2,�E�뫶K7���wG	��T�H�;��đ,���G�L,f�4����ظV4�Z\@eG��c����#�5�|�rg?�6���ʇ@��O�R���MM���P�P3M7�@�̪,Hs	{�:�Mَ�f�x��mQ.�6��}�5�\Wpֆ"FG��5�����
��?r�R���B����J�l��۴��? U[K!${�����D�a^2      �   M   x�3��puWH,M��WH��I�2�(�/IM.IMQpttF�2F�i�5Q(�LI�ʚp�%g$cj4�D����� �P&      �      x���kw�H�.�9�Wh�]�����%$E̗\�+P�m
N���A��e�#�L�_�g����@CqΙ�*�+�V\��������VM�ͯ�v㽫��j��{�!�������?�����oچ]�<�βrQ���ǃ������v�Tk�(�
� ��H����/�:�ʲ�6���ͽ�A��o1<��P�q�됣C��H�d�ƛ7^�]�f�'u���&o�{W{�oY�q���{��yGE��Y��b���߼{���#��
#?�\"k}k�<�Z]�ͦ�`_/�E���ܛ�yW�bs��ț���/ơJGQ��v�b�.�b���������Z��Ǐ���*Jc��֏�`@�����|�|�c�����lx�����xR�&�<i��|��x����(�a��$J�d�ҨW��7����Z���7�=��C��N�����k\�|�S����q��|u|_������A�Dڦ�$A�x�.P�{�{G{?�*��D	f�$Q0��K�g�pȲ}�-����04F��&Fo�/�����v��o*��m]��r\! OR��n�kuu��%���'�M)cH1�]�N+��;��*���`-��)v�������;�6}��8���~I�+��k�s� bףO�$ƨ��0�7�\K�z�?�M��_H�4����lq7��W�e��oIY:�a�k�w�4���ᡯ���z	<��F$���w*T����]o^���2z��E�-r�aV���I����Շ۪�o6����(�r�X�A<�^��.Ha>d��VW��>_{�ʼ~��˽������̖�����4��
-,�A,�0v��zS��ޫ�7_{�e~�m�o����}��m���2�����|{j��{j���>�.��w<��N,�/I�Hq�6�NeB�e��.���(oV��;f�����i�o��]���7U������k�7���ُ��LMs� _#�F���EN�]�F����8�e�*�9s� 5x?�av��V��Uߞϻ졄�py[�U�܃���n�����/�Y;�.��m����T'��	�7�AY`�g��*�9�P�)�g�7��h�*gm�m�9^�����[AJa��"�A�n�D��̺���鿋CC��rP�-��;<��	�	i?������0l�]w����y�0��>?�
�9�}4;3�AR�dAI�� ��=�
��s��y�1��Ap�^�K�M��Ƶ٢4j��ʻ�3���z���b7�YUM�o ���;-���BZ��xF�a�m�����*�����ҫ�?�K�Ge�0��f�O��	�p`_�2`����6eLк���&����R��aqe4�P]
�~w[WX������.S�&�b�(�߀�� I������є�l��<��5H^l�M�=6�ߗ9�Y�w���%������٢J����:��{�'>.z�D�aIի�Z�:,k������vƨ��{�GՂ�GPA� I�:�-*V�A�����
�Wl���2��s(<������wo6�nC0�"�E�-N�S����C<��
���tG"��*�1��.�A�;p��"�����pLI���!Ƨ#,���3J�WU]��|b�!�	@Y#
=����Ӥ(h�B�:��J)d�ThB�W	�2_�k�Eߟ8n� �q�o�$"A$���>��Pa��� �hB���N&����G���5��$�${��~+�kN0M���)���QW���-ֻ#��#V���[+�)/�����&����m7��a���6E��h���`��П�ve_��}U���==��Ğ=Z
EHV��R�����F���х�=_�ېm�ui*���Ai���:[V�s&��ꠀ�1����D�Ӭ��"� ߁f�2�������nx���յ��}�yo	y5�cF��F��g��(�%F�H�E�. Afm#h�W��]�}�j�_�pr���M
��JB���!|dS��X��BB���(�m�Yu�����(H!��.z�N�+�5P���
i彺i3��L�{�j�l�v��q�r�A`I�-�@�d�mˊ���@��Y�FQ�A������nCb�8��G#\�zQ��`��o���S7$C�g��ƭ���$&u��V���μ���c��x����"�9h�:�m*�5U8'��MF7)M�h�\nj٫hd��Am@>���-:^o(�boh���U��|�����G�;�6�|��/8���!�z����f
�q{� �à�[H9���{��\O`)B&��H^1�B�$��}�q�V&`��`��BO�`�
�v���6�Y�1�@u
Z��S!�<����(�6�;�����㜬ٮ�@U�E���+���l��7��h��j��rZ��z�)p�v�lC�����i?�Bk:1n$,Z�eQ5ev��ނ�{��k!taH� h��W�(����[��3~�3���ￇt����)nH2��5UIv�`��Է����Ʃ�d�ؾ�@��JA+0�[%�������A�R?7�[��Ft���!��9
q��]�߯nA>{�Z��`����� 8�l����� x	��9{���P_:O%R�ܕP���2/^)	�/*x��ˇ�u�)�|oi���	�t��/�	��MB��w)�d�ð��0�h9g���x��(�����E�˘o2�h����Z\%p<	M{x#�=��bMz s��d���;�c0�S�Hk�]��`���9ZAɬ��s
��]��&�O`� M�����2��2R��?���pY�dЋ�O�4�
ԁ�u��16�Ғ��=�PUyӉ�b���u�&���]�!d(0�5��UY}.~]J+*��d1B��c�}<iHۗ?�؄�nF8�	�X�ȇ�^�ؤ�Eધ8�d�Q��ko�.VY��+��,�uH0B���]�濫h�sl��V�4�[M}�Ԩ#�yI��()ܲ�kk��x�����n�卲���|ँC��A�ِW�>�2����*Ё�� �	�����wPgKb�4�>��'��rCC��!T�Ay��R��cPO��ι����lJg���YAc�x=hWw�_i4_|�,ꑟ�Z��iG��oD��A��8O��,�UC�ϭ�6�3�h��sA�)!�{���,[H�e�q[�xTK�/}X��;��HbuQ�Y�{g��wQ5J��sC;:��>4��;����?�)�A�����u�/� *.�s7q
O�o6TP�f�&~b�d�e��h�cT���*ߡ�SS�����T �~c�HC]� J�x���}�gt=s�o[:,Ļ �i�~�t��P�At�.���bj��y0��`��[�ֵ:��Q,�6kaUa��;���B,w&��t_��dt�N�j�����hh�ᵛ^3ަ0��D��A�흔�_���6_z'YQ/��b|j�ZG�{�H����h�=(�����B.6���*��� ��@��ZW���m�g���K|��]OQ�8�ɕb?�1�8����0u뭠����k�]���S����ߙ�<%IՈ�x�
�[�z���j�4B\Vdl��+|q�� ��#0e1��A8)⎏���ݺ�L���<)����W=�UWUY���ַxl%/�ty�I�x��u� qs�*�3%j��s�^gJ�f���r�hД�S3�ǐ�z���վ�����8A��=	�X@`"���W��Ӻ�?��I�$\�pN "�b%�ﰪN��G|?��B`�5g ��`�
������4L�����-�Q�U5�XQ��A"*�~D�� Q�d����9���N֪S��kmx���7"��VZC�+�ʍ�� ������G�en�ۧ4
e�|����V�����]��ۛ��sO�'�M��r���}b_�'�� ��TB>w�� �ۤ��\J@]�ץ��
h�p�m�B�����:�S�V0( �<�v����F�潽=o�aڙ/� J���d���g��    �oK����qt��p��Q��] =��ŧ�52:���LT�s=(�;�$���Ŋag����䵳J�1J8T� ��i<0ۥvk-5�b�ICd�������������&:j�NDL���	<�/Y7�D*�NR�#)��R��g/��2���+�U���X�mQ���{�w��Ȥta���";�H�E�T�ĸ}�ƀ8��H���3����n�%ZS�!q�8�� �����B7Q��l��h<���</��fco_�K�L��������+��s�T�A��4�AhW���/�ys�g�S�i������!?�寧���<�9���D�VF�95�����@�?�7���	��'1�k����sS�#.;�@�d�7Z��:�X��&34[��&��m������&�8�јɤCQ�EuWdn֑�#&�0f|7pA�d7�:�ѧ��Omw���1���d>��S���A���į������i�|7#���}�v,f�}���1T����O^�(�5y8���'���U�	�?		Oq�@#�����At;�
��kF(v��e�6yG�BP���KA4���wEYQxWO�GD��0;����J�#$p�
"7�q�
zI%4���~q���S� �A8e�!��ؾ�AB���v��Ǆ�|:�"���ё����p��p^�*R�&μ���HCeia�������t�۫�^����6���C�m  6�ljd�P���$M8�v�\���l�����o�5'r��+(�:��֨�:��%	;(w��tAB��ON*�`��,0&4��|�on��M:Db�D�o��]`��\\]s}Q.j���M㵠xe��*�PA%Η�J�]���	��=S6_�տ�I�N�Ŋq2�Ճ�O@���Ǌ+W����#8E�*�'�}�ev �����1��U�Í���@�4q&�~l�	A�ŜN 
�j��_b�!yؘ�k��E��`|�է���5d�4��?���v12�Q��&���;��a@n�〽�SK�l�d|'z�LaR��NƋ�o��-�U� �%W�^���+a$�A���;��i��^�� ��N]��;���A��طB��X�Bg���3Mݢ�w�������P�N�z�ؒ_aZ.��l��ۺ&�8�֛�n�#�xX
��vqzx �`�%�,��q�d�J,����ɘ�CL�Q|�4h7�,�n;h�x^����#B�[k& ������+�a�)(Mj �Jx� D�P.�So���!�^�p��!f�hd�A������NrPY,8�R�봨KE۩������b1� )�_	k,p}�$�v5h�f�HA��gh�� K,)��ؽ��O�7�uo|u�~�@������^�7I�1�!_b���
��0�H=t���.���v*��a<Kh��XK�ď'y�Ƙ�"ȤX�O��d��㪊��i&�BӋ:�����
��e�'�>��8����ܻ|P�U���)�t��o�46�o �0	�;���Δ���-g�t�W9om�;C$�!�� &���e��[H�u�,��RY0|KO2��0�:˗�&��*� ���Xy/��>��0,�Y�o�ʃ��"	�!�u���,�d��{��USad��5��X?�||mQwM�/�rS킆XWD(F#HZ��?6����t,sj�w���A+�������� WW���V�E�{T�ɔ8�R
�xO�BuTc���z�����ё���e�����(�'k�v��ڙI�5��XT8��ZH�&��.�>H�� �A}�QW�"_ˑ��bQ����=�M�qӐc=>*�lt�����/G�3w����
�	:ĩX��d�z�IyG�w�?m��}���_�=��,E�0�(����p��ʤA���S_��z�aߴ_� ̣�B��c9����ş�M=���8~qY5~�v�������TT�:��%��,�b.���qp����_�U�*_s�AQg޲�J�ƽ� �ƌ�Ǜ'�C���C>�2u����ۢ$�9K9t]���\�� ��{��ج@}��;����?$�FG�;��d@��^�T'
��lL�%�����=`��X�ٲnW���q�>�#�oS�HǠ��1� �+����q)o5�H���r�G��k�@��Tq�М8�2�gy�yd�~�X�!�ƶ#�P�G;�A��P�⺉�xq9t�q�5�Bd"M?��r�2�nP7n��y�xՍ�h�]٦�n:�>�	괎;ُ��9�)n\=��(����P�g���eļ<�jE�Z�;_�T]���D�(]?>V��8����U�I�xt�������K����a :B6^B���.�΄���B�FA�����8�䇏�ƅ$v�щ֓�[&���[�_�MN���'1�􀳼�C�`�*n*g���_�45A:F�u
b���{����Xu*7����u:"��`�j!|�+�����!��j�֣��1�^����_��`���ˮ�u�Y�'5S`��.k�N%���u�J.����3Y2�$�b����m��ċ�u�t�'I��E��MJx�� ~�1��E�Ӵ���>����8���$o9cJ�w&˙�Yf ��1&c`��7�"�Č0!���cV��9]]������[��#D��.��G�Ԡf�����|���"����Н�m�J���#>�R(�b8"U̱z�Ga���Љ o� 1k [��x����#P|
�P��9^/*z�$��ɲ�7o�Uu//�*;!kWÅ���v0 ����.�U���l�{��{8oƕ�NL�*Zu]�+Пo�]�d�)cQp�7t�휱��l,�;)�2<��l3+�MP~��]�0aT�'vF��&+f�ׅ\�w�BH�*�r����2{nP���	����h:?''�v���SYr����AaM+��&�`�CH�i^����g��� B�7���S�HҮ0�rT�
�G�P�D���b*h&���G��A���v'Q�&5���n�CMc���ܒ�у��k����y�+�?��������_�u���PU�������1#zr��4����{Y�=���p�B��L�"��	%	����8R�Xe|��9]/v�``߅�43ͼ�1`�.��y��MҠ��de���7A6��6ÅJx�3�3�j!X�	&ӊ��fE^w�&����:��;�y�}� ��b�-�%�qC����)�w�rІ��|��%�`>�,�w�PBU��CJ���h���b�fSPA��z� t)��R�/cn�|M��;��J(�&q6�~�ņ7�G�~nS|� �(f��x����X�'�G�I�N��G�����9�I��мv7mq`�A��X�x�M��nS���JO�2�f[|�-��}�U�����-�}�%�� �?5��<��/emDo�8��#�k)w��:E^F��4��D+���.��1�(�D*���bj��5���?(R�E�E��k1J�/$ ����@1���	�������~����n����f���M\U��/H��ΐ��F"��Ǡ"�5cj��pT�y2*�Lΐ��3ԭ��{_���	��}p;�D���$������`R3$n���Al!�h�괳t�,��c���ď"���%�;-�GF�PMQ��w�g(*rؗp��B�VU����5�2t��U�:_/�E�B6#A)D�ŋ�+��e^�!�,�6㣶�v���j������:֘�5Y�� ��,�68]�*)�Ѐ�C���H��/ר�����?٩��T� ��hMΊF)����qM'j�K4���)�7$W�M�w~���4$�"=�y��g���Ji�)a|�bm�{/o<�l�V������r
z�2�	���A��9F�^��f�8D� 5��t� ����m�n�&+���g�!�Cy�B���4��j��xUG!G�p���1Nz����    �M��H�>��kY�:�P��[�z��m��y�l���RuT�L���e� �P����xr�FA9���xޫ�ܕ��2Z����v��*�C:�ȭ�m~Ɓ}H�ȍ�L��VB`��]�Ρ�A9Roڲ�Af�GR��N�?��J�j�� �p4�VA��[�D�يBh�"1ſ�zl1��k�%��X�.o��W,�tm�7?~�,"��p��,�(� b 9ҺܸЈxòF�5cW:�Rk���|�=�Q�3����>��ePr��Eg����n�������c���\J�>�d�ןV}�$�7�j1���u2#!���y3�M��1�(�N�ʲ{�[�MN��C�ǳ�䌐����u1xp���r�ӻ�с:��b����MoυF���2���{�
�
��>�2`��N�c;�N�������Ϋ�����+x_=�5��\��a��|�y�_����N��ߴ�t�����e4���UV�D�ag���\IrԼ ?ݧ�V�\�'Ъ2���r�����b5�z����:�қ/��>������&��`��u�\��w����i����Մ�kj��aϻ̤fJ`���ԕ��L�)�;�|��|��vh^�x���7P4_p��?�V���ȃ-;�]���0���L�K@�_�g��v��2
�g��x��v)�])�h�&{�B<BK���F�	�"_f��
?-?��;�����|�,k�٢���npP�p�el���D�/��D�h���_X�e	A2����5��SG�{t�z��$�����ojǹl�93I�����.7-`���Eg(��]��᪜��Z�L���.��Z��Գj�yog��m��]g��/��Ӂ:ـ�[�@������|���a�Ff��]s�%�/����X���&��<��Gy	i�Ր���j������g����(p%/|1�\���!���?I�g$��F4�agc�@S��PU�(�����.�r|g�`
+�0os�,����,%�S�cd�� ��e����������q�X���S�b��q��
}�������+!t,V>bܵD^����]�l:,E��R��`ݲ��Tx��
k^���z��5�f��h��{�`G��K	�t���r�U1I)d|D�T�#h 1C���E�0�E�$�������YQw��Dq;��3�.J�&"��ƕK��]v�>�9V.�Lk�}v�/L|:�XD�U��E�������$�O$�@"���5C8�s�vI���>��d�����#��SӇ&���Ǔ�y���Д'_ع� ��
��trh�w�J�x�e%���X�w��wf��)Sf�������;���Cա���A ������9]��c�_���d���P �� 	�L��t<,��
$2�e�Xo]y��o6��(�r�9�Ɠ��(����T�h?y����2��bt��)��k�A���o�^�8�|����	���:� e%�`��3+�C��uQڷ�g^��EV�y'%+�Uw��k0G��-�#O�K/6�G�� uU�Ş4��+ �� ~قƛ�29z<5ZY=��S��8���u���)T��� Ԏ��P�:�౪�	'߁j�Z�Ŏ0�ԗ�T �K&�,�	�4|&�B��'[g$�z�:I]�Xjlg�1:v�C�1��ڏ���%���+��|,0���o�}V���t)G��P��P�y�928P����$X�*��v`!�`(�0�`�#(�e���F;�v�+لm�%�u;BF�0�2*��1���%$oA GT�2/���C#���-N�1feE��c<-
w��jꜪ����v��މ-����F�km�ޏ��V������h��7m�}m��b��(	n���G���h�dA��A���S��׵��Ⱦ�:�:Ҁ�����UgiA	��u�[R
��}�m"��R�8�0^����5#�βz���#�$fU[�t�-��/����3��--^��Kz[XO5�c��$Q�g4fP�����̤�O�ޫ����{�����ݣSr�1"ZH@č�w�m������Jo�#�S�PF}`����`:�M�7Y�r�j]T��#Q��v1���q����B� gŷ���/�u���0gVAK���,^'����;g����,[T������7R~��MVk?�"�s�q��@p��Ｎ�T�bZ�@�9;�e�(BZ�i.�!�xs�`sXkWFBa���3�l@}.���؉F��c�]Г�juV4��-n�e6˜�x�e���
kg! +���EY0Œ&��[jdOR��3���B��[1�Yo	���6���(����
��M%�%�)��R�}ӓ�H�b�O<�We�P�:� ���~��ϱH᎚� gM�d21�=�.�ΐ��㬠g�>@ e�-�cK�?F`ź�y'�j�OwS�ϯia^3<�n�jp4 ��b6M��.���A���{u��$��u6�oRk^�V3>�ZwĤ�H�����{z�r2��e�$}��B�����һ�`�VC\ӑSr�H��H_�W�wլ��y�c���i=��i�{���~|@�g(�Kv�Ǵ��Ǆ@��ۂ��R6���S�,�� ���%����Hm�B�3���B�u��&�5��s�{R�'Lc�xTe���|��.[�	F|��V�13� �F��Qp���uAg��>��2� У��ex^��ړ����t�dU�	E��ȶ�Ʌ��{@a�1X����,iW��³6͕�1�턇*R-��ĭC�=�=�Z|&�Z���ɷ@�j<��'WFqt�X�,ė�|��4�8C�ny�����i��/�M�G�K4����M��w^�^V�:�ŴFnF+r�@l$��A�\��X]� �����E��4��b���$� ���,D+�e�kߪW��<.�Ŧ.�hb@B��On�Vܑ�	=}!�5���N{�&��!R�$xE,vd a�v)�bF��o�%ȓ��M�ƌ@��
W���y�5���~)n�K'r�$�H�2z�OJ�d��Zc9�x(n	���Gh�'��QA]f��¯��
�E&���Y���R`T�5�;�ZW����W{P�JN$��&!�j$&�ͧ��O�}�'-���1t!e���Rlh�,��o\��M(�>����opqcz� .�]t� �*���
w2���D�R�.3s@b�2�R��,��}���4�Ty�ԑ0�%1���D}l�KZ���i�\��@x���R� 382as���<��E�����o�}�8���l{(��cur�mA�p�d��Đ��3v�~<�r�CWd.�4�{���2��O�����Z�Z�[�u߉�фR�N$����Q��� N��걫�ě�2NG[��	�'����n�u��c_;cF?6�IL��pQ"����@�U�:��-�&Rl�U���]2���Tʪ7`+/�l�u�d{Q��h�m*!�R�i;�ϫ'+�f1�Hq#�G��߯���p�lU3t��W���)��\���ղ:a�G��c!���qNX"d�t6��C<]D����q6����#�ϻG�K<�!��C:�����zc�Zm�z�|�|�Ǧ�����c�X�T��B�-���;�9p����ϣԪp����b� n1�����=��K]�_�a]��$��W�HҎ�wdr� B����>��Kr��rי�f����է���Ъ+��i蛝y�g7&<���P�D�-`�2�"b�gk���YΚl[3{2C���p<�
�������bO��O�_L����an���0�l��"Vp]�?e��j淮�x��-hI��2�t�I�~�`_?���o{xݟ�fktb"P`'_����ikC�6TW��	`"Ա�+"����������Qs���%����t�����wRյ�+�]�`�N{t�-S�X1�}(��M�mɀv�$9l��|��+	�0s~��z��&ף���4�"��.�^���aUu��EN��!����F�u�w]��U�    Z����i"j>�>te�XNP��Q�~ˈ��ac�
�X|���6z�ʥw���\؄5��Y�1huQ��Ӈ�����R8�IX������Ni re �]@�u���p�6}�ц���a*��"��}ʕ������E��&Uz��G�7k KV�1]M�|N�)3�3��#���7�ϬM��uά3� /26n������P���!^�ā�XA7?`[6�*��Y�O�ɸ�����]䈡1[1|�J �00Ttѯ7źz�t�G�d�B�8�C���e��-��'x'���4�e���"V`�&qվ�k�3��]����\���5w�0,gM�z�D�^{W��f��ne&���$�����r�]��+T���,I#�4��"�����g^�D��^|�jH �5�U��y�
R2�M�˻0^�0-�|W��6���O�O��]>1�D�<v�S_j�������7��9r�T�1*����d9��CN�8eF2]���³!��=0R��1�c�=��]�WR���s���N�P���]y����s�XWD+͂F�d��z�7߻���XbNK�g�2/�gx��`�ߞ��E��L%=��4�*�g�I�����u����u��G�gSCd,����f�05�dӳe���dYt�$�w�76+=�H.���T����@��s��9BO3�F�W: �~�6@-dY�(��1U0�z��O��e��Y�,��(�Z5N�����,P.���TJ�@ޑ��,����DL�d������eo�xn}Eԟ���$ь�_7�̷ł��C���Ln�Z�?�9~ ��|�z�13���J�ORw��0qŝc�ǘU�HJ��5aBAϊ�O#h@N)�%�/�GHv��������,A�%��zqgN�Q[�LV��+}���A�`?Yl[�c��
��8��K�}\B�.�����j�fH%�Sq������#��9є�!�LaYܞ�/ԛ�G�*yK&���Шkw�t:���qV��Z,>���e�/&�3�o��%5i��4�=cYK��%'�1;<�ZC�����.�ȇ�	3�*�[L�k x��?�K��,�F��,$U�����+�1:����̶L��N�U�z/���q�;;��h�b�59g۝���F���IZ	������?4��aK����u�����y8�����,*�"a^�n2֧����O��!w͕6{S��r4��?�/��o�:���]F3Us��>�� ��{@��	"	��g�H|�.+oگȲ���#Wrd��]}�������b!7�@�p q����#�ָ��ں�=}��}��ƪC��=��>3�Ä�E:/�4��n$�S�AMv�\L���@X� j�����k��}���W�Q{�7�e�	Խ�5���ǭ����e)�8L>�B��D��٩7��f���b:&�������	����[����e4:�o���kR���K²~�5�	%���@��AG��r4c�ִ�Ɛ-E/ނFJ���˗��uuӟO��3
,T�d|{���;�����X�f������ O���x �΋�ś6�ou�M0O5�֌*�0�}�������5 ����ؔ[�j�,���.#�֣0����1��˘�����%K���1��øo��۬�z ̒cX+#U�b)b)oЫDP�w�1������M�N�Q�����8��A�q��<�� �^9;���Y�d�fS������ȫ���C�R���c��>��_�Ҵ9�����,�n�ɚ���M�uջ������^��Є=L%}�^��?��%q�]�{?:���I:v m�#>�x|(!;��75m��_��3��*���d<+�<5��E��x�%�/�;֊�y^�"�Z��2�P�<�DĮ�_���.�ջ��7��$F$b�б���䝄��7�;�L*�^ֺ*�n��Ye��[��,xH���E<`�~��(�'MY��A�X���L@�J?��$袉I���x<Z��Az����f�D�V�c�����d/!��΄��q�%v�f|0�z�u�d/�f�q�K�;��aq�'y��Wl�9=�[���|�x�#�Cb�ª�m3�N��^�hn0^��F�n�IS�0A�����\���\�߽}l	��Me��\찪G����?�m6�5����	�q2���^ZW��-oY!��i��%�l���9�ML������W��{�N+`}�[WK������ T��@v���ݔE��O̓�U�I��ғ�:�]$g)k8ON@�R�2�X7`����vҮ���Y�xS#J�C2
넝�#�i�ك��D�@�ڿ�}�Y�-&-g!-y	�%5�W�ꚭ�Xpj+}���ZF
8)�����]�0�������_��'���d�v;�3eh� j��td���2A1a�.֘�HT�@�a� �'�D��U�ۑ��=�����Ӓ�s�B�d�Ч�9� ry	'UUR2;�����3�]��l� ����� �t��h�wQ|'Y�1;i��Dj"�sE_�߄�"��(CqT�@���`�?zGһ�;yL�Y4?'s���Wꗿ�ʇo/�>Pz�Ӱ�=��YݕxA.^��Q�� �M�),�`3F�߲�vŜ��B��썞�X|@�^� @f����Nۛl��eB%�����ߵk�颮>���o2�$�v�Y�%9�/���D����K� ����y�� ���,^��8w�{x�Ar��ޣL�RJ�r���3�z����ڿ�;ܓ�;L�ܿ-��`j�x�`�p��q�PZ!����=#���/���m��#��4-H
�����Q5[�2W��W�`�e{�
ޒ�GW�K�o������̿7{��ϝ=���g�H[p{��O3��f��C�RVJp^�� ���#�+�4ܴŢr�}�*�j|�yx}Ė��d�1K=�=T�п�������S/��hGgc�.xKd{�H.����$o��#�=҈{4���W%��#n�ѿ���'+Y���SrĵŰ��Y��YZ�g�_R������5T~�,��kWU��C���{R��U����;>I�$�M�1c7�H>)�9��S�]�����=f���aE�y�#��g��� JW��I��
�4�`��渓:�M�ࡕ̱b�9(���ܽ�}	=�(2��B(�ذz�U��֨�An7��ܰr#�n�y,xe-U0���&`��.��W���KQ�Y�rT^v��\U�L%9�łs}T�:\6ŀ۪wm�n
��<.Ɇ�rΌC�c�7!�o�!�j��;d�Ϝ�'T�����������U��g�?�f*�%eDY��l��f�<Q���9bKd�܃�����8�1m6���vI#�DZjoq�}���`��yW�5[�&f:8S	b !���A����j�E�U_�o����o��72�ٗ/R�Ѓ�]�f23M�^mn������~�Y��|~T�2��b��$��m�����ŜX���y/���Ј���Ud �.p�yp?�y��l��M=j�Ě�hvW�|� �oB�계.BRa⇋�>B�uC0�]v�}e���=�����J���puD<��ϲKbs���C���x��L�e���EpV}(�[i:�a �:��{�����,�^��0�;�GY�4�������`C�Z�%<�G��y̠X�g�����1L��}�s�u|�.j<+Y�0�q���/5�	YlTeP�w��y�u0W^�J�ZSi���0[,,]��Q�#���NoK��e�J�n�+����)����0*f�u�{z��,�J��`�X�~�؄�%烔B+�*�s!���F��(��k���	�K���̛��W�8�3Wܙ݊)�A(�Rik�]L�b�a�0���&��'20���a`X��5�1��zz���z��8t���C��25Rz/g���q%nq��ׇe�/�%i�9(�sx4�.b��x��5�i5�����9�0o�����F�3����.�h�������t��R#�Q�O�̺Η��0{���8��dS�*z��P�� ��pff���I�gw�    �6a�jvA��t�43��:a)��c���6�g�]����[�ĴTٛb3�
��1�)�V�	P�9՟L����,���� B��R�z�K��Ų|�־�� #%���cL���o
��S%���N@�z� �[��L֕����P8�%�L��L��-�蟀v&�7�D]���i��1|��-�1H����d<�C>i&����p�t����E��P���3��Rn���!H����/��Ҟ|�iP�BSè�1\3 ����G~u9k�&(,��>㷃�"�%8$������G~���Ժ�d�����
�lzґ����b"@"u�o�{���i8C�{�i?~�Δ�&)���0�����v�ީ��ڤN.����������Szqߨ�����k{!��$*t&�8�f�����*L% �K� �*
1^W��+��x����@�P�F�e��q�x�ɬ����U�s��$�5��h��q1�������Li�MKeu(P�>�!W;v��Dz$K�-{��C껹��{.��_A�����'�o�X&3�&�� �L��#+ը)N_���h�[
@MA\@0%
q�횞~�xC�JԊ��i(}U�W ����K磁^B�]`�j�yĊ�x��as��0��Rd��e�&|�W �:b�����)��,�M�[�\��д�<u����ݦk20���: ��s��}Bw]���e�#�a�U��Vo����8��!-|1�ٌB&ە�9K�MT����xC ���璟�\?`�L"�.0�Yx��3�ز�s�IL����H�~��͵�����;�Z���n��Tw�6�"C�F���
��Q]u�g��T.�����DI���3O)Bp����b}�>n��G"��bu��I�T�*�)^'�Yև��54'��.ޱ��H��Ԑ���n����.b��e�	��o:)��K3%��q��:t�N�5�w"���Д�	ǧ�Gz�=0��q��먿,,?ώ�L������vo��n��O⁒�c"Z}^d}#�@j�3�pr��d�9_2��jq����:�}�8i�Y9��M���֝6����'}[KaVH�Ћj��_�۽����c�i2����@n!�+�:g?���!���*m2n�3z_�]3���ۊ��$^�a8m�}���a���vE�Mf& ���.��w7���N B���
u�VR�>�Ł�P܎�8�ʛ���j�T�W�<k�@�IKW���z�꼩�`2\,uC[���aǞ>�c���	K����]����!q�'�*����t��F��t#��΅n�֟�`k�x
����嬋� k %I�;8�Ä�Yo�T<{���[!o{�aǓÄ4�/8'�@����͗͢X���Z~�B��+�m/�R2*<���[��ۭ<=+f ͽ��[��'b�ah�6�d�9�!�_��Ǭ}p��X��Y_�&�~4O�!��֙������Ru��Z�`]�� ����j.�X��w���vO-�M����DH�Td���p{OO��3W����:�j�a�u8��JE�)�;F%�wEVu�7����2 �oF�a��3�/_zG&�P��L�D��Jg�6q5���b�뇾�kdXE 2S����81V��מ^��S.��ֈ�"�r<>���3J\�#q�fe�o3�j(l�I�b�䓸����)s��e"]�.F|����w�=�����_�j��O�z�?t�B��8W��\�q�h*�?��+���k���\EQ���t�=�H�@���z�}f��o��E�⠮��gq��iL���l�+;�|j4̼�h)��� {ʯ%{�u�r������S�XDy: ��g�.iS}P��h�;a��恢��	��v�Z�.�ɻ,�cN!5�A¾��D��Z��Z��m�8
^��8�p�+�,�ĻP�f���ؤ(i�D�ف��}�A��+��	�|t�f3��W��x,�?�`Df�iE!�z�Q���+�����{��B��f��.`H���z�/R�����a���Y�����Dsz�N���<+�4�Am���]��,F�p��a�����G���Ƙ%�c�=(U%MG��yƖ�L?f7�����L�L��4Vr�<P
)x�B�@�)���98{Q�w�k��K��:Z�i�����:g���"/�/�$��Ս�]`Ő1F5$��������f�h}70&SN'hB�JI������0G�}q�PEP(n�x��e����Mٺ]�'N��a�`kr�D����.F�>�:'O̧Oљy��C	��]�U���i��R�/��ܻ��A���iM��X��96���u=�׃�oJ�K$-�䊍j�5.��*Y��hX_�d ��d�i��Vw�@p�N�׍tX�����3�.�^V�[H�>���Լ����My`��)
�Pc3E3�8��$�v-����r��� ��r1+�;���¸�4��nv�R�l�0t6�,R���� ��.��������:��1�^����.�vw�����d��d�qWl��E �[Y��e1+t*^K!���GD�˜/m#Y�Shv��)(L�Щ:sM�]��]@�����쩡'��=�a=p�dN�&��%���'c�S��$�-���y�9���Ҁ�.!+y0=�Rk�5+N��Rk�<e�����!�c`������/��L ��&��C���!�w'�ԡpɀ�`|���c |s�2g���`a�U��]7�֠�e)�~V�nw/��>5��&�b���T)���z	�<4����Q�7��� ����
7�R���t�~T�܃+ܮ����U��>`�����ǀ�D�S!��8d1�)(('��8�"ǆ{P�@F�2U�:��c�h��RƠS�®&I�B,I�� 9�k6�;<RV3J�0���0�o�9A�aڻsu��OX@{�_��}'L���d��ӾdV��켅�J���3Z^��m׀�gJ6(\����r7k����k���θF��u�u:ْ�kU��p˝��xȊ	���#	w���J�a���@�L2݂T��˻�>����]SY�J�CcY�d|����ʸ�`I�� ��r�s�г�ڃ��Lܪ��=��J��l����Y�gbg��#6-Y��o����I�*��i74P���3g�y!Z5W'�Cu�£n��
NWwE]l��D�!%c�:x��;2��ٶ���{�^V-��l8C��p �,��������g��G��)��(�x�.{d��Л�+�oS�f��������Hw��q�\��KX��i-=�Q�媨g�!�S��y[�w�C�V�eP_4��U�e����:5�	š?^ ��U���zg�`���WD�a�x$\+�":b��p!��6��B\���F��Ďw�+�r4��t�ٹ���{69��?2	���]�6��%���F���N^���T���=}�N	��.[�T������I�'a��s���<G�����L�j�h�8��8���a���T�F�(���Y��e�(��l��Ma����.\�n
���4�,��ޙ��[�����A,��y��3Iw�.J�d���WGu�q�oi�V����]����sE�v�p|�РA��S�V�Cu�P���{�1gp�'�Ovۧ�7K�s�Ad��-L�:v�������ƙ@zt�0̀r�=u�hVwܿ�$��JPn��5��|�q"P��}I���d���v��F����[���@k��ƪ�n�{t��͖
��~a�ċ���{v�1U'Rܭ�L���G�b�y%ٙ����j���'E���sˬI֔��m�#�����~�%,����6�UB��x"%�~t��ނ=�#hh�ĉq��,_w)�$ro��d��+�أ]��OpL7s_S��<���}%To�����׿IC
I1.�G:|&b}+&@�$]��__���2t)����'����WKi���_��.���Xk���ujZ��_��+~H���N>�lʪl~���X.��p���2|��n�@E���j@ȸWB�D��d�    o�j!��y�5^��n��a���?݄X�DI�h�oX1U��1)����r�oI;}?�������zO� �Ϊ ��ʘ�<�s�og⇲���+�2L%��]WKVq䗿ŚT�xD�+}<|*�B�\�_���4�B�4.�n�����b�u$�n~�jD������p�_�@��,���@�x�}����v�B���oi�����ࠪQ��sw�y�Tm���o�D�^��-$�vsKk�/�Ŵv�B�a��R�~��4�5��#����4n����=сԟc���LӪIٖF���=��-Q�B��Wf���慚��+����u�1Ve�ɫ_�Ph}:Y�*���;��(��v~�iE~����K�1\ӵ����VY�p*e�sǵ��D_�y�����s�����Щ�<�vşH�Aw�x7�6,e�	Jæ���$�}v_U+�?�w�sѝ��1X,F_�������R��'T*N#�:���\uLi�mrIP��cm~�C�^Y~:~�	D��f��ME��K�a�}��M���<|�EO3�</�e�j�n�E��Y�h�
V��͢��e$����)D�m����տ�؈~O��%v�X����E�>̿rl�m%L�v��7B�B���"�~�3�;��D̷��ϰ kȖP�Z�6/���]� �-�ٶ�	���&0nq���d���a'�H���N��C��hկ=*�ej���t���MHُ�tV8m�)#����S�^�'+J]JC[3ܥX���!+7_~�3B¦���'�{��k��L��=�P��g$t�5��o�aq�ۍ�8b��o"���v�EA�<W�������.Y�S��Q�\3s���/uy�{�֛�.:=9�t�������;`Q���I��9z�=��>�a�f��Fz+|��1?5��]�L���rǀ��ͷ�.��ͱ�c�J����j�����T=��y	<C����t����~'�C��f�!{��~�L�%��0q��_:��q��5^�ms�׊"[yAa1�-�;�Ɲ�s��1k$�*����u���2_���W{N4	){"�H�'�|ZIdX��0-HޕtsX��<v�*~<�Ie[��l"
��|��O�N1c���Rqy�Ç���C�����.֑�zġ��]C֣�c���>�r�,BN3K_���l߿���hLďm�3�D;�����u����k��?���ѹ��O��ޮ�������I���
Ə*��P�,�7��O?q�����H��NV�(�$��2��%}��/�d�?,�fƉx{�42t73�p�����~�S��ӛNw�~(1`�Z�0���L���'`}�@�X07��1+?y��Jz1������5Hǀ�����U�o�ߟ~�F$�[b�JV� �?��ٵu��]A>nX$ΎC�l���$7+v>2�j��4�P�8Ro��\��]��fA�K$� M�d�X0WB��7b
���gw-���ڽف�b�3T����1����I��Z�D9G�Y���ˌ�۴J��m��n����y���@S��W1��x�A�qy3��%�K���P��0���]���&?��G8	�R��sEaﮁ�qK���U�l�E�6��}�Eh���I��E��\����g�9�k��zŀ��e�;����'�='�"i��e"i̘�$�"�	:�j�˾��{�I[Ҳ,�6DŢ��t��/�L���d0��&���r�]Tҹ\~W���N�J�� ��y�Y.qO_m\�{(1r>k���×�<�0T:p!��I�"��-]4��\f��d��5���˾ӆ�VX�1
ƻ
M���~�t�r,�c�UF��1�o$�׽\i�qM!��,��a{��1$�O�>���X�:e$�!+��O�H\ⳁ�r�a���բ�^*$Rk^��tV���<��V�k�5{��mrB��d�Ǡ�B��`1���o��xj{�i����ć���T�4VY]4�bL��eΝٰ5{b$�
xW[f LT墳z`- ���r?��`�$�H^�������p���fe�5K9�����;�"6π* ��TF���yå�xIlI�l��
��p�����|H{,�EA�3����K� 9�+���P�e�{FK���9�������Jq�k#��g�.f��̺h2��J�V��LʗQ.t� _�`�V�a%����=����H7]M؈��Bq��0�0�I���a�������W=�Wodݴ+֐q3�a|׆}�`t��������|�u�R��1d��{�!R5+��¡���z� ��f;u������ò+�x�UW9���B*,Wbu�V-� |^jI��W]9\�v��^&���`f�����hbT�e����v��!��r ���q,�=�`��~]�ݗ�=�1�Y�TB[���Yt-(�:�Wv�f��4�D����ߍ���|�?���0�����0<Q�F`�C!P�H��L�a$�l;\R�0�l�[2�3J�k-�(�t!� �.�rjk�I�͢�GIĒ�l�$�p�9g���d�m'H�F?��T�v8������Y�}2.Ą�헢ޮ�(X3&
��8u&AVXwCYb6�Z��Ͻss5LRc�PJ�k9�>`�Q�b��#ۘL*�ޣ~,%�H����dz��CA|ɕYV�N62U����1z9��c�'<�Z�ϊ��By*��H��4� As!ﱞ��+P+I�d5��H@BZ˺�.Ch �j��g�v�F��J��n1<ޏ�cm")R�Z����0�"%���=\@{w�Y����]�0��1.�q���)�N��@0�r�E��E����|���.���2���Ս ��U��W�,�)@&��lN��,p%���iy��]0�,�yڸ�K��U�75,Mjq\Z�[�蔙�󻬖��;^�d}�,����	xP�\w�)���TN6�o~٥D3��g`�])�~�œ��n`ds0�.����ն�����������OY[i�ؑ*�����*�^���k3����y�a�� �n�∑&�u�g-#�!Z�RWf��ۮYm��Fb'�arP�b#i<kTM�4�f�m'R��^Mu���1�5��"�{�9���K�H��:�<`�[�^�w<{�J*���q��U�R��jg!��`A!]� dؐ��h��T����J3��Һ!�{(��Zd�2i���`�IdG�e}��]Awt�=��>~��s �	�T_ĳ
d_����}y��
u��i��$��Y���>S�{�~�����.�-���9�m��I%�*h��������,,o�����N�)û�1�(�;��q�H=�#<2&�apׂ����C��_v�������IyJ�x�z�P�\y���Q}ގ�)�j��2N&듌�U�l/�����U�%�5���'>xI�ǠF��̑�ȴ����ex�a#y㏁ �7�A�����Ʈw3�9<�mu�ް���([l<�v0<�չs��.�?꠸��/t��i�*���`��� *�-C��;��t���Y���еY���p\<Ā���u^>�F�ec<���V'���m#�;����}���:͇�����Ibm8�Ÿ#��UP��se�HqN?�@���u��y��[�c���z-QЇ� *������MH��p���K��`jp�q���l�p-�pƭ��6(:��C,U�9b��2����k�k0�c~UA��Ϊ�#%�e���z4O�r�rTT�,P�e�>���a�=�üT.�SId�;{��wcu��.���ⷂ�J���m��{z�.q+$�y6�i��x�a��K�?Ѩ�%V�/�/��#z�-������@���"�uq��,n�H���D�C�H�����k��Y��?�7ko�7�d�>�~EN?���TJ��<�H�ڷե���L�D	�� 3%Q_�q,�IJ�66URu�#���s�KoW/]-	�ly��d�%��L����m�}I�@noP�B�	g%Qb�^�a��`���-/��5d�O%�؝"�Y���^ŝ�    P��2]!��an�I�9#����,�o]��s�a�pu�Z߭�$'��G&_�̤F�Lbs�k��b&|�!%�`�����|���ID���&o��p��A���R��������4�� ��-���)ķg��ُ
x8\����`��qf�@�F�S�Z���_��N�4zY.{�M�,N���^�� ������e��ރ�H����p���y),� ��"D�颶P������}nH�됍/��83W�t=���0�/d>���`'�ɒ6s!ZD�D�Z��FP�`��y06F����-[&���E�6�v��?Y��~�4��j8-R6�����^gS}�S2Td�:?fq�� q��\l���:��E����Z%���vJB�8F��d�����usvf'/ ����
���tD�w�|;k�mK/�IQ���gމ��cxOM}2�d�����[`�O��s�����ъ��h��;kz�,]�E��,�
�?��i|�Gƪ,�
^�|��ǳO-�ӫvG.R(&�(M��b�����5���.x[H��ɺ\U848x��)����0)�%�<}�`]�A0�T��z]�w�[|i�N?.�/�\`���l<g��	o	d4����կ���Di��c�������Q#��|��1p�x&I�^�!��?��H����@ԏ�L�83�y�((-|��_^{G���'�Z;�@Oa�������l0	�Hb"�R2I۟QN�oZ�	��54�)�RN���O�'��mm+-"�U��ł`��a�H������l�óMSÂ��o�6^ l���1��EW0$-�Ȼ�Y9=�Z��Q�Z�D�3�X�0�M��ZL�D������\�#���F+ 6Y|_ᚃ�)�T/l��]{�+���ާ+��L4pp!ฎ�#�W�y�۬Ϊrv"����)dp��P���ŏeQ�r/W2f�s�V�(R��NҐ0� ���3�*���j�=���it!ڣC!���a�.;z1�?�ˆ��Y^��R������Ye��#Ψ#�.���Q�Ԭq�5�U��n��6-�x�?�����z�~sְD�F��o$��z��w��(܄�[v̳�wf$Q�F�@�P�6��D�L�I3���&Ժb�)�Yⵆ�Ek2�.�����b�^lq�qR�y"��@-c؈ r�e�h��j����2�?T1�O����4%c���3���O��� iN(��N����?<a���j��2 >^�N� �ݡw���S�> �˛4�*�缺����?-M��Lthp�M�膑���I6bc�~�:�!n�Ғ.l�߁�P�'R�=�u��jM@.S�Q��?rf,�(Ae��#\���3�����6��XwH�z�%���~ѬaQ�󶹬q�L�Y<�ǳw,Ky�(?���K��^V�u�ݲ��ܸ�ƙ̈́iS1y���?�������G�J�?�u���H���?!pKl��6�zO��zCV&co����:��@
����o�ujL�S�yG���SNn����z�1�by�mZLFd�Y;�3�>�����3&�Y@��nm!`>W�����_X��s�7t�>�2z�,�:Q��_z@��B��%w������U4�������/>�|<�!��	�.Ӯ�������|������p#r��_KJhx^���u����}�2B��X��'�X7�
#t#����pd���A�;ϋ�y�R�>�3���,��X��N�S�Cc�g��# ���
a�Ϭ��S��Xyj[�mSj&�r����I2^oW����<Ш�-@�g5_������ݿ�Ў����4p�&X��ׯ��s�����6����sr�FoG%��1	���)��)x��$�E*�7p'��!���������/����J�,L�V�8BG*���M�ᶹ1���9Y��"3�ȾP�����͛]]"��	Ί��b��q�V���V�#�Ҝe�>�&#G.�{����~*d>ѧ����Knn>�ܼ����I�� ��˖�͉��&���8ۍ#�	u�� N�@����o����RM9G&&�-[�.���,��wT�bu��%*ķF�r4���v-���Y�/�3I/����E��$�L��},)�5�j�/��OQ��*�M�x+�����l�#���SD,�Ksc�*����̲�\�H~��D�b��	a�_��d�٧�@R��&S)��E)�w�?�I8D�HjSq������x:lhƎ�,S�A�6�`KS��0����M&>���g펅���{�O�(���H3�k��&�X��Χ��eXKM\�,%�D�;�6
�H�^�d��.��P\�>���Jd���rA��rv�냦��/`���^VgŮ���*�G[�-����+�(�/d|LX��aB�ƉI�P��^n��b���l�%�/E��"���f�'v���y�\V�l��^�-��՜�Q���c��6�����wγ�<;���b�/d�e�=��{��ҕ7�B�y�/g�����;~�[���C2�I�AދP�ZG�v����vwU-�VR��-�̮p&p�ed�����x2 �r���\c%�XA���p���v!cȘ�O���HI�F���\���a5����4��R	pV.��WJ����k*�I<�3!�x`PL�D��S���6���Xn���˲Z���l:R,{~5��7R003{O8e[�ik��^��e����dUI600��&�`�����[V����T�������j�o
��Eq��2�
	z��à*�wm+�l ��p��t�@��si_~��sx�_H��1	c�Ϻ�c�.�Y����-P�we��.{G�؟*-j=?�Y��{�|c�>g�#'H��[�M�x�(���I'J�"g�c�r��Yi��H�:�y	c����-��z����~�/�6PIh4�լL����F�2O�a��,ٰB4��E���j=[����H���<TXǑk;p^����5��{�w�Ů�܃*�f�?��\�����֒�ο�L
\h�R `�BS���#Er~^��.K���x����f�nZ��^T����㥫E�ې���>�o�$��q���GJ��KN⧶X]y�JlO��9�����6KA�b)s@t��D�ݟ07���c6U���|�6��l�6�=F�����QH""��9��kN��:m���ο���o%��|U���Y]ml�8E��GHX,WyGg�i��atem�腝�8 _v�$?�{!к�)qؽO�pfx�`�<B��$l�dd7Wl������zVW,���Y��9{E���/ª�h!vEL����c�
8n�췗�)������k] �LU.�E�~�*���`<�v0��`���_�&lE�~F�l�bb�w�w�yFL	ɫ�ѩn$�`%!�벱�(�����\`����j��i+���cO6�c9U�k��E���*%܃���_��#8i�p�)��2�W|��u�9���E}᚞���W�0����������l"�ྰf
��/�?�b/"�y9Y�	�/�s��*}�8��(�#wpF���-�,�8��}�=j���.thll5)�X燽`���6�%��y	�B�a0���%�C)wK�oG�FJ�����38�O��U�-�8%�_!)����eJq��E�ߎd8�cx@���B3X,q��%��"�f��`\H=�3�-�$�nr���
�dt>��}(;��ذ �e��k��'�����䫂�!lڋb���V����W���p0W,�.�ip�,��1Z2�����jW����Ϻ�j�fW������`��9r��	����i�]�\�<-�8l�� �=T�_5�,%�S8��,״�����)̘C�#�^�,0���)�HO��_��`����^MlLHq`�~���p��	���޹"�a²P�O��)
<g���*Ƀ��-Ymf'�Sr���8V`���T1�b��aA��G`NO���F�7V0��R�o��$�B_���c�*��k/��®lv�V�������n�E�Lbu_p�h��\i�_��Ρ�N�Y���Gt~l�    u��q������ۅ�I�qL�%�I
>+��;��<�p����[oI^��X��b��%��R{d�����z3f���?�=��6�u>���PȂ�$����ZE�Kd0�	9����=H���dV�3��K�M���O��?]j3"�0���t,�l��N�A:�N����4�i���}X�Sm�N��1�]�(��0��(K��v�a���R^�,��c���?h˳����d	�I�~ ����2ц�A�x﯊�e�����xd�4^���(��b�B���D�q��c�ⶨ�?�2��̔Ê���aE`kx�/ɉ1~ A�ǂI�_�6$)_�n�9�G����d�m�9Ү-J����?	�����g�m:vY��#�,O��H��l<ȗ�J�� #d}۪�
�$�n� �{��a2���V�	��,I5u/�z�J^���T�l����gJ�=�;?�&�QN}��Fڨ<��<V-n<$����W4�A ���צ��v��U�giq['��`�{?�g�Y��8o�mt�Kyr�1v &���K�@����T&�Y���6I8�D�̾�NT��ZגR���1��������`�*9gKQ�
&����f����J�� &w�R������M�c�	�|��r����=k����a�N����7����i`�|���I^c�m�&�)lC�!S�t�l����M&��-��-�?`Z��^�����h$�vf�c�����7��?�1Lp�-̓/�2��3/Ra��{�7G������v\r�2�:��Ϥ��c�¢(x�3/��)�f�A:V�����Z�_�a���ŋ&����\�.J�;�������t`�w�b���uu�vX(��Q���-����85�:ς;��Y�C4�؋���KZ+Z���T���`L�!0�!�^8'��RB�Gm�tǛtF2���x#6���G9AYo�3��E5�� ��#���0䟄���
�����{����:�w�"l;��������٫��$�P@��֧U�޲N� �~S3��ғ�8I.�\�n�N�ζ�ho�ٮ=�7�c�])��b�.�\�����2+�W�s��������SQ+&tW(�����2ڹ��89�{�$հB��!&��Uw�3�F��az�J�۠/���]]~e�����VuO�ŒO�#ǺqW/������IW[.��Iv/��$�s�0ù�d&��c�K�)f��9����v[}-��z$T�a�$	c�t���j=���YY��)l��r(]#�P��tBT�c���$�e>H����z��=��AC?����qb���^�TO˫mI��Q�@�"�$����ҹ����UΖb{)��� �NX���_�3�<�rm��Ș2��	9�j�9 믏�)�*vx�,�L��`q�����I�y4�D�@FW��Mh���'�bg3ǩ��ą�G����ME����r0��R�(-�i3뺃B�ΔE��Νg��)ym%�b�3�	=9��	ȄCAr���D���K�m�D���^�6}�F�(l���@�e�)��c������	&���y[-.	�j�Rlh�/��y����j݁���`ƥ�_Kb���c�� ���G
���A,Ŵ8r'/�x�J��% ��:)j���㔠���|���kت0"�}�ő#��6�E�d�aITf�1��i�+�oN��F�M�h8d�6#�jJ˓D�,�6�=�I]�R�1�ih�k\����hO�R�Ǭc��@�;��a�E����mu�c��n��I��n�A(��8�[�٢o,N�¬�V��Ê��*y�f���4$�R�db�ky�a�b��,��PƤR?���i���9�,�!�z0��4u')�,��'����kA��%XܙMdȆ�U�Əv?b D���M|�u�9��9Y�����l�8��g������ˇ��i�L������`wzD�v�ȓa�V���\�s�!0�q2�&w��N���� ��ic9��1�C}%n3�$By�A�.E,���k%�X��4o�I�;?����������86lՐ���)N���Ck���%���^���^Òm��F�&9c���?#o)��lM�?-�@ōu�?3/{�~�^��)������A !�,B�Qs6StXX1��ZjX��}���ܼ~�XR�tzc�)�=�\��1��9�G�;��WP�%S�Χ �O*2����$c�-L��٧��j)����!��HV��e�.�f˝v��^ɪ�6)�� 
?�Em��͒�c�����S�|t��λ%����췹�A&Q�f����֋e�z�F)����U�p��]�xQX�����5״�%�%5	G���HFFL�uhl����+�47��ahX�Z���I�I�]�}$HO+~5\���`ݏEs�m\�K�
�� Z� �|��;�P�o�|#�����bbL�N��Cb8$����o�ب0H���Ǩx½.Y��9���#�l��GZ�<�<�v�{�?�TJ�� WN��Xm̌�n-��p��zW���5�D u1!��%	A�Bt��-.����+��I�aO�HQ���-�u�[�+|g��9�q�rCđW��	���V�O�;wFM.Z8��hu}®h�g��u�c&eۓOHc��=K�A�2�U�h�X�Q,Y2�jG'Z[+��I������n8¹�Y|�m�xn�`�7�U�����|Ȥդ8���Bl�E�evZ-�\��/Cs0�	ԟ�0�{~Θ��n<�3"wb�K�#�W�r#%��:�}����ǝ\�q�f	P"��A."����FJ����F�LwJ��\�2�Hё�6�U}�K������2�i�ڊ3Ñ)�1�$��Sq!`�l��Ͱ�ݍ�;��m"�9"�6�V�c�����r��u�VJ�c�uiL4F�a�T�m�����T�T���|<�~LΞ��2��V~�F6�<)&��F�ׁ�R^�kU���2��R��n�{����~��d���w���v+����9�����vB��I���O��uЭEG�$�ۭף^��|(
����yc��=����i'RQB�R,�4�`� �|G�!A�UX�~��.G"����Z��b"�.l��G/v��\��ܟ-��V���f�(��w	�+ǒI;��E-��m9nNL��SƲ�[�'�ҷZ���ڶ���=�_���	��߬ז�PZZ�G������>ut��/���k�����B�6c�ʡA��*�P��w�lyԞ����\ 1*Z�z{	�,<?1���{�b	�-��"�YE)\Nf"ݺ)\q.W��$��'�1_���Ra��I׼7���;̞K��.fr
�d���D�^py`FN���`���ɭ��8���9��Яg/gꢫ|,�k�=��t�3�	��z)��	�F���H�/ņ���|�SWA1p�c�$g�P��{LirP��'tĤ(�-#[�O�&�ha�C(�߽n����-?�����9�e�3��	�P���,��;w�O�<�v
|��{c�ÜbѰ�Wi������d81�?r�g��<H��
;�j�6��zz*�R�S��=W>�A2���E;��/��b[C}���o���U-�C��s��"4hR�'�^�6��_6�q�����۳]�1�X��;s��a߅4U��4U뜻��	�uk�z3%7gx����J"��`�ƺ{I]�oYI�йw�kٝ�L��Jb&�KX�&�pwa w�IR������`bM[g��{�v��d��88	��g��ck.4�b��=�	#(	ӭ4\�g󫲝�'��%@�}�B�X=�	�*p�T�Rz���Ѿ�V���FN���Qpi�Ѡ9�ȓ+�&��� !ܙ��
������ӕ�U��c�����M���H�Pc'o\NWh�c���	�b$�r��vS^�~b�G�3�0J��]+���W��� e�,}�k���v��b���h{� ��0̀m��M;h��H�+|��G�;�	��V�ȏ�'����p�    p��d�L]�Y�XW���H�DRF�7����1��@�x�9�`�%lą���;q�f,mi���.��n��/�XՈ������gm1��	�8�n�_8��6�Cl1�1"��#�=؊t'�lWРl�$���F�^4x��I�����.�NSj��1�壍`DL�_ �h��z���O�}X����L���lwQi�t��Z�a�d�!R�q����ڔ��I�V0���}_�W�J��ë����=wi��(� �*��ݱ���!]ޜg@XZ�<�I$�.f[�/L�~�sa��}E��6"��6Qԫ1�i��-,1������۽h܊�GJS�vʺ�T�r�!���(S8��R���:a��t�t�U��z@�L��!	�3k}��S�ؽ�MG�P�ĥ����'���� �!�����.6�:��T=�����Sh�rH�H�!��2W8�|�9���j�NVE�x2��@���t����6_��Z��B���g���.,�P������%���Pr�g��4�u�"ky$����K���
v����PʸW"�H)���X�[��Hv��c�+�X
�?��n�Q��ǝ�\�gN��`<&�L��Zؠ`+�����#�ƙ���<���r}�j��X8�q�ɂ���E��`��;u;;�^�F��|0	I��%&�ZZc'W܊���J�l	ߩ&x�Dа��c�G=�`�}ص�rMoC�gF���tc�H%@{��G��S�ڤ�'����]˅���N��Rs�x	�=�� �E3��lf��ڕ4b�^%
N1�m~G J���kN0A����[%�#���e�W���p�'��5`C�	xm��C�2�0�̗a�ʄ޳ZKKa�-�v��1�0�s)'�k����������zQq��xe�0�d|���J�3��zi�a�ՅV�IL�A�:
=�qrg8x��Y,�^?��3�=$��I�����OD��?C�2ݔ,*�d��$~Yoz)�hH����CL"��jyZ��Va���ԟ�%�~穖����d��D#R�,�EU�����G���#�L6�}��^�թ��l>��NaO(��XqlJ�"J�6�����/AnAVPҿ6�XO�j�#��j��ԉ=�yL5$���Rk��>]�ݧ���"�޹2����Gư�d����)�!�?1;���C�;��?�Yc�ERC��w�o���c�x��c|�D��V.�������8��,Mcד�jo�r�c�0_Ć���X����T"i����=��-GM=	��4NBW$yh������*��DPZ�,��Jo�J���H������FTVv~��T<�+q˙#�V@�al'~2�]7�=��,Z�0�ڵA!���9�ë����h�lF��=q��i�G��q���Ν��^l�"�j�N~�R[Z��,,�L	�G?���W�bLd*�A3n��<yx�ߌ`B>��D�C������t�|���MBly��.5mi�����nZ]��� ��#rcH8Q���:������I������2	�dk�*s�pbi�	�f�=�C�%"h	2��\��HM��ͦ�l����g�V��H&3�l�d��=S�Ō��(L�H]��|󟥷{�N>�D9	pCWOtס���7�c��`#e�a)���/(�;LTqá��@�9�LF�ܗ9�O`Fw��I;�Ա7��}��!gd�N$����N-��˓�{ Kc�@����a�~���;����|O�6��~h����W|S���l�<f)6�O�bذ�1�ύ�����冏����D2dɔ2�l�iN����)�)l�4�|ebai���pF�9��W4�2��GӐ$�]
�����y�P�)�Y���Q�������sl��M���(�aJn*{`�r\���!��j���7uH�����)��X{���6۩������O���r-î�@X������ʬB�fǅ�����i��8r�ƛ�d�Ř\:k�@}5u��jv�Y�J*!����#�:�
/Β;V�d�5_��gѿ���4'�`Y��z�񿞦�3�%6&=R��+yZ:<�@��t>�=���Ҧ)�KZ�
�L��|��%���6����HT)��A2���,1w#���å�O�S)$ű�{-��SX�O�[�"W.��D��x �Q��'�&����כ�4ǐ5��x�c{����ZZ�Tr)�L�j������I,�#��|wh�
':��ƙ���W2+�cs!��Cw�o\�C�∄�����?_�F2S�,�"J'�a��g���ٞMj��;Ȣn����ٍM�%/3Ni�,h0���՚l�6�?5ǈO���^��G�уJ�n�g���&>4�Ox�:�W��-�b���A���\��Q�c���?L�!�.m�)R��C�\]��kE=Օ1M�V0�`�$%���S�JV�@)
w6Ҝy�������<��
�^����'�sjb�Ɋa��.Ì��D��X�7,5�0��ARI`�d�)��h��R:M"l�H�/Fr>Y�Ou�Rc7�Jk�5
4H�[y2�t��W�e����Z�٬7ӺO�k�����a���w�oʪ'�,HR>�h"�@8�'���U1�s�׸O�Xex�E�)H��s�Ib�:ӌ��Xӭ�K$+'\>��ν��#"MC&1�HEQKf{L䵃�=�K �M���6�v�/�"�5�-�0E7���H��ݛ�����\����ݬ� �0�Z,o�:����E$dB�l��mw \ ,�� Y�*��C+�y�4����;�5b	P��٬�U@��@�8��S�$��\3�ҡa��LA��S������=I�r�=��Ů&C��eS �,���%���ڭ�IpZD��a����Gz����}�'y��0Ȳ���҇�>��e{�0�Ƃ/���HRB�^/=u�M1��*�����	�$tU��(	�������
��5a���#Z�N�81����/�.�m'��D�.�����|�<g�C#Ͱ�g�O�>y��H�&a�
蛣K��X�)�̞:X���Q�O�,����;��;�Iy ����ĝ��pUɭ��yuv���N�e�#-�'�9kE�n��ӷjo5�=����ݲ�����q���X�2�C��O�]@��ZKI�x~��&y���#��i���-
�ψ71q�c�x�<H���K��aTv���O�-���@�*��"���ԛ�R ���d�%��᪺h�^茏	�"�h�p�*�>g��_�tO+��ܒ8|"���@Kʰl'�Z ��D�IK���y��p�#��	�-�D&UUkOaC�PWn��7�7����i���q9�Y�i��G!�dM7��a�k�g��t�ѧ���O�Y��x��Pگ���k��D4�C�\J|娸�}�>	����xL��v��r��[L��^
�XϿ�*8?!����n�^3T[A������i�=ҳ��m`J�]��LXۭMc��2�~��xX?�	��]&�6O�L&
��)�x��w�ǳ��V��)'
�gf��)��	�˛�%��I+=�)��	�Q)������X��Qsvv=;�n�c��p������8�	]W?�ن5yVLΒ�E��	���<�[�f����G��]�edp$f�tЉa^��|��/�g�Ym���\�{��M�?��W��D�Y^��߯���ĥ��Uh��Zo[q�p�m�/��!m�sw�o�+x��j#g/������i�7�����B]m�1}Zk�Љ��eE|�W�Z6�?�ժ�F���Ϣ$ɳ|�=�m��82�/�RV����WU�̟+�+,B�og]Z����f*~���dDh69��<+�.1���� �]�}DWɚ�����K`��1)'��HG\�u��m��S8�l�!�_O����8L�ۍ~�;��k�
˚��Dav�L��f��dR�,{�C�
�ޮ<Ş7��o�p�g�=�pqU˦����k\���ǘ�kf���j�[eujovD�;J�"al�Wx���]{$�g�@`-���˦��T����%^�#Ǟqe�',zrx��>�5��^�Y��	�D�1,3ٟ(ɼ��1,�lŬ�x�YD��    �a��¹��_�������	�ϥ�0?�;L�͞�:b%��ȳ���!����!��7?��K�se)hy������$l�˥� �@y��D%?4{\x,���a+Jt���(˩����zG;��Ǹ�y5�������DKј�B���e_�' �#���G3�ҍ�ε@�u��a�`��C�	#tC:��B;.���*lX�dܫ��b8�>d��8�����ñ9`�g-���AAF�b!��U4$b�g?�m�h%t�f[mI����w-��	Ǖ�v�\��x�P���s\�����\	-@����,I"2g:y�8����5�,�Gɂ�H�#����� 6�g^U���l��(%����)+���ȺYFSI�3Q�	6��\�BW�,��jh&���=B�n�O�Px$LfQ���Z����ҩ��%��҆F��c�(���.�'��!(=���t�g	w���D#1���p�xQ$��)�MC���北T����U�vޒ u̎�)S¡+k�l����<_��HȅE0f�����2����/!�[g�-D�0\�J��V�EFB�M�>�'��G���uخ/˕��g���uGQ�b�}#�A4}sV�(�����Y�����@�8p��`�Ʉ�N�YAIf5v��S���b��Q�wu,�Ys�����Z2v�{k3m���"���Ȝ�%`�c�+��딲X3����`k4U�G�ǆ���'����2��h�m�1��z����	�A ��'0z:�����i㋹�	�*��M��]pTC>#��=�zṃ���׷�E�2Z�:Σd2\�Ųj�8��`%�7A�)�A�zJo�ξ�zH�:�&e?MbBr4�:bu	_2� ��7!�SL�|��NL��S�rdZ����	ޘ�S��IM�O֑z�����?ߪ���;�Ff2����jw|��^di�M������ ������H�Ϛ�M�U����˶�N�VV�1Sbr˅�����<>8;P\,��lH�B��d����d�<AP�c6��Jl� Jʕ��T)�ݡ�w�E�0c��c��T_�Y��n�5�m/�X@>���X0,�O>�%oc�T mi:��JoqTju����h��c.�<9��
��}��Lh�k���{�jY���D���q���B��Jf"��J�'g����A�PI5�2����z�VG�����d�p�N̈́A�8�L=$�Q�hba����6e/h�NlN�v}�r��h�Fd�w�B�>]ՌW���,N'���u׺`Y�I�&��F�jܯ��,�e���@c�s�KZ26'�n�Tx��`N�����L�xՐ_�mJ�f�Ab����7�'HZ]���1{�,�BkiU
)�7t���d}�z��$��2��I<�C�x�e0a��I;��L��H(e����� v��i[2�J;�+;-p����¢��N�E>����u�1��Æ}!\��S�Ll�DX@M���8f�v�!��d�!I�\���d�$���hW����tspL��� L����>q �~�"�w��l���ƀ-��J"M��w��������#�0�r�R&T��	����ljE.N$����_f8�V���\"L����xF���ÏY6T-%R~�/,�̱���^�)��Q[l*r�\�A�g��%�X�
#�6��<q_" (���ukW[�}naBk#�Q���{��R��v�f[l��8h���r���RöP��*�>�y�����m�D��.��03���iY���@xS1�I�g����P�Ӣ%3�2��2�AY�k�y��e�.�תV���P��y��Ӊ6,��u\CD�Y�>$��q�(L�J�����}���$���y$���?���7YN��-��7 YqU-�4Ǣ��,�'���7���i��6�=fˆ�>׋�<�}x��������������]��}�V�)�,�ʶ�S�1`B�L�;���ދ���>�mu��wF�!s��4H�?H�&�q��5�u5
�ϸ��([�ԋ�6���a��w�l�lf���[��#��F�G
��f9Y����`4^���F�"�љA.�g�
�#NI ���������z���Adc6F����8�N�,����}v9�!���O�~]��6�͙=Q�g����h����/�{uA�=���Q��jq�@�n�P�r��$UQ��%l���$�	q��C¶��$�n۲�$�����g��1Ē&r	;�$K>}ZF�埤���R�j��ْ�h�XH�0�&̦�4��N��&�B�?�j8�\=0��r���'z2�]�AOoL0��������\���Fp�X|���k@u��K�*냩��"揌ʏe��MOvY���/w�Iȝ��92�O3!�Y"y�p��Ϧ{�x�1�®�%#�i���Ɣ����f3J����������MW�OR�ԏ�ܕ��������w���\M2<����+�
-�S�	�xE]��Sk(a�k���\A�
�.�$E:C�v��I�f�QWu��#�yS|S����nB���`.饏
yn��\ǎ����K�`K>D)��c��GLpؑzZ��*�����C�6��@9�G�=�5�O�`�r�1�h��<s-D�wu��R�<�k*!�N\n�0v�Y#�e��~"Ͷd��u~ï	RY�v��Y!(�J5�3�M�|2}p%���iKCcL��s�9gA�)��H�Թۂ��VPݥK�'>d�t�Y�GQ�:y��X���燓y�=,�U��H�°��k�C��H�FI�V�m%}
J�5�#�60������:�n��\�I�v�6����'�o�y)�'�V]^�Z��zY3v�fS,�]�Yh�G���P�`�%�(c9�˵�B��Y'4a�L�������Ïj���b�YA}���1N�uIR4�.�؉��$<���K���E�/p�֏g�1��E���ANz�(�l��0U��}��~)i�,�'��,ițoR|-t(�q�Y���C#�<qi��G)�'sJcF�P�%����%���ѝ��{j��GF_c2"�df�1�p�@p�mV{>?n�5�X��]��0��4���3���D$!
��Н4�`dz��H~8���1�ÁC'�u*` ca�b8O�%��,4�և�J�i?&bxCo��}NS2��K䅏}ߗ��[��^Le�.���Rx�V�e�������}(eG��F3�K�u[-/�чb��18�Lf=�^M-.�G�ސ�`�C.�>N���ե����Ӟ�#�Ztpw٦�A��^�VՅ,Q�% Lo�:ݑ��禓�x���3ޢbh^����Y*�k^��p������^);��"��tda3m3��Wm�ӖI�����Ԓ�C��O	��pFh������{-����i<�P+�>��M�����Y�����0����5�OU��>5]	�3&;y�A�H\�H�W�9��t��X1�t
DGS�ē�`d��� a��v%$a�����܋����Pf�D��ߖK,�߽�v{����-wW�#��11R�4u~���}��Z�?m8*W���ƪy�G�U���m�!�^�m<��g�b{Z}�����g�ޚ�_w�40��YM�;����%(J���WM���m#h�X�'O�.�j�p6��1$:F[ن��NQ׬t��q�����0��u܋�8RKW���4wT�]{���Dا��D�(���Ò.�B��� ���c|�d3��M�+����oy��Hn�3�7y�`�B2T�8��<-��a%�WIx}�2�1�^;]����E�^���㳉�hT��'��G��%X������^�$w?���JXB��TP������g��h����Lт0��nA}��y�1>+���{�ePo��_�v薔�yƠз��ҿú�b�g)QN���:],�g #��r�D1�m�`�+#d&��w�o�`:��x��������k��?�C2\�],�W0��w�StJF�q�3�î�.�?H*8��}�J�,���殎ȳ�0����8������ 3y�"����Ǭ��2[�,�i����    �&SOk��Z�A|Ʀ�{Dơ��AC�L(������թ��bܵ*�Q�X��=�񎋖��X�I��y����j�0��5��֠l��ך���Ee�r�Lz#M���u��Ꟛ;��I#)�S�1�=���HA�rb�靠Y��G��Ů�O���ӹ(\"؛a��]I�t��m-Ot1VM{���x��d�<ըӠ.�̀�SQ�"�2HM:�r��5���z�C��R>�&cI}.���(�}v���ǳ�sYےN�b�*�[M�}�~*9�43��E��9ڡ�0�$w����ǳ����o���"U�1�����̓�}��0�
�'�n�wۤ)98��&����L���r6l5-���#���e�T�����'�&��zYk�dv�Mպ�n�eo�8�SwTa���*B'K��9R�w=)qV�{ӝ ��r��	Y�uH���U��_�d'�g�v1o2!��Z��Y��ZQ�C�^"�1�50(OdS�%0�$9���x�|cX�Z~j]%~��I�X D�憫���"��T�[*�`u�ɤJ�ߙv�������t�h�fl!Y��:��-�ت�a����MN�cWD��?<D��:�n�(�5�G�tN9
�I�/�$l-�`j�fxB��'l$� ,�ߔ
]�g��������p��FZ���$�}���!-g ��L�Ǻڳk����u�A�w��iNv��/�i�{lLf�c����t��{~b���Lm��N�Ȏ������Ǥyl}�A<�˺�}'G���n�����ϙ�&)�R���t=������6V�?#���So�O�� ��\�>����d�4�Z�f��)�B�PԴ��>���XěA�t�Vk������!]����Q�=���be�����˱Y���?�jV?e\��(t&N|��/
���#f�����w��ʙ��`����i<�̴�Ô�qoh2	5�i�(�5{�N%��-�ҙ�0�7�Yg5�<�fG��(�o�i����L`s��<Nx6�	]�s�OBj��"��I��}4�v1?��qR�Ǵ�a�h�fУ����:�o�_�8�������8z��Ӓ>�<���ؖ�p컵�o�͓ٟE]��#�"7�v~6y��:�	�^�?���^"���s��Y���n��h���=H%ޡ�ߗ���l%?���,e��W�'9�cDUکJ��T�BA��K	�B�X�#�*1�uQ�޷uY�7�#<&睅�H%��'��5g����3HlgG��rT�9,����n�4=0����t��ڿSL@�IU4Y٫���BI���]#0Mwk��?�e��yb��,D��=�@�f1��bWE�:��΄q�nE��Z�^��TF7�½���p�2:j��*��8��Q��Ƿ�w�%񆠧;3� .҈�lk� ��O��"���1���a�͞����,J��>��vJDY�&�7���$bN?{~����FۍMdH\�N�)A����8\'���<as_.���S�]�=���*�Ŷ�↽� 	 j`	6�Q!4�JL�];3B-Hv�Q�A,��l�%��7�YQ_6i8��	��T����rh6O�-w�Iq�gMY7���V"b����W�ٟ&�`�-���*�vgf"�v�p�:����	<�-��Y/�2��r�,��JK����O�8�-�sX*7߶��E��;��&Y%�d�l��Qn6e��>WA&`��9Rl���rY4�;="�D��;�,�ޔU}�5#i�����V�A'��ī����3���i�����"�dCb	V�IEe��.&��Y��k�c��Z��g�8�?�mѺҸ�y:$$ ��Y/�x����6X���M�[�li'o�z�e{�#�'��opU�hq�.ۋ�HPh�`�ZXH�zY�f�%��M/����m��Ж�f�V.�p�;��A1/��e�͢�㸙~F��$>ee�
��ɒ����d������� ���,vdɱ�:c,�vYM����5�3ܭMT� ��Ս�iS�)YfSW"�Zx�8`M9�ꆙ�$C�+7��}��@�rv\�5�z2P�3�)���a)������s��ԓͥņ����@������߫��*O��(z��R�"h�N�	��G<���>D���x�,.���������� �����?�P���p^VX������+"��d�s�y����"�;�r��v:������}B�I�>�j\=�w��
����-��kjK��(�I���(:��mQ�Hk6�����V��~��AY���]��8Ծ�:,��Z�����=�&�\�xR��r��<>�F1�D$
]�u�?�>�s���k�� |;�q�h;�$��O��8��*"�(�q�j;Q�l �����Ȩ fPPB&Zp��.$EZ���AK&������mu� ������q6��E�Y[���v+6l�ϟ̤j�?o�H�{g���X\
 O*+
�{f�]{�	�F8��5!�_�k����v�Y\�c~����vv����Or^��)���]����vo����x��Hk>=�싲��-��=-�,�����͎�j�-	�� NC�
���rv����.�&ӟ6wd����/�6P
�Լ��Lg�FSR9�\����jA��]]NQ��H6�8A��gY�W.ol�\`q��`m�A��fS���R.aw�^���Z�݆=	��A�°]S�YzѬ�zWke*9�L��)Q�ˮ"�@
2����<0�I"���?}���ƒym�Q�PM����X_+6F��y�5pQ���p*c�&�f����6�������p�Q�	�w�6���?3ph��0p�^�Z\�SZl�����f$;�c�W�;�yO�͢9#&T+��)> -o�
�rq�a'��t���js^t��3z�8��JvF���nu�ڦ/&դ#����'�~^��|I���i1���%r�8�he�ی���=��_������ҁv��^Z� 4'd�
6�!N��6z���$��-~����vU���*56S2<?���[��V�#�vJ(�.LpL��
��8�v��ه��$C�%��d�K�����<-�x�o��8b.��]�X�v�����tJ�w\��! Z��+�@�������Z��A&S�//v�	�ع	�ї �3�1\H�k��Sv%e$�шd�s�ޔm�]p�x�PO?��풛�P��|��`����m��.���\��)�}�P�u�
_	,Wq�}�1����Fl�m��oB�ǜ���"��RT�VP�~h|����z[�`q7��5F��~;��U[�a?�����O'��Y���}Z�_؎���{]���c��)��(=6�ç����j#�ʘy������0\���$ֹWOW��(��=����=��� �D����n�^O��m1�ؾ��;�<��It�����};똩糣zg1s�p��R�F���1<9�,-�vްr�X���s�,a_�98%��ศ�$��I4����=)a�,�E�b��|���/��5/��E�W��]�b8!��7ޯ�y��+S�����]�����|�H�ĉV
�9m���V>E����p.�􋫕t5�,���%�s��pDNb�dF��|���@/��Xȸ���q�%6k4�#�"[E���4F�?s�Wr��5f��BۖW���T�����BFiH�/\I���[wy���(VE]��%=�e,�\��+�r���{Ԗ5�*�G����,W&����uU��Z��z^�grE�l�� ���"�ҹ>X
�W�{k���[qᵧB�F�dJ��jn� +��S9v^�C��t�K֬na�6X�?�D39h��	S,���3LPF/0��h�mo�?�>�4�J����kA�@	����u��Z�����1��A"W]Djm>~W���=���C��T{!et �������	u<LR��J|Z�s�h�=�!*o�������R�{S��v�S��cڃA`UE�l�f��"�3�8��Lf(�D��������
����G:QwW��K���)��    _`;N:�U�^R�x߫%�dV(���^		R.p���(����|C�xXa�k�&��4�*6}�잗#W�r�('�"%~�ٛB��B"�/�H����U.Vp�k%�g.}�R�򨳗yDf�b�'҂$ �]�#}��ol�+���L:B��"؀S�:�l�-����J�PyS�4Q\I�C�MM|����Pw{�.]Vy���z����B�Ќ��9�:�%�yi�ܣl���?-YS��h���ؖ�}/�0�
k�H.�䁙����Z�򢸺�j��o/G�
��;��˵�bv���aP\wy9��Yf�cx�ua�D vEF��~+��g�D{/�⛋5'h���h�pdF7i��j�bЛ����>���O8�R!O�o]KY�n�E��D6I�3{���*54�űq�[x�wq�� 3��&Ә�벼� T{-��|������#�|+��X��w�����v^�5[rS�_�-O>�t�Ip�g�Zh��K=��y������sS!��z���}�6����,U��4q�N�q����8cc#xlrc�#Fπ�t�Z���RR����R6� �E~"�2�E��`�v���\DX��Z�f�s�Ku���.�L���$뮲K%�Z�]�>e��e[����n�H/<By��3ny� �N.$Bpueqو��GY�eөɽ4�J�qQB4&,� b���v{��ϋ�u��[�a��Ϯ��p�\b�wh��<M�)�m��3��RY��:c
ȕ�L~�J��[�,l̈L��4=�/�k��4�c�2���B��T���D~��h����1����z�]���
B#��}D��ہ�n#�Q�fa�Ld��K0D���E�&"�J��<O'����>��\|�������Ym��A?2��v��r���\.��)�K�VO�"�����j�-�w\�?*si��Xɞ�,d1�+x'�kÄ_2���/J�Ǐ�ʴ���n�ť��u�bC+�w���gg�3�]e�k�@��S\|,����JOux��%��^�\����Uw�|�U߉u�6ƻ�W�bK�s�;�����z�����4&ƈ�:�;Ŀ���nL1);}2��%S�9ױj����$�q�T�J1"_����R�j-C�O�NHc$�0���q�g&��߆Qa^�����\�d"|	�:��G��>�����.6<E�r�r�ӫ��9�i�+@�u��nP�s��,�"z�d@P3��V��M)4������/t-[<'�s�^�=ߕ��/�q���Z;q�u��}�]&�������&���	�?[�a8��A/�a=��wR��mEc�L��C�(v��D�HHJ[2&�j��z��'�)�!�N��[;��I��Ž~�p�<;,~���45����=��������gw%<|vC�:�E�f$c3W�%�Q�Q]��%pa��2
&�y�+l2҄L&-6>k�΅+v�̜��/X�b`a�i����a������+`2	�����<gz��%�8r�َ�A>�h����:Ԃ��x������#��������-&S��9�w0�?�u#N�j����I*"�w��W�YO�5��s�ĥ���cW$�}�d���U���x�ڶ�r�p�a�K9�bM��ae�Q���=ɸ�+�"�[W�Ioe5<��E�4a�c��t��S��]�y�ri܄/���dD�p��)���Ýz�<�OCX��ד{/��Pt��w 1�K 7��2�'��5�� ����j�U�xfj�B;��C�1��h������ؖ�-�j%o�S����2�ޫ��k�V燏�^*��HL���������ڦ*~�}��UY縮�ω�%cI̢CV)�n�A��p�$��wޱ%�凙������Ռ��y�����	��ĥ��>�+~ɽC����+�xT�Z�:��)�m��vcS����61?h�:��
�%;n�5I�f�Ҏ{}zsO�]�/*��{ߕ��؏ye�Ȳ�f�J������sM�0Ŗ4���0wl�:*,������<��������?�[)홝������)�%�1j"=�M�"�Zf?��$ arK�t��Rc�C��w�L�i@_���"�zܶpǤ�����=��8�,}�R�"���
�uyg�t����.����ͲCDcv����ְ�ϼ`Hk�u�)��\a�O�j��}�3��z<�خ��������$��}@�T�A+a��}��L(`1��ܕ�X��ݶ.��"m��K��)��ݲli��|*���͓~�d�,�sD4�DcL� b��]]���_?馀���~*Z�U�Ya*?����FZ"�u�?>OB�?����^�$����j[��n��XEf��g}-T�i��j6�o-��m��;��Umw�$��_�[2Y$��(�)	U�ǚ���޵DM��	��Y<�m<�s/׋'�׋|b)���?�P�=ە�7��n��)�	��f��cEXa]eoy�^w>7Ty�z�T���&��[<bE�X�Sa�'HkCLC;t��1��˗{ބ�n\f!���vP�ah�`&��PXb�K�$���ER�78��{���Ɔ��%ƃ��b�M�Rp�=��困�UjE�G��S���|՘\�^��$����^�t~LMp
2�-{��\�X�Rwv0Y���t���%�n�2n�f����*�Yz�7���MyX0�dC&�$s���ᖼo�[WX"H�~��G��������ϊ�/Mt){cw�`�=�ت�=�b���W�>*$�vG�Ri�q'�xY��{1�4��(��Ƒ�7֚�AV;9?_Z���R�5u�+�j�V_n���{V,5�κӑ�"�|�����ۢq�/m}�˅����&�����;�,�+��,��N�u��Xb�-l< �i<1���䮰���S�ED��^oY�:�&Y&<�A�4��g�)��#(����:��s�N��͚I����O:��z"%T��k��[�l��ͱB+��l0�Y��O?$!,|J��X~��!	��v{-$4ͷ_��PH�`3�8�t栜��_�M���5L��:�[á��w�O�݅0����aY��Aq��G�Ǵ[��+[�0����i��^}nCD�¤�3nB�-q���ѝ��V]C�R��%����w��H�Ds��3r&T�׿0t*���N��]�y(�jj�����d`��V4l-�ݩ�m��.��[�Ĵ�SÎ-��U{O�<��*����͍$��y��R$�6��ava���wr]�U�%���Ib��4#C>N=�Ɔ/��'�6(p��Tj�cؓF󹃼�;\�m) m�m�N�n���'O���\���_���8mڶ�_c�Hց���ƣz�
t����|�k-�����t���$��sk{٧0J�hV��t��iw�r	�b.��$���{z͒Г��ku?>��)E�IY��ZC��P@��Ġ ��1+/$%�pV�6A G"T�H]8�2��Ų��y����Τ�9"ɉ��*T� �f��ݗғ��Q�;+a���%c���2	�����{��瘅�o(�i�}.@S�é�u��A<e3i�.٫�Ƴ��cVgaB�s�9���T(�B�e���/)�V�U��TRG6��f���������PYn�o��Hg�^"�^Y!UFݖ�ӽ�O�]����~�kV����$���i���FȒ�M�UY& ��x�G]ܬ�z6�υ�A}]m6�2�]�¹La���{�dv
�x<��R_l����K�J�ݥ6��8�kI_H�ޯ��2�Ux���鷸�h�Qa� ]L:Y�65x�L�u�n�0��[>�Yq(`����퓟�ܛ��c�I�BP����a2��N�%��wKv]y���5�j�<f���<�͢��!##�!f��)a��jd����Z�6�<mj��z�k�D
;�!=�uIz�L���x��
�uYl9b���3�/��Z��
�����*���� E�����̮Cv�����$�$����������7�L�c�lf����������Y-���4	{3rb9N���������ú�h���2�    ՝�n�Z�M�'�!jHCnF��N'���������R;*Yٺ+��p[�UlX�����Q�佺��k�����ux}D�)����^�H>S�^2e�3�)f��Vf�B��JNfo8����z�<�����k�F��?a��iN&1�b�BJ�,C Eƿ��ѕC|}��pk�'$8ML�4��X�<�g������e�i�}%O���|6��I�ZO��H}=�Z!j#%	y&_�p,HG�FA��I6�؏)��_��^�uQ��ߎ��p�r�ؚQ��?dץ�2F�3��������6U��&MYH>|?��%���{�$3t���kh���uhP�0�aY,#M��4!�+��|2������vH1h�3�Ŵ���(���?K� ��
y����-���0;!S�7�MzГ		J�MvT��y�:fd/����ʙ�=!W,
��U�_�N�fh��3G&fU_������Yz�Ԃ����)@L�b	����J4�P��1ߑ\>�����q���iژ��6����7��
[as{��WH=�z�aM4����q[:k��T_�"g˫-���R�B��D��]e���H-����30��C8j�$yЕx�"����G��oĜ��Z�=+�hyI����W갉,6��x�}����"4˅�ow��i��/q�eB­A��$&���ԶO�9��>c���іK�,"Z�X<���G'v Su��Od6�jt�hs����&RK`6(���e��w���0-��|3��P,�	ܯ���)��H2���a�`���-�mTS{��R`Ț�n�����.�^����U^0T=�z$�}�[�;ȧ�	�~Q�����yc�*�cq���߷�lA@^i�z�&����	(���JjG�I�Ŭ�7�'A`�s��y,	k��J,v��ԃo˞�(M3m�a�$���@$-V^&��l���@�n���6ZxQ����W^��MQ_ҙ�Gn��G���Bp���/i�xِ�c,̳Ցt���cCJZ���ezI��+�U7�'Dz��vv�%�� W����:��Q��u"�Y38��v���HQ�q]�n��8'G|�j�x:d�l�Y9+f��zS����a!���g�S����ܐÉ�f�P���X����r����˗jvZ}�>����MY΅<k�-t)kr�f����6N_�d�������¥�[-c�O:�xϫ�����{�̄�6�=��W�[��c{�7h!*,i*�My���{��aEΊy��zb�y-�w�������UN�vK@���VJs}��V��J���9��M�M���>:���l(Z����۝`���H��#��`�6�Ԉh^E������'�$�D[���,-�X��'L�q:���v&<oP����&�����~�d���-����ǝ����Ć����x���Mr�5ܚ�n�f���p,��[2*����N@�R�F�����-�zv�h�b�3�,#�}� ���	�M�P�����>+�S^ϚmD	�|�hq���/��,
�p"�ТŜjy�ԯ8���8�f2^&3�v$Q��按A��R7�e�5x������޵;n\�����w��r͸$�A�|В-�V�e�-W����T&%��a&�}� ��W��s]��� �����X�zn��I+2#����f�6U��ёay��B�ړ�ټ���~��[��.e1c$��Gr���2Ĭ��&��;\�5}���I�8N�4�{��`^��[�z;����ĸ����7Ͱr�)y�=��׺�D�l��;M�0�PL��rw��M�aZ���I��F�'��@bR��ww=���<D�ŉ��'����.n*�J<��v߭��i�]J��L���mp�u%�J�0/�O�+�kl�ȹV�w�tJ��-��1��M׶�������ܳx�y��n�u:��f�	���|��;�b��e�}*)�O�Zcr"
�-wzê��q�x�'_����0b�(;)L��l5�M��X��r�s�_ʸ\AN�d$�������SnwKއfn4�&��3C�[!FWKB�����k�~�*Xmfg�$Q|�������	���#���=�8l�o���>�'i%��ƣ8ܲ/lIqBE�:ISO��^���g"Q3�C|��}�H�V-�;�1��r�Mr�,���܌޴|�]�9{��C�o����:���[�ɔ���nqdrRg�LI����J*�
ɠ��&���������]��GC+���$�cs99?�c�Z��%�� �D2!�p���;n@tQ�
֜9,8R�3��nz�{ �R�S���"����s�gΏ�G��$!T�&0��h�����b�#��·�Fh��k���X�3����1{-Ŋ7U4�0mD�d�vG1��e`�w�f����`�:�g4��k�=t>�ln-,d������T�B���J���Clz4WG��/��ʓ	����E���B����K�Rn�C^�����?aO�g�Z����O� ��R���,�Za�"�d��MB����@ 7��j�9��|�yR��6�R_oy#���@/�,[�V%ơ'��m�V�o�q��[y�_G�4�`���k�KL���h�����0�2&9B��x��'�����QpB�&{E�^cK3K� �9Y�c�9Kf�������F�es�*�em��Ly6��&p��9&��H��9i'��bQ���v4^�"��	���#,H�SVˏ�a,�6��^7ьNO�R$��R�^�ye�Emq"a�
sM������k�;�PZr���;b~>�����ewo�"v+M�)�}�>AǄ����E�sZ	pNs�s2K'��X5�8[o���+���@~�A3��O�_C��� _������I����~w���q�/F$��߻#�5꤀���eۨ����]�3��A�$�xW� ~��YH�iW�Ǹ�o��������?t�ل8|y�ۀ�
ӊl1�T1�͊4oJ9u���p]�~?X;D��V����x��t}��x(Fa�a�X�l+����y��f��q����,Tg0��Έ�b��y���םMY��C��fXȫ�T�Q�}���-����ht��$���TlH�z�o�Ӄ����������ʟ�]%�!fΛz	������,j��@��,o�t��ĮV�i�%�`�	��]�M��,E�Җ5«y�v_���_(V{��,��~Rx��<�p�-I�B��+��"��$^ڟ,��ꭠ�ԒmR0[!gD����uL��`<�7��K�DA�	�g+�a�f�`aP�����#q/�3�y3�y���ۡ{�y�r��c�u�%
�ʮ��DĪ�0wa��bx<�V�}���(���`��կ�IE�����Ͱ��7�OL��`����]{~��T7��+o�O�=�%�`��ė��9%�+K��9u������Q����&���O�Lw#<x���mSZ�q1���}}�"+4a�YN%�|�;�ᖽ�/����'ض6	��3�[�Y��$m�%�Y�����4_�%�Y齠܉/H�P�x���OF7
/ͬ1L+Fߚ�Gv�ӻ�8Q2�zJĲc�z���o���O����&�AbVR(RM��kS����FzkVY���������{����a*���I��zl1���`��Sq+�"7�,��yU&�H�����!�&��b�&�ta���g��$��>�����В]3"�R�M��(Qr��/��a.��qb�ag�F5f4���%�k/g�.�;K{�:	�b���
f�%����0��r�oruL7���rew:���)S��Q�q���t��'��O��T{���D�И�������B-���s�j��5��\��6k���Kk�k&�qo���a��f��FmB(��a#L픚�0�ג�hr���I���L�cAQ����H2+.��0�c����^%ꯆu������ú�vV^
ړ �����e$I�0?��2=�͖��WKd��{ݜ�&wm�wg}x�v�$��    �{��+Ȍ3�YIۓ1��`AB#�a؋��\�σg��A�Z��D9� �b�H����$��-I%Ȇ�������@��D��d*#a8�n���t�x$����q&Z�Y����i*�!S���C,i�o�j+�d�]�V��כK�4�I��4Ǌ0��$\�M��?֬u:���`�$�;��tՒ�ݤs`�Mf�
�E�eJ�fx.5���Ư��ff�Fgm9	Yx��h�ol��˃���ߴ�m�(}L��5����03���cZj����47eldL�������}��F�5Me��^QL,ˬM�Q&r��%N����v�����?�6[���n#i��IP'$�I�FJ��}a0��W��Hln�dצ+=t>�w(K���r�_���ج-�E��R�^	�D��Uz�DJ�mi*�+���`J���3s��:%�}�wĮ�Bb��0��Y
3�%��M>:t���ͯ���R��Q��p�*���{��R}$�m���.��f�FVbS=Ź���s/�v0]��^_��v��
k���Vޤ��n� �ϰ�ժy�?���|�;`��E���F�t=�y��M�B�H�c�����~(�WhT�z3��\�u�,��u�󖄘�9�&�Q�����?{�|��B{�3�T�J�$�?������,d���Z�'u�v��%$���2�^��M�޹B���_�f�<�8-K�t���1��	�۱�\&b��3���K����-ھ�pHR_ڽbj,S�1�6x��µ���wJbV~�L�0�鹙\�w���C��0c؜��ab�*�z=���%��|�J���efB;1�[sK�:'�w��	�2^���^�}��8���/\V�>F�O|F8�Ĥ�ho�D�2���fY�?����D�j�'&{`n�$�&���k��_SGR��~�4ʳ�x��96��?��T��)�!�*���Ï�S�+^��s�[��Z�*��2�[�辒��.͝�����!(�S�t�4����1�T��<1N��-�⹌N�׵�
��y�G������܆��f�Ud⒌���)B��?�@\��vLZ�ν�_��{Cc#�M?�*q!��p�t��M#��H$���5W$N%� &�w��R'Lfj����F#��9�iGJܹ̈́L����^Z��w#�+jbʕ^K�:o6����?��ύ#�P1h�<�P*;-��[���js������H��h�̭0��5��eF�lt?ךf>�*�W���Z���;lC4�7��O~v����N8~����li�k�[��Mn
V˟��,�&�n�^7ǡ�m�:����xY��8�;m��� t��#!lj�$����lkb�;����D�e�\�W����� �ʉ�n�2;���}_mor8
���PbKa�S82ֿ������K�ZKu�I���z�:�I(�etjK˻6+�xW�����L�X3S F�5�'��iM�-��۟�$#����k�OJ��[�( �~s��+�����-�^n�c�L���O���mW5!Z��V��+��i,��N箪�9>��P����������������u���������K��W:ńCK�Eb�cf%z�h���k��ݱM#a��j��x���[8�k�$��`�<��u�Xɭk9x�,ܖ��Ȇ毚���LKW�=���|a�a <�8����{�+G: �	�/�����(9iq�[
�YO�^TMK �����ϙ�/������.�s�A���:���
��������>}�����w��G��<<�ȭ1.����2j-0�bh9H9�� <�^�D�4�g�XrKF3���|�]K�uK(�����ɘ����Yi�@�Ο=u�0�Q+��ss�<?���ݿ�e�mY:cP�$�͍i�K���k`*�W�\.��7�/��fM��4��s�)<֘�d���|%�(�����Ƭ'-d�
^P�޸c��I� _Ĭ�Е�Ñ�@-v��}]0ídn\�N͜L(���`�n��u^K�O��\K���+^��N1w�0��O_�4"�lz<�\�z��<��
8��p���Q8Zb�a�^����7@��{I�z�2�(���T��˕��H�҄,��K&h�Қi�Ֆ����s�@x �i���$��J
u!��K��5o�UQ���k������lĘ���s��+N�I8���<�ހƎ	r��K\1�ի���'�"9k�S��M��R.�s[^2���j�HA�~�������YX����F�'�K7�{��|:�"���z��/��[j��Nҕ$'技���w��������7p�r��.��_=2��J{#$FQ�i��l��d������+�j�]���3�Q.rX����քfڸX&:B���Q1}W�p���~�t��_u!�z0PJ�<�����IWQ����y��##�����#��� 5�v��)L�YQX_����n�u&[I�IB q�sO������8[���܂�B�;V�3~/9�hư_����P�,����}#��(���Y$v·w�".��uS��e���2�&'X���cIsO0��7~�pÐ��Y��p&��ϞEJf�ܴuu-^�;9t*�c�`2w(���ԝ�Sɛ�r$S�%"��Ŏ���)/4���D ��$�K�NiI6���jo���=,$BM�31���0�S@���W,	0�2�c{|�B�xX��I$L�2c��"$�ǣ�X�S�&+cY�ׄ��q�æ^��%�h��
2W�@;}���m��|"L1n��r�1������xg� ���b�'�Y���7���ИD�+���Y����?�t�5'Tw_�͊D�i�{�]ل����vw˯l�����G��8׉�-���}��=�+�3���$�,h��mc#�nk֜�{��d*�`��P��P�E/퇚"&��
���nS��ڮo����=�L�ym:���sk��y\c�[�"k��0����J���������P���j�F&Qvj	��ϴИ�DɢԘ�s;�9돫���� iX�0�(��`��V�Ϳ�"��!|*�����R�F�$��u�^�d����*���Ȃ���d0_��FeQ�{���+�1�x4W��3xr ����3O�$4v1](#�-� kۍ�.�ISRhi��Y ^�˚X&�O�E����l���%�$C�7��z �`Y�v'�\~����Nӟ�5AI��\֓�xo;[�F��M����X��>�eu�db1Ă�n��Ճ	FSb q\z'p��t�N��PP�(�FB��-��,���{B3K��Y�Y��E"!�d���_���3�D����TeyÔ�7�p���+��,,NQ������_�߳�ː�J^l)��_ƥ��0ħ���қ���w���!#�E<�X�w������������ю7�$��U7����a��i�זIm+�1]Xtk��k5�&�1��Y+`O�I02����(0�8u~cFK3"�Gj��fn�9�S��������G"�2l0��$�#��}4)�/�`���d~6Und��F��fŴ ������Y��˽�_�:rV��6��mf��xԡ.O!k�Y�mhb��O���X�6Khu� ���0(�)+�������j����l��'��!3��:k�x�z�g,�xg�#����aqiW o�����ݱJ�TF��y �����H���R*Y�VrU�S,��/^:,� V�3ޏd)aZR��D=i�a[�cf`Eq�Ϗx'�Lc	wLS!�����<�"�'��cq����j=��C���n|;R�:^v-���E��6��a�	��n�|\5�61>IO�6݅�iB-^Bs09�:-X/��GK�ww�l���l��<�x`Q�f1)�to�Xzd�7N�4b)��}޸ԫ��Y�jZCXf�r�E���7�b[jN���#�_�WI��-�>/��Ŝ(��� �Ģ���V��Ê�-�ۛ�n�-��}�K5Z8$
B�EL:*��gSh���M�+�����1�2d�5̣��:��ķ��ڐ�Zr{��Ly���@>U���_��Y�/��	i    YI�`�*H���b5*)(��/>�X	��E�m���튛��1�3ɖ����BOH�C�t�� ��{jGT �p4s`I���2��A�`��?�͐���YAd"���p-cէ�9g��f{�l��v$&#�L�4v����+��T*2\m�@H\b��T��|��̳Т���)쪏���B0^w�!��B@��Tw�R�$����oϘʂ3�t�'��g�@�R�!Bo �O�4����s݇1K�F��횅1�t��v	�R���ז�AX�@^�����n�5α�XR�6�6i�o)\V���H xw��v�� �	'�g���3����;���ss?d�k�����0t��Y��l�0i�f(�Y�pRe�.7�,�4���d�o�t	&�S����Gy�5�J�l����'�O�՗p��Ԗ8�B��iTK>�{��1����8ce"�4�X>Rd�i3�`�&�$�*�"��h�#�AK{>��Rb��V��$[�j�Ĝ"Ch`MQ��}��[��̪��0�����p���r�3���X�o��'L�3���1�'4c�^F4cwaO?�Y�y���6���y�iB���HƒQΪܻ���M�ݵ5�h|�'�֝��.��]m=R����MM���@[��xɌ�6W.,�>��?C�w_�)<����T�,�Yq
�a�t���[/[�*g�8&��z�ӁZ��'ſ���Zs��%Y!�oc{WP����ܴ}u��m�a�o=�����ޮ�{C=�g�Ltbís�p���m�Uy�\��UY���X�D��o�`��`R�	~L-X6��=?����Wy��d$t�W�u_h�i?�<�W3��.����f8�C������~{=l��b6A-���,&�8����&�
5Q+�����S������j�&�N�
'q�D^ϳ9�g�O���$=�Ik�^�$��B��)���}:˳�`����{�4Y�pv����7����d�u[��睔��?R#���
�Y�!�y�ٽ���6�l�<M=���-S���s�
e&	MmxǪe����'�S��{�J2g�#�z��#Fz?���$�4MX4����$�]�;9BfHG�HcOmb��7){���4#�騴=�&�p?ks}������iH��4r�fж�5f�I���j��_�Eh���2���?G��>#娢FB�::5\)A�}��>x5�'0�4���3i/�x���2�o�� ��ļ)��G�z���n���F��:�I��ml��ۺm��#��Q��T��s��D�?���'�����������޻�D8�8�јl7kO��zyMu�.c�B��}�Sʵ����J��D̷�����y{�*MA��W��A+*q���謹%.��>�!�sB�j� 8���=����t.��Rs�E$��:-�v��C�Z�-�N�!�`�U^�ț�F���3ۃ����I̮�H�YG{՛��¢F�v���r���Y&����Ǘ�����l��&ل�XE��17��5F�W3L�B��9��g��P2Ä�v�TC/n���(��1��p�z���&���a�*���bV�j�.�b�M�z�ۃ�-��z��ا�ؤ��bn3��2�CL�|�[M��!�Of�{gq�Nz"9�<�)�S�+��&f~�Pτ�y��vN-x���H`??OD��0wF�ÐҗwG���Mw]MOcQ࣠�Q���#1Dӌ힙���}5��yZf�7Z�~�Y���o7�g�/�h��e���� �8���o.�>�)\���G4�-��u^̌W�/�]��|E�&�U�z�-���,Ic���f��Q&S�DǙ�M��.ef�������MuWWp�']=K1[7V�&�j�"����l��6;R9�+S�~y�I�p�r���"�y��/܇K�f���'����l���*3���ϴ[�(��n���W���X8���߳�a;z��뫣ߪߞ�OC�p
�d��dz:�"�� �ES�l�d���>�`���/ݿ<A��I�2Os��T�W���h�O�V�lqy<m�6}!�K�������� �ܭ3ؽ9'WI���
)�3B���ch��IP��͢k���X~�n	|]q��/��6�r����a*�)��G���Ba���;���F��]���ı秙��%�Yo�0��S�-/��0v��x��xҋ\��B�Ei���%�ߵW9B�覄��n_�eW�r�$���3b�Cc�#$�;�/|�S!Ew^���u7b���@�w,孝����4�x=9����h��	�B$���q���[��PЮ��\��<����3���􆌷�F~~V+���e_�9�' ��i�, l��B �Ȣ��*����h(�%e������M���h�e�9|zS-	8��9|�֕P2�H6�0dG�SFW�� ��'��'�qs%!���1;���?�:M�f;��\��+c����o�V�m�:��,v��G
���y����8�f*�aaA�fͰ�I�B���D3�BGq٭n��Dwبt.8�/�q�/�fB�Rz}V�;��>nn����l��������R��q�z-e2=%�������,n�
�~��GΥ8���� �j.���)�O�M�%l"�^�c�����&(���f�^xn�0!-�V�7��zo�9ׯ*�u�j/ի
�=��f�[}�IZBzV�~a��j!��lD�XZ�?:��1+:+�U��1���r����=�3ц�8�-1�>�����@V��]�Hh��вΪu�����=d0s���i	O1&/1B����=�X��|=�22�ka�$�ZlBZ�l���On�승a���㠂>wX1�sB3��TH���ϕ�\������<�j��PV2)�lT�j��!�	�j\�7�v����|ʅUA�@��J�u�`��^͘�b��-��ܤz$�zF|f���`��W���m�0wQ���n���-��n�q̐�a�MҘۈ���ԖU�co�(��լ>��Ó������!{.Mx���9x[�,ג���/Qf��.a$���*������d�w�G>4����b�*x��h�L�e�$�������5d)6��]v�r�o'|�z�i$I��ACo���(�������/�S�7M��w�I�����3X��;/��~���~|�	ZM ������fQۤ���T~2�#)��/5{�`�"$��y�A�5�j��:�٨=��涭�ѳ��=�䒼�� ٘���3b��t��T%��;����1��e�͆��S���9����,+�6��g�L�(��������Y��j��g\��N/��u��8I�-�ˬD�S����I�FE�Z��Y��ҽ��#��kX�YLo�Ju
A^���͗����f%������m��0����KÚiM�`fb���"&�6x�J���3�6a����3�����S��dYd�g��z3�'�˿0�M�,��=)H�xO2�XG����۩f������w}sw׬�R�`�l�Y��YC.�!��TF�T`!,��{i�Q���?	\�����OŞE.hl*�2�	�`�o~���N�Yj����b�화���o�)��QEY$f���J�뜏���a�IllR$ښ����?�u�~\=3��B�
�1�1����V��	O�'>H�e/)Ǚ\�m��E~{�/a�M���O���$A�
���<���^"˻^����)��E^��՞��m��,yC~��M1V]8�6een*���5R�������˙w��ۈY��.RK��}߬���7J�s:�|�sc��5$���2ŭ��?����H9_+2o�
"�p�[�'/�;_�IhJv�6����ry��76��B������N�<�.��@B�ׄI��lTF��D��xw'�z��iǪ�>��e�N�׌f�5�����W.�z3ԛm��k'A�R�����F�'�D�\�;�#�z�~�JHNY��鶳`�+N��"�>o�/� �����7/:�GF�{�1	g����Z�}Q�-t?��1�o]�\�̃_dq{I�Y�>B��ب�OyY    V��~25��U#l�lL�0��R{��#B�`�+I�+LL�����R�0����㳬��C-)�؀�����i��I"�S�KС$�	l;*ȡ�;�s����+	�T��EJx��s��-	�8\�P�eb,�r�^�c�C�i�isYx�m(iz:����1�NL�9�^���q5
z���]+K�d�3�Px��k޹W�Z;�6�v�	V{bCf&Ռ
3S=�����L��3^lBjc�DS��K�Db����Q0�ެ�Yk>�ǭS��8�L聥��y��jsy�z���B2�	)Ҍ���Y�Yi�Mf%�:�����z���&Dt�-��,g���T;�~fX_V�n�2�O�A,2��H����k/�f��Gqo�>�?j��?�V��BDq����pu5Q�i�妮҈i����/[��_��+�X�|�s1�{B�=|;�����|q����t{K) �����^N��E���a�	rAbUD�l�d��ѹ�e��,d��&*�7�0�6d�c5\r��d'���Y�}��հm���Ė���$Y��f�5���^׵�k!d�m�J.:~ԋ����3���G��Y�����x�:�y�G�����:�*��v��#%	����tyM���zB8�Ëj5�,mڐE^�HJE����i���XC~&G��!IX�C��Mf߬!2�[��"I�D�_T���G���0���\��r��#��e�}�x?���p�~\�ۭ�2%3�� ��hR�0�{����$%�c/Y���j���!�E���MzRu>튛����#r��o�ѣ�3�P�osy6+�f[�kh�h{U}e�X_251ё7D9��˺m����Ü�y�G�����Q�mVd_��o����*:J�(%q����0k�dfVė{�C��x�Ͼ�8Tꕔ������_&L2��<��9�I��>pl�� w ��#RG��ސe�3�ϰ�/a���`��J81 h�-�cu:�Tsրr�z�f|��У�&�G�]�+��$L&��R)�:X��H���B��H��c��ޓ�zG4S�x]7x�%�fx��Diߑ�Y�,���1��J���V�#���Mp�w��^�M�S��{}G� 9.s���P�����Lgq@%B{R2�Z*���R.�����G���A���WGt�}4����������7ݢ[y�^0������`B���U%��K�����<�H�b�0ݳy]��þ�������X3�$�|J旈��8���U���EEV��ϑe�2�C���dh�¥h��>�����3=��.˒��KeI�D��y-e���[�kiH�Cl[��ۑ*A�/C-\�a�ltQ3��	�7$�_�k�r�h>&P�T!4���܏ĴI������[o��VuN-�y�ZD�}�l����@���D��\k�«���������T���ڢ�?��[��p�
�^g�Ɋ�6qB�ޅD��e",�L�K]�L�'�H?e��Rd�*�#�rW�FWg�i�:r�e�l\���fX�ln��`V��"g����WiG�P͇���R�Zd��P���zK�#��������S�8MRGg�	�R��t��-s�}G �yU�å��~u�k��Ob1�+�K�G(7PI;L-�T��_+qf�,,��k"%s�r��&�0�����
YW�&��e�	I���=XjuEP2)<w{�b^�$�Ү��!���\��꘼���Z`n�w�y���WW����om0z�~�`)�!�L��l�N���W���ǗJ�0�}�W��p�,��o1 @��4�]�h�{�?0y�Ü�t����"�Amzyէ������i��|b
�me�q����&!N��(J\dV���
	�����L�����{R	�Vl��q�J���;���[VlH��=��!hAu���/"lPaׄGb�Q�af|Y���1o�C�h�#-��h�Q@�Z�e)���	�U% �m��$��8�������{��V�x�~�%�<fE{]��'R�כac���7�BX�������KZPf�q��z���(r��X��|�z��M�#_Hn͗I�\=L�byL`Lzư���Ñv�uk��{B8�t.�	���D���g��q��y�e�X}aZ�z4�&%���^t��ˮ��1Bx��W䉎�W�D�M���p�h���B�WJرa��Ĩ�^u�~�`FbHle���$Z2{GS���`��SY�'J�)e�J���1������s�0yް�#�R�&v���Z\�_�x,*��E� $��#�`[�'3�`�A��YIpyW��q���D�+�~�����p*43O�P�#ʦ*6���}�lв�'�K�Ft^��ܕ���j3���I��7]d���<O;����z��}��&=�=�|W^K��r��|�M���¾Vzo%��Mw���z�,HaX�'�.ݎd���7�rrw�/Qs�آ�N�όG�^@����ӂ8��+��nJTJ��N�7�|��UB?�m�f��2���a�T��$�q�"�˶��0��m�c
�Iw�2W�Zݠ������!�i[��������0��҄X��U����=F���A�Rx���m��������~]�7��0�����T�ةpv%��TIp^
(��ϘI\w�t��&M�z)9�r�������W�g��߄Ёc¬�'��I>7E��8XԀM,���pϘ+�;w��!���]_�d�$�곣$���㪛�R[J��I�n�#��A F_,<rL��ޢT���.n~{��ź������'�$�7jw�Q_ji�y��-g�S2���-�!��)u��`�y��L)V�4�����i�2L�~є�	>;s��>	s�uw��nZn�0%����"L��w��tY���΂���Q�0�&%��e�V��H��,(���AW���,�,�\-�p�׫��Zu��=l���d0~?�+��R�u����3!0�{�m� k:S��>�0�8,��̟TX��q��X���+U�7M��Q��a�m��,N�&�P�iy{��o��MX�`A�6��lk@�>3=�9J��hg�$(h{��=M�/�PD�o�"�̽�&�`��+A�W��XF'>��?t�XF.�v��"a�o����wҵ�꾚����X��x_/��?�wl�:��_��.�4������'�]�6J.���t��ٝ��bL�C���|��tA�c�'���b牐�5�	�1=����W���	 |	�Am�qR\�4çY�j�n�p#��d�_$���xLR��^3�U�^�(j��<T5��c���n���}�:/At�Xk��m���O��`߶q�I�q�%�Pۡ~ ���� �i�Ώ<Q�[^��t]K{���(����N��F6�wg^�RF��A��Q����f�J�1J���Z��H�NJ��t�>5ą�O�\o$�Ԝ�>l�8��29�E�M:�r2*��Ʈ�7߭��`��،�<���d���Nm)|b�?)�l`~�VXLxۃ�����V߯� pT���]ݓ�R`�*��4�=ƀ0m	Q!�$�;���"�wW�D�X��)K�m{k3)e\��6�=��5�{����ir���T@�C���~���a��!���7Fg�؂Bh�����K�$bu^CG^�&�("�:XB�����zx�-�i����F��Q�W��9����ؔ���*s��&��}�E�~0Y�_U�%��qd�e��>��"D�o����|C#Wb���ԅ���"8���d�|C��%�Hh���'M%l>�
e
�Wդ����;Σ2t�� (	�Z�0�?�77��7�)������}C�mu�U��	���_�;^$W̜����n,�]��OC�����e�0a%�6$���D�.��K�&����+e�ژu�J§�@����i�� DI�u)#*m@����oήH&UT$:��}�z���<�Ar����,;&�nG�V/��3�ə��
��¦H�}��1�V�ε�9z��%8�XY[�ン�%#���3}����[�3eVG��-^K��� �9.��J�fI8W�g�m����Ҕ�����    y?�Vu(YD�~�<x�ȼ��c���m	�n��/*�C(������YIBR����5e����[�Tf��a^y�������0�/)"�1Km�LCs�4+��#3,���WAƭ(�ay�0�4_ћ��ò���g�����민��3`���:]_�����w�nfּ�ǿ�T�����`��9&���Ԯ�B�Ϙ�j�q_V��>�9�%W4a\�t�f�Ɯe�5�^rG3��W��Ng�Pqf s��	���/� }y�9os���`!����./�_�<Z�r�rkp�w�@_��򳀙��$���4/�Un�ۍ�t��#5��\����.� 	kɵ�?#8�t�+�q�JgSE��C3;��&�c���\I�\�֘]��lجWϴ;E�ܚ� 3B���i0sz�ZuG��T%��A�^����y��������+
W�Ԍ������f��;���Ϫ5���� ic�$̙���'	�	5�o�Yo�,OZ?r��e���,��ڦ��h��3��IK�E1�c>!�|YI�Q`�BS���$Q#I���-b�
\}�7��Hܝ�X���u��ʬ:U��E��^���㺙D3u�U�,��s^�.��n9��5/�LJ̬%W�D����0�n5O:����Y�3o�%���Oc�Uw����>�%3|H�<L���I���ܹ��J��g�V�rH2�G%6��a����+�x�8��D('%p8u�����2��35�r�;��Qh�]��
��v�zC�B�nͽ�0��q��B�z�����3,@�6��e^��>=���j	X�a��7��w>�l��I��k��қ�sQj�q�x�l7�ǅ�)���Q	��|��,vy�:�3����J��NC��X�$���+Q�(= "Y�W^O�v4?7|�8ʽ�Ĳ1��A��Bj���6�S�=z�T�\���4�Y!�絫7!�� Psh�[�h��8���H�F(if��j�
0�� �HomhS&��ir
H�y;�[������y0�w�}_/�eh��Q˘�M��qw�$�kS�$�f��x<y��G�����¶,�C�<��Z��$)�)���ٕ/+�µ�Ǜ�K��+��쥜���}�G���u�X�Z`9~���ւ���ͪ�k�ڬ�L��7ciI�.:i��І�������A�c=��4TS7h����i�~�]p�2���6���������2�@`���i-)#��}ߤ̭%긭.�Ue�Y^���-n�a8d<�s�˥ʄ���r���Υ�ɣM���y�dJ���-`J�W����{����T�l�֬$'@����x+@/?1c�4�9���w�jr���x;��;J6t�M��8"4ن��~�MaǑ���=�F�TI����0b����&ޗ�X�w��9�<8.�՚�WI^�鄑=гQ`���-���/�+�xR}�4�{�$�s���u͐r%�_��xL��T��6U�;���lV�ٖ>I��f�!)�a���=�&�t"�b�7�Dp��@�nR�W*]��pudꄈ���Y2qR���H��'��Ր+!Uq	�.�&%��-m�԰�̼���lM��K�~�+=�N�� ��ֆ�e�� #I^�۪�e�fBZ�bL����e��/	\N7��67L�4��G����p>d�$���k������{r�a31�6�>�&���O�)��` qw���d�p&C��uv�d���Gք�z�����Ѻ�,Z�p/������WWgX
���ԝ�y*����_K�/|�d�c�_W�{lO%�VVdD��|�vL+2��߫k�ڪ~��3��a��YR�OMR��XyU�oɨsS��5c�D?&�fl-�I���fsU-L���*���I�L����ݾ��������M�.;x�L�K�};�(Mz��_��:,��Ή}�1j��x�H�,�:_�-�N�fk���S����Wu���b}-��`<M�H�������J��y�H�s���a�b<
��ĂO��<�#V�h�;����©z;��y7���<xs���,M�$���%�
c'��~��5�6G�A?X�E�-8|��0$���IKI̉ef�w=��*[�k�ڮ���A���F;+(��f��u����Y_����)3iP�,�Y�T���$�^|�A� 4���=N-���3m[�[ƦM�;�ӓx������I���;]'�mvvvv���'v���i���=e�=L
����y�c$�N�����(O�f-���I�nI4��h�A��d��*�S��C��N��gv���m�����ˊI� Qce���{Y�g��0��@�{s��a���� {WIOWR0+���X�'��X�u���+�f�!Zfg^?���j�5w�z�|TH)�Qk�L�%�����	�`�a�1c��7x���ùs�%��g�/d1�@�����Z}�Yf,A��UK���ƐR>k?��|ή���$mQ%:����Ҕ�H������T���U���j� ���Z>��#`�b�����+ۄ��0�9N�������J�D��B��'�,�=���q<lӦ��F&�q�+H�-�����}��v�`0�� �&>qC�b󕽼`�(�����:�����}���u�ń0Kf�宆�Ep8Ԗ��`@���p��ߐ�Xjg������Kc��g���l��`I�$�^B0i�?�=c�u����?ṙ��l��1}�<JK�-x�<�]�l�{��ୗ���n�V,l��p;&3!5�D�\�mM�'f�����v�&1��F۶���Z7L���]�Q���^1M��2��w���k���!��Z�\9���Bx�i"�%<S��5I�{�'է
��{�XJ�5��;�M��������^�0��{$!����md��v�gR�/�LH������(��ۺ���I�X�E�}�ΡI&U��������ţ"�p�$>�3	��˪D��IlҠf�\�O�`E�'��z2z�6v�Es���̈a=`ƒ@W�P�bqăQҚ�1e�Ţ�y�<�������H��%Y{��hl{�@Qf/�G=�T��l����ۄ(�p#�������ܑb�:/�ph�k����d�$A���%��}�m,��>�����l�"�r�+��eA�R.��ʾ4_s2�m����29/�כUc���c�|���<͒�s�h9k�H��Y���>�a�0��R��V�pZ�U�`3��߲��f,�I&	��Ֆ��ۛ��Gs�Xp��j�v-a3��0�A�1�����Lf�ք��3o��?�����#���ߛ���#��=-D2�����n��K3��gd�1�dV��^�y�� �`W���Gl�m}�w��hd�b�5u5�t.7�f;l�1����j67n�\��Y},��~s�T	�+�}�c���/]J��n�yKA�	�6�,��a���;��j"��i�%�kG��Y�qc.Wۇ}��D��T�ݎti>pQ���y��X�$`Fj�&)|C�'�1|���Y���If��"�z}����'�}�+c�`Ɛg�KtT�d� o<��ÝK�BN�;y��D0^���|����_��^R���۞u]���5�p=������}�/�@w�_���??��h�w[��Dn4�,��1Iu	'mT�Ҙ�8l}	,k.%��,���Fg��lZ?����Ĉm��,Z��u�	�O���)9cj|����Ǔ�^�#&	��4��B^`o*�H���FY)���������^�Xyh��f��}����W
��P/>e4���E�~h�o����Xc�9%6��9�c����MG�.�M�x)R5�$�s����L��,���O �)�I�~W��Az��dJ��g�e�,E�3H��z"7톈�5�ώ*᤬�$=a&�<k����H�N�W���zA��n�����N�`��)����L:rF�� -�n��?(�����ˡ���4�"����B�4LL^լO��,w�S���(	7@������ J��P�Ă����.]�R�m�x��StG���0j�����9Y�ZX�ͦ���o:���y���ˍ��%�A*��    ��΄�	�H[�?�9x6\7Ã)(�4�a,E�;r֌5D�@����A��)C�	��A��ä�V�~wڒ��Ĉ����,���U0�·��d�P>�)�H��;&�"����"�����drLqNGxLx���r7SdL*��Zr�(���n��>T��jM����]����0fdw�
5=�J�&)yt�)/en�C=7�a�I �u�j�{s:_/�i�����q�>c>xfq;Av5(m����5v�t�l&1R���^���W���a��M�^I�6O��MjD|����x�^��W�x��d�8�1������y��Ԏ��p&��}#]��G��WS�g^gr�-,�A�z��-�,���$H���-�^(Q{V5&��E�I��]_��ű4sa��r�:�8T&v7������C(H�+&/- �$���ת�Ʃ���0uY%������YVX�#�$-2�g�k�����D��aR���qa�N�>�/�a�~����2��S�،�m�,��g��m���1�ȅL6�ٌ8tO����jV�9�F�R���"/"{�Mr\����gI�GL�,�m����& ��kD�%+�ə����(N�zd�����[�@�YY�ǐ
T�u�7*O��3����Š�Ώ�<g����f:,���ٰ�<	$������Qd8�a�z��a�kq��~_U�E�T��D�rE�yYUܙx$������%,���!3�c;�2Y����Ѷ"x~:SO`D`HO7����>�����u��/��$#ܳ7�t2��r2��J��0�l <w$�<u+|K1Ͱ����f2j̝�>��4~B��Enѭf�R��ڣE�RnE,+Lc���y�i�v���5\��NMP&�IE�D�k��Ub��ˌ����0!C�4?]2-@Ao����	�+"��7���L1h���O*̨���S��R_�E/��ʲ��?$^q[|er ��,˙cF-�K�K!5|�gX��~]��w�_�IO���֮���QM�o��n�ɭ�3Ǒ5�������P�A ��Cݒ���23��b؆����C4��
Vs�/����1Ñ�W����!=�l*�����
��̊bv�M���n%��_��,��I�I�pH�o��W<��xY�ʸ҈��y�ܤO���07*���R9��1��7RU�&c���N����Ö���7�mϛ[�E�	��)`�Iu�N����՟huf���j���gF����l��~���ml�Ճ�l�P�¡�t�q �B�����]��I����U�f+�C�(D�t�2Z��r�;��u$d�K
{4K�UH'R�u�na�0b������*�:
&��'�0d�6+��=C��+atHaF��121),��\�k��x+N�c��
G�ew��%���d��6�oVUºc�̯˵e�Ϣ��&*�e��M&3-8Xd8��1VR�U��p�^,�;�C���H� Y�~ɤ�?Mc�ݣ0�Ki�#u�w���AdۋxE'G*	3���-�7�*%G[��k���
/������O�Vq�\���9�		���C9���'31.�� k��ک�6 	MN��,e���4d�%�,���cVzOj����Y7�^���h|�z1�`�0���tԕ$�Y����D����MY����}�kƌv�gbd��B[�r���VM��HJ8��)����˛��^�^Iuۚd��L~�������d��5���&`����q�yJ_�7�~W|2�3�����b$�T�$a�$�'�*��̹�o0�"bM����K���n7[����How1�R⑺�[R/,�c�����fxf`J�N�s�A��j�-$)�A�b���#Ŋbf1,�I$S�0|�'�<=L��v�M��Þ���ˇ�qq��4�4�Ǎ�e�U�Q�	�j��nE(R��d�����;�P��NG2�Oi7�Y&�%n�;��Y*�S2����g%^�2X�abmj���(!�%��*+��#K	'N�dW$��>���`���s����W�1�y=,��(���ԧf�%c#��!��6�u���6���^XI�=Ot�I������L�PFx�p_n�H7�ee�8[F�匶��@fn��5[�!S����,J��i�c���S;�؟
"�i�^��˷��?�^3�K�g��ޓ̧��ffX���R��e�PVxϧ&x�6��v(y��(g��'�}N bd;l!)D�@.���c�yi����V�IރwU+��Χ�1�?�-��LΧd9~��0�<��40��Mg��/�ѫ���6Á��5��My3�1))����d[45�ǁ�]R���*���R12&�b7�����Q���x�7Wv������j�2�>����1���N����rn΄���ƦӶu߬+;`pa2aBs;`v�q�<z^�"f��ӑ+��R� �C�.�&��џ�6d@"��g���vN�ˡ���զ�I�k�H$��Xx�ѿ���YM�H�#�������F��[�����b�V|��	�͛�����@��r�|�Y݉Yc�3'�NKupp��g�cǍ.�!I�'�h�K<��x3�aھAL�d�d����Duy�l�S�İ�02I�q��s�����z��x*gwB����N��D���x#�2�Ѱ�S��J�a3��TB��W�H3�T��g�{�QAC�M�oEn��!�`��L�u��ο(�����k��B6#�h�2����&ip�70f���ia�}��&|(���]�3j�ws�c���'�j�-�'�`��ľ2o�����V�����3V���:��߰W�-��k��0miQ;�P�fS��r%�|���D@N�b�Y;sd(�m�c�2�fK"�?)��B�O(�`�'�r:�ה��"�6�"y��B�q�1�A���HL Č�g#M#��i��.$�Z�h~/3-�_o6U��J�I�HXM���
EK���	\H�ޏ��=1s>�����g���g&��D��y�7�Ƌ�$��dkX&�7�����.�n���h^|W��ۊ���o��gA�<v߸$ /�9��@KFS�a[����M�����q/Kh0�K�ӹ5J$��Ys/C���pn�Ҿ�l�Li��\xӻLM��FH�`��o����Y���4����?L�Kh�h�Ь�u_�x/���t��r��IV���K-6y'��v����p.�h�3X����L���y���_Z����a���N�z\�����Iܙ{�a'V��u{-Y&�i3N�fp��|3�8����X�q�N�f�T֭	�#���Y/d}0���p��dF���j�`��Li���<�z�2���>Nߚ��3!�+�.YD�B���q?�Q� O�i��]�y23ە9}����fb�as�jO�-��ra�v�0Xw�x�,�)�I��!�VȈC����BP��؞��+!EP�>�%s2�*�ņ���ҙ���V���	K��2Y�N�a����OƵ�c� �,O#��:��DY��R�0����6��4paHJ	��f��s��3;^��7br9I�vBJ=O7�:��F�餱�u�ϛ�g�̖O��� �v���M%�#J���U��<�O;�c�5K�l�D��5�׷�8mȴɠ?�9���ս��z�|M<�y�GLM��r��;0N��a:VL�1�gx�Ħ�hL�z���6�Q�T�² =�qk�����Ý��+�=Äh�O%IxZ����}�8�FOlT&S"^d.@d�dnO�/��RR�fxx=��?�N�d�#������6��&c#�8.$?e���C��T&{^(T�6`�y#�K��S �m�6}����TdWi[9?��f�-�*��8&�M�x1싿�
u��k5�����gD*��U�;<3��6�ȯ���V�(u��M����q4Y��~�D�"upf)
����∆5�BLl�ć�Em��f���}��Ű~�#��q�ڌe��$�̇.��Օ�?�-��;�=�`'Џ_�����X3pLm�,���E�]V[3�p�I����a~PO�gR�#�i�D��0�m��,R���T��    ��Պ�\�x<���cر��>'C�N����؜)��BlO�Qm	��Kg�Z8�q��
��-U�RµW{�ir
��N�k��a�8mk��G%s�]���N�Ie$~7i��QX��l��O�������6�^�Ֆ([[eO��O5��L����U������&�kE�8�+z��tފ���@�w��+6��:�79��ׁG!4ʼ$�i!�L�*`쥥ׂ�������GcB~p�h0�פֿ�P�{ƞ�r��(4�w\}�v7'�Ű����d�!"���~=��%e&����2~;��S��뤌q��ӑ)a��9�2�kg�q�L�����2�.�;���x4R��}��Ʈ3�7��w�IPȋΚvMYM�0L�}}�u[u���Odo}Sm�MpA�N���5#�]l��f%���=3dçOt;&O,���=�(�P��Y&^�s��B�/yu�-�d��o��$jyq�ܒ�N�*3"5�
mvK.i�\���'�Ă��"�z9��Q�NP���]�C;y�_Փ���|�ʩ�X�e����":-f[;��"�p/���G��X�C9yQ�7����=P���xeX�$ h��<�'SpB��#meliw��L{��^r;V	��K��|!E��n)�|�4�ZKXA��y�I�";��c{pK�CHh��r^����!��_u�m��o�X��K��(�R˹�d��l�>����II�߳��;������s���!���>�v[dɺ������MZ���jw�>8e�^���0��L���B	�/LP1jd�ӽށ����'����`�H{���ƴW���,�k
�1*ǌ>��
G��b)�[�L�
{kkO�##yu�1���q�	��~�7�Tb��8:s��.���A�����Q9t���hNx[sM/i�.$XU��Y��S�$|�!Ý[H�U7�o��B8X���L��0��a��2zF�ǁۊ@{��Ara��46�4�@4�:p��,�����:�#�I�I7��J��UI����j� ��*uv�-i�&.�W�ٌ ���ZE�ԑ�-��G�uo� �� k�i��ٖO�1A)� �L���b��D6�zn R�uxO����F:1�Q�F2jT�fo���S�f��Ui�?�\u���\ �=
�`9J��@�	�9�g8#�����HGu���	�j��{x��z�E$i0Dʴ��O���wr�!We{�$K�bb��]�@�!��[��zY��o�Z����$tv"��H��5�/�ɨ�t���P����1v��n}��v3<�VЦ̎c��;k/�k,����%�7�Ř��I%������`��O1E)� �Hi�1f͑���]����f+��'�m%��%K/x��Q��"]l���f�Ɣ\���$V_����t�����		���D=�3�ġ.������;���I����.�u]-9�G
y��{}��EښH?k���{�v"�TF��<c��Yl�u���:&{5DP1Ban!��vr%�U�`��j_���J�]����z�z�,�^�s��I��)��m6"Ռ���
C���r'%���J�{P_9,3�s��>��'�iHDZl~L6�њ0ח��Ľ�����7�,��Q�CW��(�0Bq�2�'�W���e��-�i��'!:\��'/�6�`��{�D��N�-��@";�K~����a�S=6W"����?���ȎHC1�NA1
g&`�O��1]>�1��x�Y����yl�"{�Kqe7xa
� HH��E�'��wc��e�LU0@rKX<�*�a�$�(�,���ED�%�W���	�wO�;�\C���T��G^l��nm�īNF�ބ)������`F�1hj]�vM\����L&r7��q\�[��3�2���W�hS[1�%�k�JN���Ɨ����j��m$�>:�N{.ۀ����iL�e_�o�,�^^�&��|���i���6X�
��,y+1O�o% s���!��QIXTS�<+����,�T%Y��Z�R��МIX3��'Y���A,��K%!;/a"Y�h�}�@����X���$5h�I�%��	����+,u����[��ic�������"&#aF������r�l3U�ԕ@i�w{)� �ƞ�����B� ��TiS9?J��T��I�q7"�K��]��L��4�4��]F�zS�5?U���*<���+N�)��ay��M�/����I N#���Lc�v3=���w ��jr�1�3�+D� >h��kW�=�*����
S�<?+��y�S��F����u��u�$9�1�g����z�Mu/��n�2T�oC|�yx�«�˷����T�}�(H$��8���s5rRT�����D�~D̜�[�����+��b�p� ��<�H&���YlJfi�a03�f}a��y2��b���~�.b֫�9�<�3c�l[pr#Q����1�C�{��耜�<�kF>�I
�'�]���~�� `jj��,��,d�ZR��}ɻ�ui.ww��~]:^����4=�s�ǝ�pnU�lO���҉�~o������X�������[���%S�E*b�8I(���Je�ш�E�_����̞b6ؑ�C��ș�`v�YQ.���s駜d�j3�DS�qͫ����b��$�XwEI�G�'S�����|Y56A�N[,��.���[��u��6��v�qV����O�l��R�6c����,Tu���ɝ��vr/(��I�L2:2�	#W�,�Y*�	�M�gow?:R$, (�ТI��֖�,��"�K����r�
8��:���
��!5`������9<]~$7���թp��a����3��pD�KݦR��a���g�)�4�|
6�:���8�kF��U�	y����ύ��G�O�B�|��ƫ��έh���ͯ���b�4��s�e+QI�vi�3R�΅@!���n?�`,[u��>���L^��	��0�C��V#w���f����%�Sx�_*�V�|`���~ȶ�~�ّa�{y���6LM�ӻM�����r.f����"9/��Wr��Y��Qz�}�U��ak���k�	y�!D/�Cw�lՋ��=���NWB{)�I������#�b��| �؇j�Q�P`���܈�B�:��SܷuG�$�>��>�u�am�~����`�x0�3�AT�.�U%�T2]��g�����c�yh��=32"2b�;�b��a�N:�Ğ�����6��]��1��5ZG��������W��ް��Q,-�P�С�)i6)�W�$'#�h�^[OhSg6�Xd.!���p��GL2)�C��n�:��F�*�ķ�ْA@����a�#�SZ�L.4�N�v:D=������QǎQ���b�zծ���Fx�2���W�Qw�:]�2��}G�.��-rP��@0��K|g&��<�u���1�,V��ؐ��a@�]7�S��{�(��"�UFbڗ�����4��HrC�`E8�?y�t�|?�/_��hz�ah]R�\��?�5�MAN�η.���\'�=�"�СXv��C��熪�8�5�h�^� 6QWC��z�B��Σ�?0<�J���w�5D���ڶ��tĝW���ś�g�%p��(������'b���J�gzET��|���=t�����+��_;Iň���� �Z��U�O�E#:�O+@�s��|�Be�;�k�ǘ�B��?�n8�>��񿡈��)2���{�>��Vxf������h	��٧�E�X�E1�L���`*+.� r�ٺ��ѶZ������m <&S��t����Ē��	���0H�b��������
�;���CrC@致H+�h$�l1���-�ס9q��q]��H��z,��RD�������&dٚ5��s.a���$�;)��;� �������6L�dAbB�%�B�D��¸L�,KR��2�%�pG׸�Ɨ�`�3�?���/��1%��>�n&cI��"�,�� 32c���5t��RI(#'_'��j�_�Eg<&J�wK���d��o�;Iw	<	V����.`��� cctAi�2/�<ׄ�nt=    .�0є�v�$�~NR��&N�]���8L�I祙���|5bg���ϖ���\ t8�t��/�o#����Ym$���$����5�E�_H˽��}�T�Q��\� ꚑ\���x�)�_��n��G��c�L$���M�{���M�V��q:����YI�2��	A�w6��J���24���[F4o�cΚ��MkW���/�|��K;LvOO��	�a�Ĳ��K��@�w���&��]u!����쇩�Ed˞V�YW���1h�{��/��C�[�����삘X���]���	���Z��.�\��������<>�?���j3�us��F�g�uL|�8�%,s�hd���,��]{>�rK��<��OZ��˼��7� �-�g�ހXÜ'�.n��'7ւ�uD,�EV�ϙ�g������<J�xZ&�޷�ʾ�u��71����J"�i9"2�sŦ���JQ�Z)!b͖�:z[,	o_h2n(�7(%�A9�����51��B`,��|��'t���%2<���R.��"|a%�ϵ�J<�'�~ZD�E�s^��4�蔈���o�ņ�uޖ|{��E�P4��%�"��8��}l�mm+�UFql��:7h�Ky��y������q��ʶ:nϡ�'��8Q����z[0fI�e��O��� ���w�ŦXY�
�nh*}2��l�P�ޗv	�՞�wY�a7����!rO�N�D��霰�_�nq/��{���?QV���|-�wO�����?��F� �bb�C;���Q��:k�]!V���7jO�<_XVFB�#v�Eա���)��v��J(�Ȯ����æ��8���3�]�G�b�B���sy*��q}���3�C#�"���Jܥ��mp���z	��n�` )�2K�ʤ(�֎`L?Ϛ9�;hk����)���E�p�7�$M����b�'q:�@�0͘6J�9}M�֬�Y��I��*��chw�k��׹d�	�Y��P`F�}Kl�������yB}7Uꕡl`�cg��л��s:o���� G��C���}w�k� b+I)-�ˊ��EV���e���@��
sxS����L�JXb p��/(�o�e�Y1��!�(�D$��ar/�%a{(��wh����:i�-v�����!_&4�0�f����Ҽ?N
2g�b�En�/:c�)���W�B��CAo����T3���\`W����x�Q.���l��&$V��_����Ji����Ğ/�e��U�]�7N�&�/&Ӻ �po���b�>������f�~���-5c����{_���.�#܀�ͣ�5yo8�fY
p
�գ/�[�ڛ���ڛ���4��@���}�[+���$dC���y%��yQ��^rM��Mv@=C����p��d�9��H��?	4�4=�ox8x!��|�����'��M]1��>/I�ryX㲜/=�+B�~d|k}������fI�,եZ`��T.��䅛���l����ͦ*�4�s�3�C���lU,*�s��o|���9��_�Ot�PuE�V�Ò��%!�7��Nb$���)�G��$_�0m� ��(���&o�]��}/�����.o�ْ¬��p��ն�q�|e��2�҂�^��&��-A�A�8Q��˒K��K�����c�,��,�SC%ߓ� �36oת���hR%����T_䅞Y�,�SUcf4��M��-ڝNH�Z�M_B����X����	��t�@�~���y{Ӯ-9ܫ/��t������3��;B̯�C���:{(-p��D��k�7�2�̩�؊�I,�B
őѩq��Y}�^�^����8�N�L7Z��{��g;!��A*�v�	����}'��7)$eFȷR�����L�zA�z�4�Cm������i!�-|I�#��h/c��� }E�1���G����5x��
�9�����G;�")5[�e���b�F�s�iZĵ�Ք20��	;i�複�jo���E���ּ.��Ǫ��+���(��GP��W��xR]` '}RI*_Fa�'��1}݃2NR�hVD@�Jئ�)�����&~L���MqĈ�� �l(���oP�F%HP����O&8�t���b�$���ң�w����u��f:�|�̾�}q��@�ZS�'Tfh
�N_�Qܿ�3p���Z,\sr�F䜚C/u�`	��w�´EǄg�dU��Q!��Չ"�%�pG��A�}�	bB�lc�5��%��B��>�M�F�,/�<0�y���_�8�9�P(��r�=�U�k��0�]~_�M9ό�%̑7+Y��YQ
g�j�&Ĥ�X<����qO��m�׃E��vs��H�qf�븪�����d�;$�N�A��P�p��g[��frRu�L�Oï�HAS�����?�Q�K��t7|����#�2���v�	�-o��:W�(��3���-rW37	Z�ц� ��c�u�{���wy�Xu-9�	Bܧ�7�)��oM��I֢x.��������g��;���2�Bh�����eW� ]A�۴\l��~��J�[b�zAAC�f[5t�,[&�Ue�Eֺ�H|��K�p������FY�jO�֤�8v�'w���Q��َ�動J�����u�Rʸ}�U��=ײ�i�=	Bb=E���L^憥1�=:��k7X�_��M���4&���%SWH��sD�m���A)��.���X�	���8<�1d�������mi%9]��8y��[H��e:���F�Zq���ga˥W��<����tJB��$�x�  ��@�n�b�QA�$A��}۵6�}����H��>ԂCG*�:��-F����D�͘���r.e�l�!�H�k�L{�l�ş�g�����"g�ѳv����m[�8�r��1Z����a�c�c9nˢ�)��T%�%�r�#4��/��є�B�~�g�B��6����2w�C�5I^b�|8+D����VBQ��)�Nv�ԙO��X��x��|�sI����B4z�󭆼nF����h��Ѥf�)g�ZCwsċ����y��������;R錺A�-Aw!��`�f�8�p\N��Qq":.fNE�9���S!���[6 ��2G$�������È���]Y-��2�ba�<A�\7���$U#�!.;��3�_���7$0-%��a�H�ҡ� 3�Z �)����7B�KV0�����4�1n�!�*����Y(�#��`� ��������[x������]Ʃ��*H�E�V��=�nrRǈܡ�T��/�-����������,Ҍ@�p���:|�_�a�J�(1�?U��Q���F=��.��DJ�Zl���m6*��ӗٶ��MS&�._R<w6龪����(K1�{N'�h�N��*� )������1g�"A�##$����x�)��o��7]i�N!8H E�V�m�c|��7���tqpk��Vq�����&�,���J�KTqg>}ɷJw��ˡ���=-�j��ن��26$�&�� g��bF��֌|�t�4��z���}W}����t6���N+^�/��F�ݦ;�L�a&1wf�DG�̵ۚo7���a@��K`���i��6$�)3`��w���L9�NC�Z8T��
������-	4WiRe[��D���"���c�Z��Ff��
ńM��B�F�Ɛ�u��5�: F��3x룂����'�)��b1�w }�R��gT� �ӆ�����ܶ�0�0NwR��864M�z$L`N��[ 蔹��/��ș�3�S�$l����A���jq;�m.C�R-K�tVR!�7�� ᬾ*������H�&���g �!����R:|Z�5����7��Y���)*^�qzJ�u� g^yL������osML܀l����'��)�$�sU�C��x��ay���C��XMh.��P��S�ē�1��b�&C�z�|���9����;}w�Gꔏ���0Y��Ǟu��n
u4�"->�z
�:|�[�p��l��B����Ɇ�N��<+	�yښlLb<Y>    =�t�Т��y&�E=A �SR+ ܂?+Y����\�f�r�}��y(���뚓�p����1J�q���ZLڏ�cU�&֫��:�C��L���.�(��ث<7:<�,�"�?'��;,�)�ߖK�Ǯ�E�bz�f�MKx_�7Tw!8���$���^���-n��+������7�%�	y�I�<-X�d�HŴC���;"&BV���#}�K�&\N?������	��b��F��R�����k��r��`l]m��ľ5��&�ıop��O��%ҫ�ӧLg�W�kH4.�>gD\A~FES;�*u{��=⻎B�e�.�U��0����o�T��c���q��&�A̳���Y�g�����j"�zξ���<�,\o$6�����������ƘГ�{u��@=���?-3kOz���,�C8��ȟ�����/L���٪(�u�/�im�.���K��|Fc!��T�.�&)���e-q�2���'Z D2�e[��]Hd���6
i�T?	�E�-8�hy�qBI�0�пW&���⮍�ه�5dd��u��O?+�y�z�N�]�(EIv���ԑ�%|	r(��oU/i� �;t�� I�����1�I�2�J���n�Z�Y�]�f�2O�Y���&[��t����GR$���
�ȅI�����(T<F��FpE�m��W�W>pb!�}���Y�r[ cor5�b_	1�����3A�0X��鶩q������M^�K�&�5�]ZHr�|Hpɫ�l����pR�|O��C�h�h�器g]jXM4�%C	g�0,��'�їt7����Y��o�ّ��������1b�sD�`V�pI���q�-?�Q�	�=d(�+z�=7���}�C�����ΤL�����Z���U���5dA#u_��M�)n�oM<ig}Rq34q������5cz6�ˑ��^I\p���6v�.��u&��������@G���ߣ�R봥�PI@�o�[{�o	�:�D�Ր�}X5Ϛ�e�a�P����\ي��ժ��_0Q`>��XR'`��O���� �0iQ��:,�U��;�L<�ME��D�%�쳪}���0�r�6�k�	�Q�+(�c��.5A��������]�Q�:snTa��Ug�o�*3��Rd���ʲW󿾕��(�|���c)f?��I,�+�]�.~��=Q0��9]g��1��a�U�^�2lQ�Z�|��|�/����N�0H*fg�`Xr�b[��E�F�y��<K�6E(�0\w��B��|N�1�\M,}�$���4�ڪL�dD���6|�Y�["U����"�[�E/��)NM����9��J3�H�
�����0.�M{3c|�ꋄ���S!=�Y�����P�%!Ix�����6*�RXV���ް����v����Bmv���X�4���hb�-VT��&�;jGE��M.٨Tb��l��/ܗ)�+�*9|
5�1pK���z]B[&� �L?ƺ2�{�Iw9H]�"�vF�����>��C�`Q�Q:�!����qM����b�1'��̫�����fdc���M����1=�"�u�n~}�unap�����-ꇂ`�lwe>ho�D��W��%��}�G�t���O�r��O�x7$$��7[�Z~�n[��` F"n*R/r�$Ar�k�7.�����F��aS����,"g�tj�y{��{y��<v�{�,|�ٜ�Q��g;y�A����>���*���{W�Y�u�1kvl���:g���զZc�+8u$�)J	�>���77۞_�Ih+�P�t������V\k]�xuB%������G4�
x�̈́�� E_��W���yGa�0$ʢ3.�!6�Sl�Ӳ|��MǬ�
�5a-|�a���m�;���j��W�ژe�K��G~{���2��0�ef�i�}
U�,��]���Hb��\�Iß�H�λ��[WR�g�I[~��� I�繆Tm(Grv�z3ތ�a��$6�c�e���d����!E(PIb�(�}7�V�	ûx!_gu��_ge~�hp2�uɠ	W�e�m�p��B-��^R�΄�w�`u�6��8����D�3�C^3	���k�W[��]��:����|�i�Y1�R�9�Q�^�$���$?uf?R����Zr�9q|��g�GLD��iJ�A��𧡯��)�����(�pU���a��N�N����ttNmY�X�2:%��m�"R�|��,)�n���@�q��*ȯaa9"a�;1���b��Ӓ��j��id?���̶�:�gU?�����a���{^W�"�c�����zʨB�pCO��ԛv�ӽp��&|CGf ���:N��H��%Q��/�'�/�sG�pL�j�k�s�N����;o�9�A,��J�;* R�f�E�wǅ��ɓ��2J'�ȡ���ɨ������Jn����j�?��7bOȡ:���oZ�^;B3�������P�"��1�ͨ]$9��[@�,	Q81�>¶�������00[�恸5wkD��Pk����W���T� ��'J���5̆A�J1����b̾Wm�O�/i�
	��2�§�8b����FE\�cU-	ŝ7&O�\�!]n���}�i��	u�������ެ���"��ߵ4�s��]z­(���7*���Ql���ު}���d�Q	��CO[������v &�ֈE/��$����AI�6/���C_B�$G�bkLv�o̫p�PN��S��Q�#�ٕ8�feÈ���s���,d�*���$��c��`�Y-N O'��w�j��
�R���]�h���2���P���A�'D"���hF㨨'x�E���~v(�ń�eQ���bTԷ�Y�N���;)���"w^80[�j�(������z×0�f�^(K#�:�X�项JF�#RI���\�3F�w��y8g�,���dww�!�Yl�c��n�Q�N$7���8;�t��-�C�+[�¨4�`��Ҹ>E,x�S������}�:r�f&A�*3����oL�pM�a�k�`j�����*&XZ�Q���~�oWł�|^�s8�~ģՅ�{|���d��|�u\W���tūhNx-��q絇rO/ɖ�o�$� ��k6��6��I�a����	rT2�^�qH�v���G;����G�Y��$��0w�>g�r��50���g�)�q5<�,�ni�Ӯ��S���Og#py�ק��0�I�v��3���ۑ7��	��#����ז9�/1}�����s�Y��3��0+�, ��̛\�J�I���v���Cb�rb:�F�52<b��m��-�:�2K�]�,�R��pK2�Y;�燚�E�@{@�5D���u^<aY&A�7=,� 4#i��.U{�O�����p��4�������w�O��}[���G�fc_Bm�a*Q��u �Ҡ�����E�����V�|b��@�!{�ꎢfO1�,ƽ�6��岠�O�+ڗ�_��i%Z!���R$�l��[;���v���f��ls�"�(f��)��2H�D����*2T��}���ׇ�L�^��6�$��:{�\]�]�����j�&�n'q�`
�iW/l�\wUA�|&jf?��݌��X�xY����!T.^�`�5�:&l�i�l��y`���~���3 �ݻ��}qy������+j��]��K���)u��P'�h���|�tt6��MSD���%��}{�NF#�����8��S��vp�h�ȮT=y�6�x��s�Ľ.s��s�]�Mq������9�0�O�װ��p�;?V��a����.����uT��c�)^B7�iџ��g%oX�X!�ܺ�hj�bc���m�A@&�@���^�elPbߏN����i����o�5��WwE]l�����`+�&s�$[	��#4)���p�\ȶ��O����~�@����Қ���nГ�/�g�	����mqĶT��Ȱ�H5���٧v����lU������|��zՖ�/YY0�bw�:-Zw'�A�,Ƈ�E�[�K�}'i���: �  7Y��>���10�zG�&����I��t���z.����T�~k�|-f�<��}b-��d�f�B��/��>��J�c6�ޱI�==��v��)7n������a�a�9v�<�Do������ �f�1��?}�&��,۵͠���ǡ�>+w�!��V��e�*�|w��c�9��b]WK��n��]�G'.�x�7�S�0����{�7��:�������:���b}wI��~�-�uF=�.wO��q����!�zY��
��- }�K�b�Տ��GO���rڟh\ޯ�;fL�VS~�<Ǵ��`u@�;m�mvOx�fKG>!��'�� -����v�s��VӴ{�t����o�q���Si�{�����xЌj�U�z�^���[�V��l�b>��'�"صK9���NH���}��k����S�-͕m��$}+w}�`7�E������lz��"�\g�^l=[��d�nϪ;!J#�������1`��'�jb���}7t'�PŬ/2~�	�lߛ��0��}�Xd��<n�Ѡ]�qg�������_��;M�}B���;ڲF^h�Id��ʽ'�`����WYW��*pb������FE��x�����=��Vy�=�j1�ˌA�7u�W�f�)[2rU����VeV@Эq�}]�M�#o��C�	��ػ�?�?Q=��Hk�?߰_�;�z��O8#����`z�^*Zn��5])�s��}��7�|��w�<��[���6����(t$s���*�ӿDM��8C�2���������a�?<�dsMvQY��[��y�,�/A��q}<�隈�;�Ky ���n�起/l1�N���w�D���i9�ǌ�Ť��q�Yt�c��ߪ1���Z�-���j�m-jB�77t��n2_X�Iܞ�U�)�)3
�J���6�i�߼�]�$b²�|��z�Pl3�����4e�3W�]VB��Z�dF���k:.&ɨ�4;H�"�����sq������~{�2�����ي�a|F�:J�ư#Se��T7Q�y4��8@��W�f=LY���Whm�M	�5��`�
+N"�H��\��FN1##i�oO�/,[��q���6��RPjI|HH�@pe����z��]�1�,.���b[ջBT2��N,��R݈���o����ǅ,���ē����}���>�2����S�5'�y���겅2��7�eAV��p+���`/u *�U뼲�e�j˂|\Ou��X(9��>�y.r���P��J�,�P]��e<��pRZ�2������%pvƇk�bj�'���j�:y_���C�-~k�(�V�� ���/-����l�FBj��9�
]�ˢz��rS����0��%J˅�o�JԶ<Ϋ����|˼�)Z����s{i��MƼ��QŁ���y��0��RDߢ�Nd�㦭�N�U�S���,Y��K��p@����jg<i����;lB���#��<~J��w���Zn >�~���s�Ǿ�K��P�3ec�٪���WU�����1�	����e�8��D�H�N鏯����3Z)��!�����s��{�B/q����G�_W�>y��i����� K�[�FO�@"��fq�Cm���wgG�gO�A k>���O�1݇ƪO~�T��eL;ܲ���6D\��E�<n��H��골h^(��P�]u(0�����=��D��0D���:m��������y��]�?�!�
V�'�Kd mIed��k���5Sp.*�B��h�a|f�� ���7������"ă4���$��Q`�曥��p�}"R�z�>O5/� ����šP�(��(�RՅ��$p�;�Y#��-{j��4��t/'��sTM�&.����W�����ҷ����G�
�s)̡T�p5�;��bO��1�����k'x.`l��_���59�\�G���r��ʪ��ͪ*�
��=�ˠW�/���?.Apz+1�xɜ$��������j��I�����h(H�H���ï���u�m�my�"=���l�́�'���p>-��O��{�A��",��2�|FQL5nV0���>�US��)<�&��?�� tz<͟����8��D�^��B�`Wp'b�q(/֣©��/���{\�Cճl-�fD)���B���\L
G��.�n_wy8�=���p����#y�G��2�,e��ҙ��m[g�
ݐ3��H�'��b�/����t4��I�;�+�#a��PQ����?�zW�C��/W� �)����8*XoqS��}%��[�m�g
��m~M���F�-_O�H@u���š���1B����0�yYW;X�|iۃ1X�	�q���Խv>am�MF� �2�n
��aK�{�^V���ߏ�-'�c�������Lg�귶X.�|'��}JX�\g6�E�Jy5n�������2	��zg��f��!�&��Y���0�zVkl�\��#AN~l5ԋ�e�;�B%�C���Tu�]��r�%ӭ��)�ሪ��u�x	��@Ks�I���/�@���� �ƛ�+AL���A�K����3U,p���m�)}� �|~�N�Sf�LH�ԜƠ��	���?D�C�kQ6�x|XJ����w��H���pa_�k��\6�����ebүt2rE�\R�,�T��l��x]\�,�׫_��������ktTuҽ�D	-(�P��=j#���ֿ�w �(/iF@E� �������o���p1�ׇ�����~	'ͳ��d������hqΈ��Y&zA��)t�E��b�Vf�Ðx�$�1!T��G2?ю�JXΣ̌3ubX���;&�{(@�EF�������n�ڣ��&g`�sq���}�B�T�b]�o�ݭ}zX���	�v�4ǂ�Mx�^S�&��'�Y��qшE�=N�_(��F��������7��!힪��W��|�	������=��K���[���X jTd2dtk�֪�[Q�۩��VY�S�(�e��l�B���Q]!gt4.�Ol�SY武i��fo6\>�� ����vڋY��g�r������m����%	z��]A2��z�+u,ٱ�l�:k���ɮ���H��>��^y��k}W=I�1��>��͡;���歼�B.�Ԉ�n�]��>"x�<�$�=��U�7�Y�U��^1�xW/a���n!ev�Ga04!*��-qM�+}�ˢ�A��߭*����'�s�}�hx�T�L�>��?�Y6�1�"l3� ��#�>�İ��b=��̤�*���؁�J����'��AhL C��9��:�p���v^�d.����Fz���/�������#
�����	��ډ��--IT~�[n������U4[�j&���y�g���I�4Ƒ+o��[w�"N#G��'K���ϸ��N�nH���>����<����9I'���!ۅ��P.��,A�d�r@�����{�k�E��j�htkN��������F�����
M��%�I�]���EFBc��˨�S9Wv�����d�dۇnGm��V��[Y�d�����S�_���g��8��T�u^�+��8�1���xl=+3Y�sL8#Ԗ�ż}z����]���ז�~++����n��i�1�dŵ*r�ßD�t��T�}�-��M�e�u���T@�����j�a�7�A�-��UQ��R�-��V��)4�=�l1a?�c���~��* �      �   [  x�}Y]s�6}��v3�X��z���qd�k�q��3X�%X$�I�ί�sұ�v;��R�9���瞋
��g-;5�LV��e'�����	?��V��Z��Ji+y��BY��wz-�*Xl����%^1���Z���<d���禝�Ҵ�H�{Ӳ��w]1EQ>	Ð�OS�O���4�')��ӣ,cU���\�EkSw��[*�h�>϶���?��f�Li��L�m;YuV�������H��K��ֲyfy(�O�<̅�Q�`]�QW�����ޫ>(Kb���fft�n,�S�gz]$ӂ�^��Y%��ra��bsٿ�ؑld)�Yt��"g��g*�w<��$1!�w�|SK]Q�0a�3۰3ٴ���~�*�8��G�U�E¾���/.�}�b�@D9�"�$���{0�	�g�,���a�A���L�ح^o;e+�8c��Y��m`���<J>�%3ve�W|�]���Z���J��9�j�y������ޱ�j�4Pݝ�rA';S�j�a��ŵ��݌�8�_�/u��:�a�L����T�76=�٢��.٩��|�\�N5]o��'M�P��S�(����eǾb�G��	@2z�1OE��aJ_Kl�\���
d�Kٰ+��խ�F;��3�ʎg1j��*�ݡ�6���B��q��
��^(�m���;�M����Jv��3g5kJT���AҖX-;2{�l�ƿq��Z��!QHi��8|:���0h<�����:(w�B�'eD�.P`8HvkL�vf��Ǻ]���{ɏm ���P�����/���J�H��-!b�-chA�d?=J�,a��ϟF�Q"�8���C6�U8��V�C٬ti��zF��mG�j�ze�'Q�fei:�����Q�W����yo�qE遈�$Eg��Zi(õ6H<���W��߰7bJ�I|�eC"ˮ��e`I8	�a8!�b��H�GPc�	�	����T@הm�KX���˽)����`�N���U����"r�L�<��g���Ϗ�J�J$��{�SJ(uv�j�+�����oY���yu�/o�d5D�4lq8J�Mvʣ#/�y��I� %�������{.�y��O�Z�a�P���XJ����
N]�q`O�-�R�z�PPk�+�P��_:|������c�B�{V�("�{���ӌ=���u\��B��x��VS{6�JA��������XR��H�/L�t�OmzbG��j��I����{���ҘZn�Oq�q���������jp����5�?2vo��4�J��o��kE�T��aE�F�"H�(}ǋO���O{ ]Kl�zD�Z���B�C��s�EHPkdI�p����It��ㆆ�he�7b��QD�qJ"��I��SV�wsi�����5��'� q?�u�;ŗ���Q�W$|�e��P�L��4��>�������YQ����<M�~�*~�J��Q5�{��%�㌳$��qZ�fQ;�9x�hP�9G���>���l]o+��ny�m�|�V����(\��+OiQ�Y���&���t�z-��)�E0K%אgg�ЦW��%�D1�/=�����V1lXN6��y�+s0�::��ٹ�68,t�β)_A�1�CӒz\�����Qd�i�Zb�R �q(Q4X��"��ZV���"~�W� ڼ���Fyc�'KfÑ����F�||��zc��Fc�۪p�.�c��KtP�`�ڑ�B��4���cJ�|8���,J�F�iN���z�W!�l24�-��Фf��5����8T�>�\�E��c�n~st9��Y]�.N�d�G��������>��
���v0�����i�K��~MQ-��S.�Q��7G��8��z0~q�`�`���E��{jW��6�s�?�wZq������R�_���z�y�4N�֕��%����FFӡ��(=��ȧ?��H�#ⷪ�؍�Լؗ˱_\d�\|R\dH4ʢ�)��}G�/�*>��f=�I��.)���"6�}�:�$_�|���X�C��ȉ��O���XH���
�$���UZ���4Yp�xܦ[�C:�������Hv��8�o"�a�'!>�v�p\�7{�:XHK��;'��v3����̢��n5�i�6���_�K�̈��&�6>�'�z��^"7P�'U��q��ǣtǖ
����~�5ivy3��&\\��Qd.�a#/�0�v�|}p	�ifF�����!.%_�m��`4Ә-5v��B���v�=z8�*�\�eN�)�G�!�}G����O+��R��aW3h�Ioa����%M4p�I�C"^�7�FR�%�?���[��3T�e����Fr�c���a�*0��J7�Gq��ԏ�H�(K������r؏�9���4�ߺ�P�&��^�� PN������0\��"�L��ܸx���α�8��dK����`�V�A��2��Ux"I��Ⲧ|s� �)R�5k�j���.&��^�qU�|��^|G`y����$
�<�Y�}c^{0��l�Ɡw�aj����T,ս�{��x�3������'��8�1VޛN�8yY����xH!>�J���	k���ka�˦/t	��X�� ,�th?Y�$b�������ӑjiz��C%���R���W�q�nP�<��t�C�<j�q�?v3>Hb���wΧ^(��>I�a3�ih �c��&�H�pży�\.� �����Y�|	f%���lVϪ�nԋ��nt��]ϧt���?�c�-�iL�i��)/�.Q�{jG����$!���S�$�Q�G��<��� O��vv�^��]��"`�})�����Y�l�}fg����J�aP��̣\�w۞8�#�f˾��Z!m�A��� �7wL�>���U.(�W.'a�$rE���k��TeS�=�0�=�q��UKx�M��j��q4i#�|�����I��Ŕ������<�1e��.�=ܐ�n} �p��?�G�nb S�KK���Iٴ�0�m���6lQï�n��W�6d�).� [���d�b� �U>RK����x�W�>ـ�~b����vM��-�L\�$�V�ߺ��cBS�{��(�E���+�ю`���?�}E���(�uJr���wwI�\x�3�p=����N
�a����OE���������}c�a����F�0��]m[_LG��}�	8E�	ak*�fWO�De��S�'�I���Fܛ��<�hYKMo�ԵU�{w#yf���ɸ����+M�%��d��X��2qǕ�a�C|�� ��@ߨV| /@!�� �1_���<�ߓ�n�W�\����Os����#�:�7�F��)GfG7.B~-�]o�%l�n���?s��%\�
de,RN���A�p��w����ϕq�D�n&����t�(L��[�*��Gn���G�\Nac�5�C���dO)�AkF�Ӿ�3k�w?
��B�i\�3Uc�aR����-_�C4��%��:& }��(�݇g-	;� [��L�5%uA�6�!I�8_�g|�I(�ЀOS"}��q]�=x"��)O�@����hc��Q��-�@�Y�a��pdjTf~��o�j��SSjL(0L�"JP�EA�.�;��U���sdʮ��J�~������:���F�t�
�h����i��"<![Efy�#{@~k_ G�l@������O/��     