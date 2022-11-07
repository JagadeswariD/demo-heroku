-- INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U01','John','Matthew',123456789,'New Jersey','EST','https://www.linkedin.com/in/John Matthew/','Computer Science Engineering',' MBA',NULL,'Not-Specified','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U02','Steve','Job',879123456,'Idaho','PST','https://www.linkedin.com/in/Steve Job/','Mechanical Engineering',' Computer Science Engineering',NULL,'H4','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U03','Mary','Poppins',9562867512,'Pittsburgh','EST','https://www.linkedin.com/in/MaryPoppins/','Information Technology',' Computer Science Engineering',NULL,'GC-EAD','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U04','Robert','Louis',9566751211,'Minneapolis','IST','https://www.linkedin.com/in/RobertLouis/','Electronics and Communication Engineering',' Robotics',NULL,'GC-EAD','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U05','Stephen','Hawking',9562118900,'Arizona','MST','https://www.linkedin.com/in/StephenHawking/','Electronics and Communications Engineering',' Information Technology',NULL,'H1B','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U06','Sylvia','Rajan',9562009911,'India','IST','https://www.linkedin.com/in/SyliviaRajan/','Electronics and Electrical Engineering',' Computer Technology',NULL,'H4-EAD','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U07','Sarah','Anderson',6512348913,'Texas','CST','https://www.linkedin.com/in/Sarah Anderson/','Computer Science Engineering',' MBA',NULL,'US-Citizen','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U08','Maria','Peterson',6512391300,'Ontario','CST','https://www.linkedin.com/in/MariaPeterson/','Information Sciences',' MBA',NULL,'Canada-Citizen','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U09','Peter','Rogers',6512391300,'Toronto','CST','https://www.linkedin.com/in/MariaPeterson/','Information Sciences',' MBA',NULL,'Canada-EAD','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');
INSERT INTO public.tbl_lms_user(user_id, user_first_name, user_last_name, user_phone_number, user_location, user_time_zone, user_linkedin_url, user_edu_ug, user_edu_pg, user_comments, user_visa_status, creation_time, last_mod_time)	VALUES ('U10','Raghav','Sundar',9445677890,'INDIA','IST','https://www.linkedin.com/in/Raghav Sundar/','Computer Science Engineering',' MBA',NULL,'Indian-Citizen','2021-10-04 18:09:38.076245','2021-10-04 18:09:38.076245');

