PGDMP     %                    w           Employee_DB    11.4    11.4     U           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            V           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            W           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            X           1262    25383    Employee_DB    DATABASE     k   CREATE DATABASE "Employee_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE "Employee_DB";
             postgres    false            �            1259    25553    departments    TABLE     ~   CREATE TABLE public.departments (
    dept_no character varying(30) NOT NULL,
    dept_name character varying(30) NOT NULL
);
    DROP TABLE public.departments;
       public         postgres    false            �            1259    25558    dept_emp    TABLE     �   CREATE TABLE public.dept_emp (
    emp_no integer NOT NULL,
    dept_no character varying(30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
    DROP TABLE public.dept_emp;
       public         postgres    false            �            1259    25578    dept_manager    TABLE     �   CREATE TABLE public.dept_manager (
    dept_no character varying(30) NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
     DROP TABLE public.dept_manager;
       public         postgres    false            �            1259    25598 	   employees    TABLE       CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    gender character varying(10) NOT NULL,
    hire_date date NOT NULL
);
    DROP TABLE public.employees;
       public         postgres    false            �            1259    25593    salaries    TABLE     �   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
    DROP TABLE public.salaries;
       public         postgres    false            �            1259    25622    titles    TABLE     �   CREATE TABLE public.titles (
    emp_no integer NOT NULL,
    title character varying(30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
    DROP TABLE public.titles;
       public         postgres    false            �           2606    25557    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public         postgres    false    196            �           2606    25562    dept_emp dept_emp_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_pkey PRIMARY KEY (emp_no, dept_no);
 @   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_pkey;
       public         postgres    false    197    197            �           2606    25582    dept_manager dept_manager_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_pkey PRIMARY KEY (dept_no, emp_no);
 H   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_pkey;
       public         postgres    false    198    198            �           2606    25602    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    200            �           2606    25597    salaries salaries_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_pkey PRIMARY KEY (emp_no);
 @   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_pkey;
       public         postgres    false    199            �           2606    25626    titles titles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (emp_no, title, from_date);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public         postgres    false    201    201    201            �           2606    25563    dept_emp dept_emp_dept_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT dept_emp_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
 H   ALTER TABLE ONLY public.dept_emp DROP CONSTRAINT dept_emp_dept_no_fkey;
       public       postgres    false    197    196    3021            �           2606    25583 &   dept_manager dept_manager_dept_no_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);
 P   ALTER TABLE ONLY public.dept_manager DROP CONSTRAINT dept_manager_dept_no_fkey;
       public       postgres    false    3021    198    196           