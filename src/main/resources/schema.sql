

-- Table: public.tbl_lms_user

 DROP TABLE IF EXISTS public.tbl_lms_user Cascade;

CREATE TABLE IF NOT EXISTS public.tbl_lms_user
(
    user_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_first_name character varying COLLATE pg_catalog."default" NOT NULL,
    user_last_name character varying COLLATE pg_catalog."default" NOT NULL,
    user_phone_number numeric NOT NULL,
    user_location character varying COLLATE pg_catalog."default" NOT NULL,
    user_time_zone character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'EST'::character varying,
    user_linkedin_url character varying COLLATE pg_catalog."default",
    user_edu_ug character varying COLLATE pg_catalog."default",
    user_edu_pg character varying COLLATE pg_catalog."default",
    user_comments character varying COLLATE pg_catalog."default",
    user_visa_status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'Not-Specified'::character varying,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT user_id_pk PRIMARY KEY (user_id),
    CONSTRAINT time_zone_chk CHECK (user_time_zone::text = ANY (ARRAY['PST'::character varying::text, 'MST'::character varying::text, 'CST'::character varying::text, 'EST'::character varying::text, 'IST'::character varying::text])),
    CONSTRAINT visa_status_chk CHECK (user_visa_status::text = ANY (ARRAY['Not-Specified'::character varying::text, 'NA'::character varying::text, 'GC-EAD'::character varying::text, 'H4-EAD'::character varying::text, 'H4'::character varying::text, 'H1B'::character varying::text, 'Canada-EAD'::character varying::text, 'Indian-Citizen'::character varying::text, 'US-Citizen'::character varying::text, 'Canada-Citizen'::character varying::text]))
);
-- SEQUENCE: public.tbl_lms_program_program_id_seq
 DROP TABLE IF EXISTS public.tbl_lms_program Cascade;
 --DROP SEQUENCE IF EXISTS public.tbl_lms_program_program_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_program_program_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

-- Table: public.tbl_lms_program



CREATE TABLE IF NOT EXISTS public.tbl_lms_program
(
    program_id integer NOT NULL DEFAULT nextval('tbl_lms_program_program_id_seq'::regclass),
    program_name character varying COLLATE pg_catalog."default" NOT NULL,
    program_description character varying COLLATE pg_catalog."default",
    program_status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'ACTIVE'::character varying,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT program_id_pk PRIMARY KEY (program_id),
    CONSTRAINT tbl_lms_program_program_name_key UNIQUE (program_name)
);

ALTER SEQUENCE public.tbl_lms_program_program_id_seq OWNED by  tbl_lms_program.program_id;


DROP TABLE IF EXISTS public.tbl_lms_batch cascade;
 --SEQUENCE: public.tbl_lms_batch_batch_id_seq

--DROP SEQUENCE IF EXISTS public.tbl_lms_batch_batch_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_batch_batch_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 2147483647
    CACHE 1;

-- Table: public.tbl_lms_batch