-- INSERT INTO public.tbl_lms_program(program_id, program_name, program_description, program_status, creation_time, last_mod_time) VALUES (?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_program(program_id, program_name, program_description, program_status, creation_time, last_mod_time) VALUES (1,'SDET',NULL,'Active','2021-10-04 18:14:48.326714','2021-10-04 18:14:48.326714');
INSERT INTO public.tbl_lms_program(program_id, program_name, program_description, program_status, creation_time, last_mod_time) VALUES (2,'DataScience',NULL,'Active','2021-10-04 18:14:48.326714','2021-10-04 18:14:48.326714');

-- INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (1,'01','SDET BATCH 01','Active',1,5,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (2,'01','DataScience BATCH 01','Active',2,3,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (3,'02','SDET BATCH 02','Active',1,6,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (4,'03','SDET BATCH 03','Active',1,4,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (5,'02','DataScience BATCH 02','Active',2,4,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (6,'05','SDET BATCH 05','Active',1,5,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (7,'06','SDET BATCH 06','Active',1,5,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');
INSERT INTO public.tbl_lms_batch(batch_id, batch_name, batch_description, batch_status, batch_program_id, batch_no_of_classes, creation_time, last_mod_time)VALUES (8,'03','DataScience BATCH 03','Active',2,4,'2021-10-04 18:16:02.713333','2021-10-04 18:16:02.713333');


-- INSERT INTO public.tbl_lms_assignments(a_id, a_name, a_description, a_comments, a_due_date, a_path_attach1, a_path_attach2, a_path_attach3, a_path_attach4, a_path_attach5, a_created_by, a_batch_id, a_grader_id, creation_time, last_mod_time)VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_assignments(a_id, a_name, a_description, a_comments, a_due_date, a_path_attach1, a_path_attach2, a_path_attach3, a_path_attach4, a_path_attach5, a_created_by, a_batch_id, a_grader_id, creation_time, last_mod_time)VALUES (1,'SQL Assignment','SQL Practice','','2021-10-05','Filepath1','Filepath2','Filepath3','Filepath4',NULL,'U02',1,'U02','2021-10-04 18:23:48.061949','2021-10-04 18:23:48.061949');
INSERT INTO public.tbl_lms_assignments(a_id, a_name, a_description, a_comments, a_due_date, a_path_attach1, a_path_attach2, a_path_attach3, a_path_attach4, a_path_attach5, a_created_by, a_batch_id, a_grader_id, creation_time, last_mod_time)VALUES (2,'Selenium Assignment','Selenium Practice','','2021-10-15','Filepath1','Filepath2','Filepath3','Filepath4',NULL,'U02',2,'U02','2021-10-04 18:23:48.061949','2021-10-04 18:23:48.061949');


-- INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (1,1,1,'2021-09-21','SQL','U02','SQL Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (2,1,2,'2021-09-21','Selenium','U02','Selenium Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (3,1,3,'2021-09-28','Postman','U03','Postman Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (4,2,1,'2021-09-28','Selenium','U02','Selenium Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (5,2,2,'2021-09-28','Postman','U03','Postman Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (6,2,3,'2021-10-02','PostGreSQL','U02','PostgresQL Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');
INSERT INTO public.tbl_lms_class_sch(cs_id, batch_id, class_no, class_date, class_topic, class_staff_id, class_description, class_comments, class_notes, class_recording_path, creation_time, last_mod_time) VALUES (7,3,4,'2021-10-10','Selenium','U02','Selenium Class','','C:\ClassNotes','C:\Recordings','2021-10-04 18:17:16.658917','2021-10-04 18:17:16.658917');


-- INSERT INTO public.tbl_lms_attendance(att_id, cs_id, student_id, attendance, creation_time, last_mod_time) VALUES (?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_attendance(att_id, cs_id, student_id, attendance, creation_time, last_mod_time) VALUES (1,1,'U04','Present','2021-10-04 18:22:35.129658','2021-10-04 18:22:35.129658');
INSERT INTO public.tbl_lms_attendance(att_id, cs_id, student_id, attendance, creation_time, last_mod_time) VALUES (2,4,'U04','Absent','2021-10-04 18:22:35.129658','2021-10-04 18:22:35.129658');
INSERT INTO public.tbl_lms_attendance(att_id, cs_id, student_id, attendance, creation_time, last_mod_time) VALUES (3,2,'U03','Excused','2021-10-04 18:22:35.129658','2021-10-04 18:22:35.129658');
INSERT INTO public.tbl_lms_attendance(att_id, cs_id, student_id, attendance, creation_time, last_mod_time) VALUES (4,4,'U02','Not Marked','2021-10-04 18:22:35.129658','2021-10-04 18:22:35.129658');


-- INSERT INTO public.tbl_lms_role(	role_id, role_name, role_desc, creation_time, last_mod_time) VALUES (?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_role(role_id, role_name, role_desc, creation_time, last_mod_time) VALUES ('R01','Admin','LMS_Admin','2021-10-04 18:06:42.970922','2021-10-04 18:06:42.970922');
INSERT INTO public.tbl_lms_role(role_id, role_name, role_desc, creation_time, last_mod_time) VALUES ('R02','Staff','LMS_Staff','2021-10-04 18:06:42.970922','2021-10-04 18:06:42.970922');
INSERT INTO public.tbl_lms_role(role_id, role_name, role_desc, creation_time, last_mod_time) VALUES ('R03','User','LMS_User','2021-10-04 18:06:42.970922','2021-10-04 18:06:42.970922');


-- INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (?, ?, ?, ?);
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (1,'Java','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (2,'Python','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (3,'Postman','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (4,'Selenium','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (5,'Spring','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');
INSERT INTO public.tbl_lms_skill_master(skill_id, skill_name, creation_time, last_mod_time)	VALUES (6,'Postgres','2021-10-04 18:14:01.957256','2021-10-04 18:14:01.957256');

-- INSERT INTO public.tbl_lms_submissions(	sub_id, sub_a_id, sub_student_id, sub_description, sub_comments, sub_path_attach1, sub_path_attach2, sub_path_attach3, sub_path_attach4, sub_path_attach5, sub_datetime, graded_by, graded_datetime, grade, creation_time, last_mod_time)	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_submissions(	sub_id, sub_a_id, sub_student_id, sub_description, sub_comments, sub_path_attach1, sub_path_attach2, sub_path_attach3, sub_path_attach4, sub_path_attach5, sub_datetime, graded_by, graded_datetime, grade, creation_time, last_mod_time)	VALUES (1,1,'U03','Submissions for SQL assignment',NULL,'Filepath1','Filepath2','Filepath3','Filepath4','Filepath5',NULL,'U02',NULL,250,'2021-10-04 18:28:30.451438','2021-10-04 18:28:30.451438');
INSERT INTO public.tbl_lms_submissions(	sub_id, sub_a_id, sub_student_id, sub_description, sub_comments, sub_path_attach1, sub_path_attach2, sub_path_attach3, sub_path_attach4, sub_path_attach5, sub_datetime, graded_by, graded_datetime, grade, creation_time, last_mod_time)	VALUES (2,2,'U05','Submissions for Selenium assignment',NULL,'Filepath1','Filepath2','Filepath3','Filepath4','Filepath5',NULL,'U02',NULL,295,'2021-10-04 18:28:30.451438','2021-10-04 18:28:30.451438');

-- INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES (?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U01','John.Matthew@gmail.com','John123','ACTIVE','What is your mothers maiden name','Sarah','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U02','Steve.Job@gmail.com','Steve123','INACTIVE','What is your mothers maiden name','Molly','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U04','Robert.Louis@gmail.com','Robert123','ACTIVE','What is the name of your first school','Angel HSS','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U05','Stephen.Hawking@gmail.com','Stephen','Active','What is your Nick name ?','Jackie','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U06','Syvlia.Rajan@gmail.com','Sylvia123','ACTIVE','What is the name of your first school','St.Joseph HSS','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U07','Sarah.Anderson@gmail.com','Sarah123','ACTIVE','What is your name mothers maiden name','Martina','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U08','Maria.Peterson@gmail.com','Peterson123','ACTIVE','What is your name of your first pet','Rocky','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U09','Peter.Rogers@gmail.com','Peter123','InActive','What is your School name?','Island Lake','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');
INSERT INTO public.tbl_lms_user_login(user_id, user_login_name, user_password, user_login_status, user_security_q, user_security_a, creation_time, last_mod_time)	VALUES ('U10','Raghav.Sundar@gmail.com','Sundar123','ACTIVE','What is your first school','Harmony Academy','2021-10-04 18:11:10.357897','2021-10-04 18:11:10.357897');


-- INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (1,'U01','R01','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (2,'U02','R02','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (3,'U03','R02','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (4,'U04','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (5,'U05','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (6,'U06','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (7,'U07','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (8,'U08','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (9,'U09','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');
INSERT INTO public.tbl_lms_userrole_map(user_role_id, user_id, role_id, user_role_status, creation_time, last_mod_time)	VALUES (10,'U10','R03','Active','2021-10-04 18:18:40.000121','2021-10-04 18:18:40.000121');

-- INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES (?, ?, ?);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR02',2,1);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR03',3,1);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR04',4,1);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR05',5,2);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR06',6,2);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR07',7,3);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR08',8,3);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR09',9,3);
INSERT INTO public.tbl_lms_userbatch_map(ub_map_id, user_role_id, batch_id)	VALUES ('UR10',10,3);


--INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)VALUES (?, ?, ?, ?, ?, ?);
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US01','U01',2,24,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US02','U02',1,36,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time) VALUES ('US03','U03',2,12,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time) VALUES ('US04','U04',6,36,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US05','U05',5,12,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US06','U06',5,12,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US07','U07',2,12,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US08','U08',1,32,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US09','U09',3,36,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');
INSERT INTO public.tbl_lms_userskill_map(user_skill_id, user_id, skill_id, months_of_exp, creation_time, last_mod_time)	VALUES ('US10','U10',2,10,'2021-10-04 18:33:20.133165','2021-10-04 18:33:20.133165');


-- INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (?, ?, ?, ?);
-- INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (1,'U01','Resume','C:\');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (2,'U01','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (3,'U02','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (4,'U02','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (5,'U03','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (6,'U03','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (7,'U04','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (8,'U04','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (9,'U05','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (10,'U05','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (11,'U06','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (12,'U06','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (13,'U07','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (14,'U07','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (15,'U08','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (16,'U08','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (17,'U09','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (18,'U09','ProfilePic','C:\Pictures');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (19,'U10','Resume','C:\Documents');
--INSERT INTO public.tbl_lms_user_files(user_file_id, user_id, user_file_type, user_file_path) VALUES (20,'U10','ProfilePic','C:\Pictures');
