PGDMP      '                |            SQL TASK EV    16.2    16.2 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    57466    SQL TASK EV    DATABASE     �   CREATE DATABASE "SQL TASK EV" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "SQL TASK EV";
                postgres    false            �            1259    57658 	   car_specs    TABLE       CREATE TABLE public.car_specs (
    cs_id integer NOT NULL,
    car_model character varying(50),
    ev_type character varying(50),
    chargeing_speed_type character varying(50),
    model_year integer,
    range_km integer,
    battery_capacity_kwh integer,
    price_lakhs integer
);
    DROP TABLE public.car_specs;
       public         heap    postgres    false            �            1259    57657    car_specs_cs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_specs_cs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.car_specs_cs_id_seq;
       public          postgres    false    218            �           0    0    car_specs_cs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.car_specs_cs_id_seq OWNED BY public.car_specs.cs_id;
          public          postgres    false    217            �            1259    57677    company    TABLE     �   CREATE TABLE public.company (
    com_id integer NOT NULL,
    car_manufacture_country character varying(50),
    car_maker character varying(50),
    car_model character varying(50),
    cs_id integer
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    57676    company_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.company_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.company_com_id_seq;
       public          postgres    false    222            �           0    0    company_com_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.company_com_id_seq OWNED BY public.company.com_id;
          public          postgres    false    221            �            1259    57665    customer    TABLE     �   CREATE TABLE public.customer (
    cus_id integer NOT NULL,
    customer_name character varying(50),
    gender character(1),
    city character varying(50),
    state character varying(50),
    pincode character varying(50),
    cs_id integer
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    57664    customer_cus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customer_cus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.customer_cus_id_seq;
       public          postgres    false    220            �           0    0    customer_cus_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.customer_cus_id_seq OWNED BY public.customer.cus_id;
          public          postgres    false    219            �            1259    57468    ev_data    TABLE       CREATE TABLE public.ev_data (
    id integer NOT NULL,
    customer_name character varying(50),
    gender character(1),
    city character varying(50),
    state character varying(50),
    pincode character varying(50),
    car_manufacture_country character varying(50),
    car_maker character varying(50),
    car_model character varying(50),
    ev_type character varying(50),
    chargeing_speed_type character varying(50),
    model_year integer,
    range_km integer,
    battery_capacity_kwh integer,
    price_lakhs integer
);
    DROP TABLE public.ev_data;
       public         heap    postgres    false            �            1259    57467    ev_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ev_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ev_data_id_seq;
       public          postgres    false    216            �           0    0    ev_data_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ev_data_id_seq OWNED BY public.ev_data.id;
          public          postgres    false    215            �            1259    73834    postal_code    TABLE     �   CREATE TABLE public.postal_code (
    pincode character varying(50),
    city character varying(50),
    state character varying(50)
);
    DROP TABLE public.postal_code;
       public         heap    postgres    false            .           2604    57661    car_specs cs_id    DEFAULT     r   ALTER TABLE ONLY public.car_specs ALTER COLUMN cs_id SET DEFAULT nextval('public.car_specs_cs_id_seq'::regclass);
 >   ALTER TABLE public.car_specs ALTER COLUMN cs_id DROP DEFAULT;
       public          postgres    false    218    217    218            0           2604    57680    company com_id    DEFAULT     p   ALTER TABLE ONLY public.company ALTER COLUMN com_id SET DEFAULT nextval('public.company_com_id_seq'::regclass);
 =   ALTER TABLE public.company ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    221    222    222            /           2604    57668    customer cus_id    DEFAULT     r   ALTER TABLE ONLY public.customer ALTER COLUMN cus_id SET DEFAULT nextval('public.customer_cus_id_seq'::regclass);
 >   ALTER TABLE public.customer ALTER COLUMN cus_id DROP DEFAULT;
       public          postgres    false    219    220    220            -           2604    57471 
   ev_data id    DEFAULT     h   ALTER TABLE ONLY public.ev_data ALTER COLUMN id SET DEFAULT nextval('public.ev_data_id_seq'::regclass);
 9   ALTER TABLE public.ev_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    57658 	   car_specs 
   TABLE DATA           �   COPY public.car_specs (cs_id, car_model, ev_type, chargeing_speed_type, model_year, range_km, battery_capacity_kwh, price_lakhs) FROM stdin;
    public          postgres    false    218   �)       �          0    57677    company 
   TABLE DATA           _   COPY public.company (com_id, car_manufacture_country, car_maker, car_model, cs_id) FROM stdin;
    public          postgres    false    222   �/       �          0    57665    customer 
   TABLE DATA           ^   COPY public.customer (cus_id, customer_name, gender, city, state, pincode, cs_id) FROM stdin;
    public          postgres    false    220   84       �          0    57468    ev_data 
   TABLE DATA           �   COPY public.ev_data (id, customer_name, gender, city, state, pincode, car_manufacture_country, car_maker, car_model, ev_type, chargeing_speed_type, model_year, range_km, battery_capacity_kwh, price_lakhs) FROM stdin;
    public          postgres    false    216   EA       �          0    73834    postal_code 
   TABLE DATA           ;   COPY public.postal_code (pincode, city, state) FROM stdin;
    public          postgres    false    223   �I       �           0    0    car_specs_cs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.car_specs_cs_id_seq', 40, true);
          public          postgres    false    217            �           0    0    company_com_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.company_com_id_seq', 40, true);
          public          postgres    false    221            �           0    0    customer_cus_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.customer_cus_id_seq', 130, true);
          public          postgres    false    219            �           0    0    ev_data_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.ev_data_id_seq', 115, true);
          public          postgres    false    215            4           2606    57663    car_specs car_specs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.car_specs
    ADD CONSTRAINT car_specs_pkey PRIMARY KEY (cs_id);
 B   ALTER TABLE ONLY public.car_specs DROP CONSTRAINT car_specs_pkey;
       public            postgres    false    218            8           2606    57682    company company_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (com_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    222            6           2606    57670    customer customer_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cus_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    220            2           2606    57473    ev_data ev_data_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ev_data
    ADD CONSTRAINT ev_data_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ev_data DROP CONSTRAINT ev_data_pkey;
       public            postgres    false    216            :           2606    57683    company company_cs_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_cs_id_fkey FOREIGN KEY (cs_id) REFERENCES public.car_specs(cs_id);
 D   ALTER TABLE ONLY public.company DROP CONSTRAINT company_cs_id_fkey;
       public          postgres    false    218    4660    222            9           2606    57671    customer customer_cs_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_cs_id_fkey FOREIGN KEY (cs_id) REFERENCES public.car_specs(cs_id);
 F   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_cs_id_fkey;
       public          postgres    false    220    218    4660            �   �  x��W�R�H}n}E�O9��[ˣq��{�v�*/���.�D�01_?�J����N���z�K;l�.�5���:^�^����ڮǤm3���m������/qF��	H�6�m�czOd�f�j][� #m&�%�u�~���$��AK���,Tbp����"�m�g�x?l!� N�����l�E�9�m�,�ͳ4����YZ����Z��$��;��⭐�n v��M�4���Z�y����cohN̮�8<v����or/��@�|/U��M�UFC�j9�M�y7$�[�Ϯ�D��#w*P@�q���F�R��*������]�g�
/b�\�I�k��a����^=�NV'�N+�i
	>v�޳���]N'�@�]�]��Q�#�
�.��C�d<��x�&K�U�M��I�k�������=hv�)�%�><Ư>{Q����Є�F��ٳ�
>��4������q��HB�/���
�����#��N7b����TO�v�*s��{�����β<���|��`�gEV.�v��W��	��i�X j�_�J����P>�vwЋ!Ҫ%<T5͖�����y�r�UH���I�|���q���RL�u���_n2�<�PV8ӔD���&-��4����[�ܲ�h��l������XR�*�{AŚ,]���̇���ۛjn=-���M	k>���c���8�#q���|��}Rm���P? OӬxP�'.%��fW��ktPE���Z�*�W���`h���cD\��s '�DsL���v��n�6m�_,��M&alEokrڿ�퀋����BԄ���#�N}b$���=��!���`-�&��Ze���Ǡ'E@z2���m�3��Nja�\�gPu�BQDľj�':KO�pā�f~��l/�w'o�����z����)Z�-�h�ibB�h��.i��Ƙ��!����k�Ө�?��^m�L��g�8�n$�X���\���G�a\�!����r�����2Bz���j#}3����L����S�\�NG��]�6��ƽ�>g�5�H���i�Ғ�d��ޏ w���ªkiy2dܘ�g7�|�U0��!6Y�����A��z��#�2�	M�� ��1gޫ�[�9tE}�U�U���M#K�l���Sɀ�~}�өq~2rО�gd�5ѹP����T�誗F��#���o�A��k[�{nK�Uẻb��z6"���8�{�����rê����}�!�ͩv5�0��u{qa��d����:��X8��5r�a$` ����'W�<�A����o��#?��l:ab{�[ԩ��W.���ͻ6t�@�{��E�������iPT���tgi��O��8Da
z]������'�����$پ�}6��E����A�:�ݡ��LMN�*��y����x߼�������z�s�a����w�լ�-���eY����      �   e  x��V]W�H}�����9���#2��⪠뜳/m��c�ɇ��~;|i �<P4t�޺]�(�N�0sefa��.#S������é+�m����?�r�(��}�9\�e�g��r��+_�ɣ��]&a_�Z�<xt���\'>�@���c���]�;q�����v��<כ>�1L}]=�s_8�m>gdx1Ҩ�y���M���3�TE� ����?�R�kF��ä.+�/��&��!P����;�=�ov�r�&�r��oD�l�z���ܸ��T ���o��4�rCg@%Rՙ����/"�*��Mw�H��Fj`��y���l�������"�P�4n'��)F}����E�x��4_ ���V�����/� �!���@�9L�<]�O�C�a\�l	��V�@d9`�VFg>@^Gv2�ٙ؏���dr��0�l_Mͻ%����QS�>�5}�E��dxM�ٛ����	�Z׫�1�,n�/�
`1�<��]���\Gr{Ox��Gȿ�k�`������'�9k)a��:��R�H[��t�#�m���R2��.5ȷd���Wv���"I��R��U[d�4W����+亃��;�\g2�����N=oVr��=p�<�`��C}Q=��HIf��8(��(�Fb?좶�f!��U0��m�+l (
֒X?IBϖE:�P��o�wbÉmN|VbX&�ő��^��|w�@!;�p
�B�2d�H�%ա�\��P(t;�IZ��Fa:pm�3(;�eZ��$c�ёN{z1 ��`xq2BI�K$E�:n�H�������{
�e�w��`%�����:���l 6LK�Rw\��t�d����{I޿�ҁ4(�N��U�1��,�EV��<HE���0EQ�.ŀb���j_�jU�8n$�*y`y���7w�s�G�B��z�Ҩ�1�WU�o�M[m���QG�u����5E}ܢ5C�;фޤ9jqt�8-PR��D�~��:2�;�/��D�֨��Fm�F�1��y wfCY��[�1�h\0��J�%C�NqC�'���4�T�����p4�ȌCN�0��3#ѨC����e����/U��	S^�_��r��Ơ��0���p�q��~C��=;�      �   �  x���_w�Hş�O�O���Gǎ�L,Ǜx�ɜ}i�=k^��(�~o���<̜$7���{��p�������l�n����yf7�Y�aĢ��?T�_7�v�.�u�.Ϊ']ꖝ���<Ń�-��Z�rA˵u�����J=���5K��Ł`�7E�_�eY�M���]���w�,��D����.�5�Z�v]�����f2�G� �B��U��]�z��˺P���Ey��� c�M��Z�X뫪�����+%ǃY ��x-�b��mQ�_X��(4N@崢rvV꟪z���K��O;<�d�,Uk�Lh�<�B���->�f�}���[mLh�(�����[b���fql
"��mԚG�\�w����fg<��@m�k0�S��n��Rjv���� �;{U�N`���իn��g&Cn D	�T�مc������df D��ڕj���m���_X�q!��5!��Z��o�	��Ƥ���d[���ŧ�zr�lT�*ڕ� ,�(�i���u�bV���{k5.�����=^��b�3��V�g,c�G��v���Ʋ�ۦ.�l��	�PG:�5t����в�*�^꒲�%�0x�<a���V�)�#�ݜ3nV�.؇F������Zs�r��V�zq^l���;&�9E�I�g:�R+~ z���g�����^��g�VY7�]��g4��a���3vV<�j�o��X=�r'�x�Dj�%�XЋ����/���9J�<g׻�sW7�&�ݩ͋�ɛq����R4�şv��]�>_1s�!��^�.GHDA��;]�
�:����ȗ��R��.�`Dqv��f�<#A�@<���� �A��r��<J�mP�vA�B���?8��:M�Y���D��A;e�0I����qhLQ ��/�C[¶El��q�Iش>y�"M��� ���b;ԡ#ц�r�ؔh����0bJ��]dޓ����&M	�H�Jœ*�9[J�$r�r�ǘ/�A��T���C$���zӃaDs����_3��A�8C���,x$)�&ڝ{L8S�>�����U&T�SI(mh.Ǣ��r�YԪW١"� ��T�L+'H#�eu=)�4H9r?��,H�	�1-	���`�v��'D��)MЖSly���Mg$�Y)`�vМ6������oM%ͤ���L�.��j���
Kwμ��F�Օ�YܻrQ꽩jK�`��hY7��M	:V`rd��߮yY�]P�
L�Q��'�/_�U�t����J����iJ%�A�I��jW����/GJL:P�+=�q���HPّ�k��d�h��2�e��e�1,���v��C#c�u7���<Ip6���y��L�Oґ)�E��}��#3W�̂������ȼ��N��Ck��o��#{�w1��9������,�cs�� AO$��G䉯���a����y	���6d
�"]�0���]�:�������<pZ��73jA�rwEϪ�Rwy3�&
��"NÉ��^9'�DajUн{�Lv�m��U6�޾g�Dan
�Sh�{;?����^�C�ѹp��m�v-��M8�p�|�u��/bt�QW�ޭ�͋]qM������#FK����:?ƈ�]��޾�<��˰%[҉AM�׬���������I֖Qs%<]w�]j�s�����s�Y4��]��[hС���$N�)~!���o0�f��6�r�Ҧ��Jh��tg�v�ɓ�к�N����q�*���!��4���S+=
t	@P#�6С�W?��Ł{"���0�:y��v�0pϦ�UW�� 4��p�o�AWU�/Q��/61��ݽd���O�LjDw�ӑ�� 6&=@��w���^��g�7"@S�����^���M�$���T��ð�Ǳ#+��@�٠m�.�p�
*q�Xa�u�-|��dq�����i�
����{9h����C\tĕ���L8}.-�˨A	ȶ�%�"��J���m�3���Ef�er
E�����/�Y%�4L���k�����t�m A�`��b:hk�T��r�[�NB/��u����^��)V�E����Fm�<�������U��Z�w-*��u��=�E��+��}��E"x�y�n�:p�A���ڍ�z�����+կ
�d;S�Nc7U�`7.�x�}DG;I}[r�LM���T�Ў,�ߐޞs��Ka����n��ʵ���vX��ޡ[^���@����$�Հk���]���|��v�z��i=�4t3۳P��{g�2HmMH���@�:Δ������TӘ5?�Lt��p;��v̟�L�?{��焾B��D����)wN 4������@S��o�a0M��?�_[��9�,4��dΜSP�"�Im׺����K#�LL3~�f�Ú���Alf���f�ZA��c��o���ї'L�Hgԥ�=w�3�D9�ؿwZw�~9m�9��˞&��¸�ެ�|��^�����}���ߌ�p�?�vW�a2f�\r�o�E��n�{]=�/%�I��`A��k�Ô���I�e¾��x���)�$�2e��
B��9���W�
���H\SKl��o�a�N[-a���*���=c�{C�BsI앜��ݗ��8+v�����]�$$3�6���|�}Bi) ��W9��}3�m�H�w��0S�\sa{z2ݞd
�y���N��t��}����LA8�#�o>�r��H��qN�3�b�E���;+���~$ڏ0f�?ڒ���/���
P������n�^N��8u�-��R����<���q	�&m��p�a�Ooo��37X�����x�>q'�0I�o2��R$~���Zl6����472j?�N@ ���I�<����l<3`����Ϝ�}�Q쿮7j�Z� 8����t&g�%V�w(�3�`�Qj��۵��;�(닝o�x���a$}��鄒�/�M�x�ۛOZEx<������$������X"A�܉��n8,z�&��ǃ�����.	��hWw��
�ǻ�Ůx;4:
 �AG{�Ow���{��6��8��}�I��|I�F_H�jJ_ w-�?�YB{1���nZ�jle�<~R��~�ǫнal�8c�B��Ԗ2v�\��T�$(��7�ܢ32���FN�����Xv�k��\����]��%��p�����������.?"HB':u��k��	_��O� 
1�15D�i��s���Q�^��R0�<��h���ߦ�T�b�~mkfE��Ͽ� �?�2      �   2  x��Z�R�8}V��?�[��~!��"�S�/"��Z��f���-;f�}�aB��ݧO�nAɍL2�Rr2!w���]�/�ԶmJ~��#/RF&r�SkJ�)�����+V�ı���MB�D��!7,��t)ʄ\�[YX�l�S^�K��g���5=J�[.S^����Ӓes�ϕ}J?&A@�p����%Qw/d���1cI���Ȥ(H`�����ɪ���5a������~h� "�;�x�d֓H��+r������׾�YV��7�|�1�w�����9���z*��K��w�0eU�LH���$��O1�cW�hL"�Ј8� "�R�&��y^���_
� u���n��Ō�r�z���9��u���RB=�Jɝd����ER!�,��%6n���~@�`�<M����3���7l��1N�R�;1�:v�'4�W��>u� ���V��A�q�U���e3Q�>����U!d�'@	�]�ЀŜg�K_�
��,��+�-�kG�0�}D]' aL|��m���,�u�^�8]��F!bs�R<=��A��or۹�(�o���a���qr�r>H�$|3��.n��#�I� ���5b���pJ[;
���ؐ�[�@�a��Ұ����!"�m����A�EEN�����x�ά��2UƆ ��ND9KPs��19a͢w\�h� rmr	B�+u-L#�1e9��"��7��:�g��ȬG��h�� r���Lg�	�8���m0M�;��~�r�ۍ�n��ɒ62��ܘ�T�m�4Tg�M&��@R��|��i��<��H%�&��5Y�\f�G�e�T?S4\d�BB
�OEE�J�Z��Va^��E�0Yy�j<Pb^��5�M�6���+��`"��>Ģ�6=�1��W#�&�ϓo9�B���ps�� �F�\�<*� �Rl2��3���M���a?�����Ҥ3�eN�j@�p)��'�w�mM��QA7��Sk�#��@����t�q�uydk�RD�pV���Wvo���;�(ײD��bUl�� Uc� Q�չ��l.X�^��E��O�Gl���F<r]�1�uH�p��c@yŏ�����*xYĮJ���.���-Jy��a�X���_�>ת���ܰ�sMfW�eb��n><��ļ�̽�ߧJ��M��`:�����F��!�A��.K�2����g�2�Żh#_qė��dx��\L�������N<���f~�쫆]��3���Q�,����"���Z;պBrT$��kغ�"��C���2�t�=�t�5����~� l�J�V���H��R�AL�y�I�y!�Um���jD�N�ξ�|&����	�z�7Q��$����j�ǀ�ƪj�cJۄM2[bN�Dv�U7�jn �h�Wk�5�o"���Z	�;"�ZAe��@A���QAj��b"���i�T-���0�c�=�QO2�� �J� D��*[މ���% �X�S=��Ȃ��x�؄f���mh�y�9��h��Wsp���yղF�\o{��k�ǡ'(�s�n���(��-~p@Ԋ�e�3vv[^�A�w��Ǯ�
GJ�UK���97��s[�q���R��@�x�v��o�4���=��� ���jvE��Zq�p:}?uNԎ4!i,��:!Bq�5���>�	��&��D���K�m�'8�^G��g��R�%���T��ĠE��a8�)���_�]��������Ǩ�B��qq� ���3Y��T�_od�krڶ�8�m]GPK����-��橯{\?�QӐ󯠤/9[��;��d䖳;Ş�G�Al7�z��L�����#O��S���]��g�cb;ҬӚU��6\��=��-��]�����9v�]��"�D�-o���1f���-�����9��-a	\]Tc�V^�Щ�fUi�Zn`�}�ֵ�&6�b�>]-~���}(��GC�r���jƊ��"u���Q�$�An�a-���\{c,+^;�Fh>��g�`"�l�����j��۫{�s�ֿ�?Ŏ�99#2������j�?���N����=u1L�~�5s�ȫ��������~��`��      �   m  x�]Q�N�0=�_�/@Yڦ9�T�"h+@BH\��ģ�8e�z��Ъ�Y�6S��4`���d�ģ��U�[rހm�Ʃ����4t��3y&�Kj�������Tv���ɐ��� ��j�����!Q��7rAV�8��Q|:�Q)H��=��F��Y�l�`��X�j:J��S�Y:�D�H��AK�2�W���f�d�h�W!� �2"��(�X����P>���y���e3]S��҇;�y�vIC����=+�Y���`�����D�����F��,�"�G�*S/1<�4�|�l5)�_b��������;�w���Uٰ�Ze>4��*k���!2�Û�F��;l|Bo�߃��˅�����     