CREATE TABLE IF NOT EXISTS public.tbl_lms_batch
(
    batch_id integer NOT NULL DEFAULT nextval('tbl_lms_batch_batch_id_seq'::regclass),
    batch_name character varying COLLATE pg_catalog."default" NOT NULL,
    batch_description character varying COLLATE pg_catalog."default",
    batch_status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'ACTIVE'::character varying,
    batch_program_id integer NOT NULL,
    batch_no_of_classes integer NOT NULL DEFAULT 1,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT batch_id_pk PRIMARY KEY (batch_id),
    CONSTRAINT tbl_lms_batch_batch_name_batch_program_id_key UNIQUE (batch_name, batch_program_id),
    CONSTRAINT batch_fk FOREIGN KEY (batch_program_id)
        REFERENCES public.tbl_lms_program (program_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER SEQUENCE public.tbl_lms_batch_batch_id_seq OWNED BY tbl_lms_batch.batch_id;

DROP TABLE IF EXISTS public.tbl_lms_assignments cascade;
-- SEQUENCE: public.tbl_lms_assignments_a_id_seq

-- DROP SEQUENCE IF EXISTS public.tbl_lms_assignments_a_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_assignments_a_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
	
    
-- Table: public.tbl_lms_assignments

-- DROP TABLE IF EXISTS public.tbl_lms_assignments;

CREATE TABLE IF NOT EXISTS public.tbl_lms_assignments
(
    a_id bigint NOT NULL DEFAULT nextval('tbl_lms_assignments_a_id_seq'::regclass),
    a_name character varying COLLATE pg_catalog."default" NOT NULL,
    a_description character varying COLLATE pg_catalog."default" NOT NULL,
    a_comments character varying COLLATE pg_catalog."default",
    a_due_date date NOT NULL DEFAULT (CURRENT_DATE + '7 days'::interval),
    a_path_attach1 character varying COLLATE pg_catalog."default",
    a_path_attach2 character varying COLLATE pg_catalog."default",
    a_path_attach3 character varying COLLATE pg_catalog."default",
    a_path_attach4 character varying COLLATE pg_catalog."default",
    a_path_attach5 character varying COLLATE pg_catalog."default",
    a_created_by character varying COLLATE pg_catalog."default" NOT NULL,
    a_batch_id integer NOT NULL,
    a_grader_id character varying COLLATE pg_catalog."default" NOT NULL,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT assignment_id_pk PRIMARY KEY (a_id),
    CONSTRAINT a_batch_id_fk FOREIGN KEY (a_batch_id)
        REFERENCES public.tbl_lms_batch (batch_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT a_grader_id_fk FOREIGN KEY (a_grader_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);

ALTER SEQUENCE public.tbl_lms_assignments_a_id_seq OWNED BY tbl_lms_assignments.a_id;


DROP TABLE IF EXISTS public.tbl_lms_class_sch cascade;

-- SEQUENCE: public.tbl_lms_class_sch_cs_id_seq

DROP SEQUENCE IF EXISTS public.tbl_lms_class_sch_cs_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_class_sch_cs_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;	

-- Table: public.tbl_lms_class_sch



CREATE TABLE IF NOT EXISTS public.tbl_lms_class_sch
(
    cs_id bigint NOT NULL DEFAULT nextval('tbl_lms_class_sch_cs_id_seq'::regclass),
    batch_id integer NOT NULL,
    class_no integer NOT NULL,
    class_date date,
    class_topic character varying COLLATE pg_catalog."default",
    class_staff_id character varying COLLATE pg_catalog."default",
    class_description character varying COLLATE pg_catalog."default",
    class_comments character varying COLLATE pg_catalog."default",
    class_notes character varying COLLATE pg_catalog."default",
    class_recording_path character varying COLLATE pg_catalog."default",
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT cs_id_pk PRIMARY KEY (cs_id),
    CONSTRAINT cs_batch_id_fk FOREIGN KEY (batch_id)
        REFERENCES public.tbl_lms_batch (batch_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT staff_id_fk FOREIGN KEY (class_staff_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
);

ALTER SEQUENCE public.tbl_lms_class_sch_cs_id_seq OWNED BY tbl_lms_class_sch.cs_id;


 DROP TABLE IF EXISTS public.tbl_lms_attendance cascade;
     
--SEQUENCE: public.tbl_lms_attendance_att_id_seq

 DROP SEQUENCE IF EXISTS public.tbl_lms_attendance_att_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_attendance_att_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;    
    
-- Table: public.tbl_lms_attendance


CREATE TABLE IF NOT EXISTS public.tbl_lms_attendance
(
    att_id bigint NOT NULL DEFAULT nextval('tbl_lms_attendance_att_id_seq'::regclass),
    cs_id integer NOT NULL,
    student_id character varying COLLATE pg_catalog."default" NOT NULL,
    attendance character varying COLLATE pg_catalog."default" NOT NULL DEFAULT ROW('Not Marked', 'Present', 'Absent', 'Excused'),
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT cs_id_fk FOREIGN KEY (cs_id)
        REFERENCES public.tbl_lms_class_sch (cs_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT staff_id_fk FOREIGN KEY (student_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER SEQUENCE public.tbl_lms_attendance_att_id_seq OWNED BY tbl_lms_attendance.att_id;

-- Table: public.tbl_lms_role

 DROP TABLE IF EXISTS public.tbl_lms_role cascade;

CREATE TABLE IF NOT EXISTS public.tbl_lms_role
(
    role_id character varying COLLATE pg_catalog."default" NOT NULL,
    role_name character varying COLLATE pg_catalog."default" NOT NULL,
    role_desc character varying COLLATE pg_catalog."default",
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT role_id_pk PRIMARY KEY (role_id)
);

 DROP TABLE IF EXISTS public.tbl_lms_skill_master cascade;
-- SEQUENCE: public.tbl_lms_skill_master_skill_id_seq

 DROP SEQUENCE IF EXISTS public.tbl_lms_skill_master_skill_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_skill_master_skill_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
	
-- Table: public.tbl_lms_skill_master


CREATE TABLE IF NOT EXISTS public.tbl_lms_skill_master
(
    skill_id bigint NOT NULL DEFAULT nextval('tbl_lms_skill_master_skill_id_seq'::regclass),
    skill_name character varying COLLATE pg_catalog."default" NOT NULL,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT skill_id_pk PRIMARY KEY (skill_id)
);

	


ALTER SEQUENCE public.tbl_lms_skill_master_skill_id_seq OWNED BY tbl_lms_skill_master.skill_id;


 DROP TABLE IF EXISTS public.tbl_lms_submissions cascade;
 
-- SEQUENCE: public.tbl_lms_submissions_sub_id_seq

 DROP SEQUENCE IF EXISTS public.tbl_lms_submissions_sub_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_submissions_sub_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

-- Table: public.tbl_lms_submissions



CREATE TABLE IF NOT EXISTS public.tbl_lms_submissions
(
    sub_id bigint NOT NULL DEFAULT nextval('tbl_lms_submissions_sub_id_seq'::regclass),
    sub_a_id integer NOT NULL,
    sub_student_id character varying COLLATE pg_catalog."default" NOT NULL,
    sub_description character varying COLLATE pg_catalog."default" NOT NULL,
    sub_comments character varying COLLATE pg_catalog."default",
    sub_path_attach1 character varying COLLATE pg_catalog."default",
    sub_path_attach2 character varying COLLATE pg_catalog."default",
    sub_path_attach3 character varying COLLATE pg_catalog."default",
    sub_path_attach4 character varying COLLATE pg_catalog."default",
    sub_path_attach5 character varying COLLATE pg_catalog."default",
    sub_datetime timestamp without time zone,
    graded_by character varying COLLATE pg_catalog."default",
    graded_datetime timestamp without time zone,
    grade numeric NOT NULL,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT sub_a_id_fk FOREIGN KEY (sub_a_id)
        REFERENCES public.tbl_lms_assignments (a_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT sub_student_id_fk FOREIGN KEY (sub_student_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT tbl_lms_submissions_grade_check CHECK (grade < 300::numeric)
);



ALTER SEQUENCE public.tbl_lms_submissions_sub_id_seq OWNED BY tbl_lms_submissions.sub_id;


 DROP TABLE IF EXISTS public.tbl_lms_user_files cascade;
 	
-- SEQUENCE: public.tbl_lms_user_files_user_file_id_seq

 DROP SEQUENCE IF EXISTS public.tbl_lms_user_files_user_file_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_user_files_user_file_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
    
-- Table: public.tbl_lms_user_files


CREATE TABLE IF NOT EXISTS public.tbl_lms_user_files
(
    user_file_id bigint NOT NULL DEFAULT nextval('tbl_lms_user_files_user_file_id_seq'::regclass),
    user_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_file_type character varying COLLATE pg_catalog."default" NOT NULL,
    user_file_path character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT tbl_lms_user_files_user_id_user_file_type_key UNIQUE (user_id, user_file_type),
    CONSTRAINT user_file_fk FOREIGN KEY (user_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT file_desc_check CHECK (user_file_type::text = ANY (ARRAY['Resume'::character varying::text, 'ProfilePic'::character varying::text]))
);

ALTER SEQUENCE public.tbl_lms_user_files_user_file_id_seq OWNED BY tbl_lms_user_files.user_file_id;

-- Table: public.tbl_lms_user_login

 DROP TABLE IF EXISTS public.tbl_lms_user_login;

CREATE TABLE IF NOT EXISTS public.tbl_lms_user_login
(
    user_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_login_name character varying COLLATE pg_catalog."default" NOT NULL,
    user_password character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'WELCOME@123'::character varying,
    user_login_status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'ACTIVE'::character varying,
    user_security_q character varying COLLATE pg_catalog."default" NOT NULL,
    user_security_a character varying COLLATE pg_catalog."default" NOT NULL,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT user_login_id_pk PRIMARY KEY (user_id),
    CONSTRAINT user_login_fk FOREIGN KEY (user_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


 DROP TABLE IF EXISTS public.tbl_lms_userrole_map cascade;
-- SEQUENCE: public.tbl_lms_userrole_map_user_role_id_seq

 DROP SEQUENCE IF EXISTS public.tbl_lms_userrole_map_user_role_id_seq;

CREATE SEQUENCE IF NOT EXISTS public.tbl_lms_userrole_map_user_role_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;


-- Table: public.tbl_lms_userrole_map


CREATE TABLE IF NOT EXISTS public.tbl_lms_userrole_map
(
    user_role_id bigint NOT NULL DEFAULT nextval('tbl_lms_userrole_map_user_role_id_seq'::regclass),
    user_id character varying COLLATE pg_catalog."default" NOT NULL,
    role_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_role_status character varying COLLATE pg_catalog."default" NOT NULL DEFAULT 'ACTIVE'::character varying,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT user_role_id_pk PRIMARY KEY (user_role_id),
    CONSTRAINT tbl_lms_userrole_map_user_id_role_id_key UNIQUE (user_id, role_id),
    CONSTRAINT user_role_fk FOREIGN KEY (user_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT user_role_fk1 FOREIGN KEY (role_id)
        REFERENCES public.tbl_lms_role (role_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

ALTER SEQUENCE public.tbl_lms_userrole_map_user_role_id_seq OWNED BY tbl_lms_userrole_map.user_role_id;


-- Table: public.tbl_lms_userbatch_map

DROP TABLE IF EXISTS public.tbl_lms_userbatch_map;

CREATE TABLE IF NOT EXISTS public.tbl_lms_userbatch_map
(
    ub_map_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_role_id integer NOT NULL,
    batch_id integer NOT NULL,
    CONSTRAINT ub_map_id_pk PRIMARY KEY (ub_map_id),
    CONSTRAINT batch_id_fk FOREIGN KEY (batch_id)
        REFERENCES public.tbl_lms_batch (batch_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT user_role_fk FOREIGN KEY (user_role_id)
        REFERENCES public.tbl_lms_userrole_map (user_role_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Table: public.tbl_lms_userskill_map

 DROP TABLE IF EXISTS public.tbl_lms_userskill_map;

CREATE TABLE IF NOT EXISTS public.tbl_lms_userskill_map
(
    user_skill_id character varying COLLATE pg_catalog."default" NOT NULL,
    user_id character varying COLLATE pg_catalog."default" NOT NULL,
    skill_id integer NOT NULL,
    months_of_exp numeric NOT NULL,
    creation_time timestamp without time zone NOT NULL DEFAULT now(),
    last_mod_time timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT userskill_id_pk PRIMARY KEY (user_skill_id),
    CONSTRAINT tbl_lms_userskill_map_user_id_skill_id_key UNIQUE (user_id, skill_id),
    CONSTRAINT us_skill_id_fk FOREIGN KEY (skill_id)
        REFERENCES public.tbl_lms_skill_master (skill_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT us_user_id_fk FOREIGN KEY (user_id)
        REFERENCES public.tbl_lms_user (user_id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);