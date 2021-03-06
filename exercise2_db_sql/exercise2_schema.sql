PGDMP         (                x         	   exercise2    13.1    13.1 <    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16718 	   exercise2    DATABASE     m   CREATE DATABASE exercise2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE exercise2;
                postgres    false            �            1259    16802    courses    TABLE     �   CREATE TABLE public.courses (
    course_id integer NOT NULL,
    professor_id integer NOT NULL,
    department_id integer NOT NULL
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    16800    courses_course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.courses_course_id_seq;
       public          postgres    false    210            �           0    0    courses_course_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;
          public          postgres    false    209            �            1259    16767 
   department    TABLE     �   CREATE TABLE public.department (
    department_id integer NOT NULL,
    num_of_dep integer NOT NULL,
    num_of_students integer NOT NULL,
    title "char" NOT NULL,
    faculty_id integer NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    16763    department_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.department_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.department_department_id_seq;
       public          postgres    false    208            �           0    0    department_department_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.department_department_id_seq OWNED BY public.department.department_id;
          public          postgres    false    206            �            1259    16765    department_num_of_dep_seq    SEQUENCE     �   CREATE SEQUENCE public.department_num_of_dep_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.department_num_of_dep_seq;
       public          postgres    false    208            �           0    0    department_num_of_dep_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.department_num_of_dep_seq OWNED BY public.department.num_of_dep;
          public          postgres    false    207            �            1259    16748    employee    TABLE     �  CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    name "char" NOT NULL,
    surname "char" NOT NULL,
    "TK" integer NOT NULL,
    city "char" NOT NULL,
    street "char" NOT NULL,
    at "char" NOT NULL,
    afm "char" NOT NULL,
    working_position "char" NOT NULL,
    date_hired date NOT NULL,
    street_number integer NOT NULL,
    area "char" NOT NULL,
    phone_numbers "char" NOT NULL,
    faculty_id integer NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16746    employee_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.employee_employee_id_seq;
       public          postgres    false    205            �           0    0    employee_employee_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;
          public          postgres    false    204            �            1259    16721    faculty    TABLE     �   CREATE TABLE public.faculty (
    title "char" NOT NULL,
    phone_numbers "char",
    faculty_id integer NOT NULL,
    "TK" integer,
    city "char",
    street "char",
    street_number integer,
    area "char"
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16719    faculty_faculty_id_seq    SEQUENCE     �   CREATE SEQUENCE public.faculty_faculty_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.faculty_faculty_id_seq;
       public          postgres    false    201            �           0    0    faculty_faculty_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.faculty_faculty_id_seq OWNED BY public.faculty.faculty_id;
          public          postgres    false    200            �            1259    16729 	   professor    TABLE     n  CREATE TABLE public.professor (
    professor_id integer NOT NULL,
    name "char" NOT NULL,
    surname "char" NOT NULL,
    specialty "char" NOT NULL,
    "TK" integer NOT NULL,
    city "char" NOT NULL,
    street "char" NOT NULL,
    street_number integer NOT NULL,
    area "char" NOT NULL,
    phone_numbers "char" NOT NULL,
    faculty_id integer NOT NULL
);
    DROP TABLE public.professor;
       public         heap    postgres    false            �            1259    16727    professor_professor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professor_professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.professor_professor_id_seq;
       public          postgres    false    203            �           0    0    professor_professor_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.professor_professor_id_seq OWNED BY public.professor.professor_id;
          public          postgres    false    202            �            1259    16820    student    TABLE     6  CREATE TABLE public.student (
    student_id integer NOT NULL,
    name "char" NOT NULL,
    mothers_name "char" NOT NULL,
    fathers_name "char" NOT NULL,
    surname "char" NOT NULL,
    "TK" integer NOT NULL,
    city "char" NOT NULL,
    street "char" NOT NULL,
    birth_date date NOT NULL,
    street_number integer NOT NULL,
    area "char" NOT NULL,
    phone_numbers "char" NOT NULL,
    absences integer NOT NULL,
    students_grades integer NOT NULL,
    course_id integer NOT NULL,
    faculty_id integer NOT NULL,
    department_id integer NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16818    student_student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.student_student_id_seq;
       public          postgres    false    212            �           0    0    student_student_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.student_student_id_seq OWNED BY public.student.student_id;
          public          postgres    false    211            G           2604    16805    courses course_id    DEFAULT     v   ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);
 @   ALTER TABLE public.courses ALTER COLUMN course_id DROP DEFAULT;
       public          postgres    false    210    209    210            E           2604    16770    department department_id    DEFAULT     �   ALTER TABLE ONLY public.department ALTER COLUMN department_id SET DEFAULT nextval('public.department_department_id_seq'::regclass);
 G   ALTER TABLE public.department ALTER COLUMN department_id DROP DEFAULT;
       public          postgres    false    208    206    208            F           2604    16771    department num_of_dep    DEFAULT     ~   ALTER TABLE ONLY public.department ALTER COLUMN num_of_dep SET DEFAULT nextval('public.department_num_of_dep_seq'::regclass);
 D   ALTER TABLE public.department ALTER COLUMN num_of_dep DROP DEFAULT;
       public          postgres    false    207    208    208            D           2604    16751    employee employee_id    DEFAULT     |   ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);
 C   ALTER TABLE public.employee ALTER COLUMN employee_id DROP DEFAULT;
       public          postgres    false    204    205    205            B           2604    16724    faculty faculty_id    DEFAULT     x   ALTER TABLE ONLY public.faculty ALTER COLUMN faculty_id SET DEFAULT nextval('public.faculty_faculty_id_seq'::regclass);
 A   ALTER TABLE public.faculty ALTER COLUMN faculty_id DROP DEFAULT;
       public          postgres    false    201    200    201            C           2604    16732    professor professor_id    DEFAULT     �   ALTER TABLE ONLY public.professor ALTER COLUMN professor_id SET DEFAULT nextval('public.professor_professor_id_seq'::regclass);
 E   ALTER TABLE public.professor ALTER COLUMN professor_id DROP DEFAULT;
       public          postgres    false    203    202    203            H           2604    16823    student student_id    DEFAULT     x   ALTER TABLE ONLY public.student ALTER COLUMN student_id SET DEFAULT nextval('public.student_student_id_seq'::regclass);
 A   ALTER TABLE public.student ALTER COLUMN student_id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    16802    courses 
   TABLE DATA           I   COPY public.courses (course_id, professor_id, department_id) FROM stdin;
    public          postgres    false    210   WK       �          0    16767 
   department 
   TABLE DATA           c   COPY public.department (department_id, num_of_dep, num_of_students, title, faculty_id) FROM stdin;
    public          postgres    false    208   tK       �          0    16748    employee 
   TABLE DATA           �   COPY public.employee (employee_id, name, surname, "TK", city, street, at, afm, working_position, date_hired, street_number, area, phone_numbers, faculty_id) FROM stdin;
    public          postgres    false    205   �K       �          0    16721    faculty 
   TABLE DATA           l   COPY public.faculty (title, phone_numbers, faculty_id, "TK", city, street, street_number, area) FROM stdin;
    public          postgres    false    201   �K       �          0    16729 	   professor 
   TABLE DATA           �   COPY public.professor (professor_id, name, surname, specialty, "TK", city, street, street_number, area, phone_numbers, faculty_id) FROM stdin;
    public          postgres    false    203   �K       �          0    16820    student 
   TABLE DATA           �   COPY public.student (student_id, name, mothers_name, fathers_name, surname, "TK", city, street, birth_date, street_number, area, phone_numbers, absences, students_grades, course_id, faculty_id, department_id) FROM stdin;
    public          postgres    false    212   �K       �           0    0    courses_course_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.courses_course_id_seq', 1, false);
          public          postgres    false    209            �           0    0    department_department_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.department_department_id_seq', 1, false);
          public          postgres    false    206            �           0    0    department_num_of_dep_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.department_num_of_dep_seq', 1, false);
          public          postgres    false    207                        0    0    employee_employee_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.employee_employee_id_seq', 1, false);
          public          postgres    false    204                       0    0    faculty_faculty_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.faculty_faculty_id_seq', 1, false);
          public          postgres    false    200                       0    0    professor_professor_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.professor_professor_id_seq', 1, false);
          public          postgres    false    202                       0    0    student_student_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.student_student_id_seq', 1, false);
          public          postgres    false    211            V           2606    16807    courses courses_id_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_id_pk PRIMARY KEY (course_id);
 ?   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_id_pk;
       public            postgres    false    210            T           2606    16773    department department_id_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_id_pk PRIMARY KEY (department_id);
 E   ALTER TABLE ONLY public.department DROP CONSTRAINT department_id_pk;
       public            postgres    false    208            N           2606    16757    employee employee_afm_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_afm_key UNIQUE (afm);
 C   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_afm_key;
       public            postgres    false    205            P           2606    16755    employee employee_at_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_at_key UNIQUE (at);
 B   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_at_key;
       public            postgres    false    205            R           2606    16753    employee employee_id_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_id_pk PRIMARY KEY (employee_id);
 A   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_id_pk;
       public            postgres    false    205            J           2606    16726    faculty faculty_id_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_id_pk PRIMARY KEY (faculty_id);
 ?   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_id_pk;
       public            postgres    false    201            L           2606    16734    professor professor_id_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT professor_id_pk PRIMARY KEY (professor_id);
 C   ALTER TABLE ONLY public.professor DROP CONSTRAINT professor_id_pk;
       public            postgres    false    203            X           2606    16825    student student_id_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_id_pk PRIMARY KEY (student_id);
 ?   ALTER TABLE ONLY public.student DROP CONSTRAINT student_id_pk;
       public            postgres    false    212            ]           2606    16813     courses courses_department_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_department_id_fk FOREIGN KEY (department_id) REFERENCES public.department(department_id);
 J   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_department_id_fk;
       public          postgres    false    208    210    2900            \           2606    16808    courses courses_professor_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_professor_id_fk FOREIGN KEY (professor_id) REFERENCES public.professor(professor_id);
 I   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_professor_id_fk;
       public          postgres    false    2892    210    203            [           2606    16774 #   department department_faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_faculty_id_fk FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);
 M   ALTER TABLE ONLY public.department DROP CONSTRAINT department_faculty_id_fk;
       public          postgres    false    201    2890    208            Y           2606    16735    professor faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.professor
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);
 A   ALTER TABLE ONLY public.professor DROP CONSTRAINT faculty_id_fk;
       public          postgres    false    201    2890    203            Z           2606    16758    employee faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT faculty_id_fk FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT faculty_id_fk;
       public          postgres    false    205    201    2890            _           2606    16831    student student_course_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_course_id_fk FOREIGN KEY (course_id) REFERENCES public.courses(course_id);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_course_id_fk;
       public          postgres    false    2902    212    210            `           2606    16836     student student_department_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_department_id_fk FOREIGN KEY (department_id) REFERENCES public.department(department_id);
 J   ALTER TABLE ONLY public.student DROP CONSTRAINT student_department_id_fk;
       public          postgres    false    212    2900    208            ^           2606    16826    student student_faculty_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_faculty_id_fk FOREIGN KEY (faculty_id) REFERENCES public.faculty(faculty_id);
 G   ALTER TABLE ONLY public.student DROP CONSTRAINT student_faculty_id_fk;
       public          postgres    false    2890    201    212            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     