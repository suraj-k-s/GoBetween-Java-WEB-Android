# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_mainproject
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2021-06-19 12:24:39
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_mainproject'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_mainproject" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_mainproject";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_email" varchar(50) default NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_email", "admin_password") VALUES
	('1','admin@gmail.com','Admin@123');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_category'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_category" (
  "category_id" int(10) unsigned NOT NULL auto_increment,
  "category_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("category_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_category'
#

LOCK TABLES "tbl_category" WRITE;
/*!40000 ALTER TABLE "tbl_category" DISABLE KEYS;*/
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('1','Fruits');
REPLACE INTO "tbl_category" ("category_id", "category_name") VALUES
	('2','Furniture');
/*!40000 ALTER TABLE "tbl_category" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_company'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_company" (
  "company_id" int(10) unsigned NOT NULL auto_increment,
  "company_name" varchar(50) NOT NULL,
  "company_contact" varchar(50) NOT NULL,
  "company_email" varchar(50) NOT NULL,
  "company_address" varchar(50) NOT NULL,
  "company_doj" varchar(50) NOT NULL,
  "company_since" varchar(50) NOT NULL,
  "company_proof" varchar(50) NOT NULL,
  "company_logo" varchar(50) NOT NULL,
  "location_id" int(10) unsigned NOT NULL,
  "owner_name" varchar(50) NOT NULL,
  "owner_email" varchar(50) NOT NULL,
  "owner_contact" varchar(50) NOT NULL,
  "owner_password" varchar(50) NOT NULL,
  "company_status" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("company_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_company'
#

LOCK TABLES "tbl_company" WRITE;
/*!40000 ALTER TABLE "tbl_company" DISABLE KEYS;*/
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_contact", "company_email", "company_address", "company_doj", "company_since", "company_proof", "company_logo", "location_id", "owner_name", "owner_email", "owner_contact", "owner_password", "company_status") VALUES
	('3','P AND G','9847725123','pandg@gmail.com','P and G, Kothamangalam','2021-05-29','2019-05-15','proof_1778.png','logo_1762.jpg','2','Ashil','ashileldhose98@gmail.com','9847725111','Iam@hero26','1');
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_contact", "company_email", "company_address", "company_doj", "company_since", "company_proof", "company_logo", "location_id", "owner_name", "owner_email", "owner_contact", "owner_password", "company_status") VALUES
	('4','UNILOG TRANSPORTING COMPANY','097456 1234','unilog@gmail.com',' Palarivattom, Kochi, Kerala','2021-05-30','2016-02-10','proof_1590.png','logo_1355.png','4','Hari','hari@gmail.com','9685741236','Iam@hari123','1');
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_contact", "company_email", "company_address", "company_doj", "company_since", "company_proof", "company_logo", "location_id", "owner_name", "owner_email", "owner_contact", "owner_password", "company_status") VALUES
	('5','Texas','956251193','texas@gmail.com','MELBHAGATH HOUSE','2021-06-01','2020-02-05','proof_1552.png','logo_1198.png','5','Ashmy','ashmy@gmail.com','9562511931','Iam@ashmy12','1');
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_contact", "company_email", "company_address", "company_doj", "company_since", "company_proof", "company_logo", "location_id", "owner_name", "owner_email", "owner_contact", "owner_password", "company_status") VALUES
	('6','Welfare','9847725123','welfare@gmail.com','Kothamangalam','2021-06-02','2012-02-02','proof_1102.jpg','logo_1945.png','2','Anna','anna@gmail.com','984725123','Iam@anna123','2');
REPLACE INTO "tbl_company" ("company_id", "company_name", "company_contact", "company_email", "company_address", "company_doj", "company_since", "company_proof", "company_logo", "location_id", "owner_name", "owner_email", "owner_contact", "owner_password", "company_status") VALUES
	('7','Zero','5678675456','zero@gmail.com','zero','2021-06-16','2021-06-02','proof_1936.jpg','logo_1474.JPG','3','ANN','ann@gmail.com','987867567','Ann@199789','1');
/*!40000 ALTER TABLE "tbl_company" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_company_driver'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_company_driver" (
  "company_driver_id" int(10) unsigned NOT NULL auto_increment,
  "company_id" int(10) NOT NULL,
  "driver_id" int(10) unsigned NOT NULL,
  "company_driver_status" int(10) unsigned NOT NULL default '0',
  "company_driver_date" varchar(50) NOT NULL,
  PRIMARY KEY  ("company_driver_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_company_driver'
#

LOCK TABLES "tbl_company_driver" WRITE;
/*!40000 ALTER TABLE "tbl_company_driver" DISABLE KEYS;*/
REPLACE INTO "tbl_company_driver" ("company_driver_id", "company_id", "driver_id", "company_driver_status", "company_driver_date") VALUES
	('5',3,'4','0','2021-06-13');
REPLACE INTO "tbl_company_driver" ("company_driver_id", "company_id", "driver_id", "company_driver_status", "company_driver_date") VALUES
	('6',5,'6','0','2021-06-15');
REPLACE INTO "tbl_company_driver" ("company_driver_id", "company_id", "driver_id", "company_driver_status", "company_driver_date") VALUES
	('7',5,'5','0','2021-06-15');
REPLACE INTO "tbl_company_driver" ("company_driver_id", "company_id", "driver_id", "company_driver_status", "company_driver_date") VALUES
	('8',3,'8','0','2009-01-01');
/*!40000 ALTER TABLE "tbl_company_driver" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complaint'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complaint" (
  "complaint_id" int(10) unsigned NOT NULL auto_increment,
  "complaint_content" varchar(50) NOT NULL,
  "complainttype_id" int(10) unsigned NOT NULL,
  "complaint_date" varchar(50) NOT NULL,
  "complaint_status" int(10) unsigned NOT NULL default '0',
  "complaint_reply" varchar(50) NOT NULL default 'Not Yet Reply',
  "user_id" int(10) unsigned NOT NULL default '0',
  "company_id" int(10) unsigned NOT NULL default '0',
  "driver_id" int(10) unsigned NOT NULL default '0',
  "complaint_reply_date" varchar(50) NOT NULL default '0',
  PRIMARY KEY  ("complaint_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_complaint'
#

LOCK TABLES "tbl_complaint" WRITE;
/*!40000 ALTER TABLE "tbl_complaint" DISABLE KEYS;*/
REPLACE INTO "tbl_complaint" ("complaint_id", "complaint_content", "complainttype_id", "complaint_date", "complaint_status", "complaint_reply", "user_id", "company_id", "driver_id", "complaint_reply_date") VALUES
	('9','txgfrbg,ki','3','2009-01-01','1','tyjk','3','0','0','2009-01-01');
/*!40000 ALTER TABLE "tbl_complaint" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_complainttype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_complainttype" (
  "complainttype_id" int(10) unsigned NOT NULL auto_increment,
  "complainttype_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("complainttype_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_complainttype'
#

LOCK TABLES "tbl_complainttype" WRITE;
/*!40000 ALTER TABLE "tbl_complainttype" DISABLE KEYS;*/
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	('3','Delivery – related Complaint');
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	('4','Online - Service Complaint');
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	('5','First-time complaint');
REPLACE INTO "tbl_complainttype" ("complainttype_id", "complainttype_name") VALUES
	('6','Quality of vehicle complaint');
/*!40000 ALTER TABLE "tbl_complainttype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_district'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_district" (
  "district_id" int(11) NOT NULL auto_increment,
  "district_name" varchar(50) NOT NULL,
  "state_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("district_id")
) AUTO_INCREMENT=19;



#
# Dumping data for table 'tbl_district'
#

LOCK TABLES "tbl_district" WRITE;
/*!40000 ALTER TABLE "tbl_district" DISABLE KEYS;*/
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(11,'Ernakulam','4');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(12,'Kannur','4');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(13,'Thrissur','4');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(14,'Chennai','5');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(15,'Coimbatore','5');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(16,'Bangalore','6');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(17,'Kasargod','4');
REPLACE INTO "tbl_district" ("district_id", "district_name", "state_id") VALUES
	(18,'Amritsar','7');
/*!40000 ALTER TABLE "tbl_district" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_driver'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_driver" (
  "driver_id" int(10) unsigned NOT NULL auto_increment,
  "driver_name" varchar(50) NOT NULL,
  "driver_primary_contact" varchar(50) NOT NULL,
  "driver_secondary_contact" varchar(50) NOT NULL,
  "driver_email" varchar(50) NOT NULL,
  "driver_proof" varchar(50) NOT NULL,
  "driver_photo" varchar(50) NOT NULL,
  "driver_dob" varchar(50) NOT NULL,
  "driver_doj" varchar(50) NOT NULL,
  "driver_password" varchar(50) NOT NULL,
  "driver_address" varchar(50) NOT NULL,
  "driver_expirence" varchar(50) NOT NULL,
  "location_id" int(10) unsigned NOT NULL,
  "driver_status" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("driver_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_driver'
#

LOCK TABLES "tbl_driver" WRITE;
/*!40000 ALTER TABLE "tbl_driver" DISABLE KEYS;*/
REPLACE INTO "tbl_driver" ("driver_id", "driver_name", "driver_primary_contact", "driver_secondary_contact", "driver_email", "driver_proof", "driver_photo", "driver_dob", "driver_doj", "driver_password", "driver_address", "driver_expirence", "location_id", "driver_status") VALUES
	('4','Merin','9562511933','9632587412','merin@gmail.com','proof_1303.pdf','photo_1505.jpg','1998-01-09','2021-05-29','Avengers@123','Atchayath H, kothamangalam','8 Years','2','1');
REPLACE INTO "tbl_driver" ("driver_id", "driver_name", "driver_primary_contact", "driver_secondary_contact", "driver_email", "driver_proof", "driver_photo", "driver_dob", "driver_doj", "driver_password", "driver_address", "driver_expirence", "location_id", "driver_status") VALUES
	('5','Alan','9562511933','9632587412','alan@gmail.com','proof_1011.jpg','photo_1812.jpg','1997-06-04','2021-05-30','Iam@alan123','Abcd','5 years','5','1');
REPLACE INTO "tbl_driver" ("driver_id", "driver_name", "driver_primary_contact", "driver_secondary_contact", "driver_email", "driver_proof", "driver_photo", "driver_dob", "driver_doj", "driver_password", "driver_address", "driver_expirence", "location_id", "driver_status") VALUES
	('6','Anna','9562511933','9632587412','annam@gmail.com','proof_1175.jpg','photo_1038.jpg','2008-06-04','2021-06-02','Avengers@23','anna@gmail.com','8 Years','4','1');
REPLACE INTO "tbl_driver" ("driver_id", "driver_name", "driver_primary_contact", "driver_secondary_contact", "driver_email", "driver_proof", "driver_photo", "driver_dob", "driver_doj", "driver_password", "driver_address", "driver_expirence", "location_id", "driver_status") VALUES
	('7','Driver','13456790969','90795864635','tssgft@gxtrsr.com','proof_1827.jpg','photo_1715.jpg','2009-01-21','2009-01-01','GHgfxgfxc @6534','gtdudfutdf','gtdft','8','1');
REPLACE INTO "tbl_driver" ("driver_id", "driver_name", "driver_primary_contact", "driver_secondary_contact", "driver_email", "driver_proof", "driver_photo", "driver_dob", "driver_doj", "driver_password", "driver_address", "driver_expirence", "location_id", "driver_status") VALUES
	('8','achu','234565456','7867545678','achu@gmail.com','proof_1451.jpg','photo_1595.jpg','1988-01-15','2009-01-01','Achu@1997','putheradethyu','5 year','2','1');
/*!40000 ALTER TABLE "tbl_driver" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_driver_license'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_driver_license" (
  "driver_license_front_photo" varchar(50) NOT NULL,
  "driver_license_back_photo" varchar(50) NOT NULL,
  "driver_license_date" varchar(50) NOT NULL,
  "driver_license_exp_date" varchar(50) NOT NULL,
  "driver_license_badge_exp_date" varchar(50) NOT NULL,
  "driver_license_class" varchar(50) NOT NULL,
  "driver_license_number" varchar(50) NOT NULL,
  "driver_license_id" int(10) unsigned NOT NULL auto_increment,
  "driver_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("driver_license_id")
) AUTO_INCREMENT=13;



#
# Dumping data for table 'tbl_driver_license'
#

LOCK TABLES "tbl_driver_license" WRITE;
/*!40000 ALTER TABLE "tbl_driver_license" DISABLE KEYS;*/
REPLACE INTO "tbl_driver_license" ("driver_license_front_photo", "driver_license_back_photo", "driver_license_date", "driver_license_exp_date", "driver_license_badge_exp_date", "driver_license_class", "driver_license_number", "driver_license_id", "driver_id") VALUES
	('front_1715.jpg','back_1431.jpg','2009-01-14','2029-01-14','2014-01-14','jtasdguDDS','1234567890','12','8');
/*!40000 ALTER TABLE "tbl_driver_license" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_driver_request'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_driver_request" (
  "request_id" int(11) NOT NULL auto_increment,
  "request_date" varchar(50) NOT NULL,
  "request_status" varchar(10) NOT NULL default 'Pending',
  "company_id" int(10) NOT NULL,
  "driver_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("request_id")
) AUTO_INCREMENT=17;



#
# Dumping data for table 'tbl_driver_request'
#

LOCK TABLES "tbl_driver_request" WRITE;
/*!40000 ALTER TABLE "tbl_driver_request" DISABLE KEYS;*/
REPLACE INTO "tbl_driver_request" ("request_id", "request_date", "request_status", "company_id", "driver_id") VALUES
	(13,'2021-06-14','Pending',3,'4');
REPLACE INTO "tbl_driver_request" ("request_id", "request_date", "request_status", "company_id", "driver_id") VALUES
	(14,'2021-06-15','Accepted',5,'6');
REPLACE INTO "tbl_driver_request" ("request_id", "request_date", "request_status", "company_id", "driver_id") VALUES
	(15,'2021-06-15','Accepted',3,'5');
REPLACE INTO "tbl_driver_request" ("request_id", "request_date", "request_status", "company_id", "driver_id") VALUES
	(16,'2009-01-01','Accepted',3,'8');
/*!40000 ALTER TABLE "tbl_driver_request" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_feedback'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_feedback" (
  "feedback_id" int(10) unsigned NOT NULL auto_increment,
  "feedback_content" varchar(50) NOT NULL,
  "feedback_date" varchar(50) NOT NULL,
  "user_id" int(10) unsigned NOT NULL default '0',
  "company_id" int(10) unsigned NOT NULL default '0',
  "driver_id" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("feedback_id")
);



#
# Dumping data for table 'tbl_feedback'
#

# No data found.



#
# Table structure for table 'tbl_location'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_location" (
  "location_id" int(10) unsigned NOT NULL auto_increment,
  "location_name" varchar(50) NOT NULL,
  "location_longitude" varchar(50) NOT NULL,
  "location_latitude" varchar(50) NOT NULL,
  "location_pincode" varchar(50) NOT NULL,
  "district_id" int(10) NOT NULL,
  PRIMARY KEY  ("location_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_location'
#

LOCK TABLES "tbl_location" WRITE;
/*!40000 ALTER TABLE "tbl_location" DISABLE KEYS;*/
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('2','Kothamangalam','76.6430635','10.0443841','686691',11);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('3','Thalassery','11.7879846','75.5001884',' 670101',12);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('4','Chalakudi','10.311879','76.331978','680307',13);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('5','Pollachi ','76.9403517','10.7069621','642001',15);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('6','Bekal','75.06723','12.39263','671318',17);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('7','Amritsar','74.9024852','31.6166541','143001',18);
REPLACE INTO "tbl_location" ("location_id", "location_name", "location_longitude", "location_latitude", "location_pincode", "district_id") VALUES
	('8','Perumbavoor','10.0652','10.0443841',' 670101',11);
/*!40000 ALTER TABLE "tbl_location" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_state'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_state" (
  "state_id" int(10) unsigned NOT NULL auto_increment,
  "state_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("state_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_state'
#

LOCK TABLES "tbl_state" WRITE;
/*!40000 ALTER TABLE "tbl_state" DISABLE KEYS;*/
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('4','Kerala');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('5','Tamil Nadu');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('6','Karnataka');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('7','Punjab');
REPLACE INTO "tbl_state" ("state_id", "state_name") VALUES
	('8','Uttar Pradesh');
/*!40000 ALTER TABLE "tbl_state" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_transport_request'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_transport_request" (
  "transport_request_id" int(10) unsigned NOT NULL auto_increment,
  "transport_request_description" varchar(50) NOT NULL,
  "transport_request_date" varchar(50) NOT NULL,
  "transport_request_qty" varchar(50) NOT NULL,
  "transport_request_for_date" varchar(50) NOT NULL,
  "transport_request_status" int(10) unsigned NOT NULL default '0',
  "user_id" int(10) unsigned NOT NULL,
  "from_location_id" int(10) unsigned NOT NULL,
  "to_location_id" int(10) unsigned NOT NULL,
  "transport_request_reply" varchar(50) NOT NULL default 'Pending',
  "company_id" int(10) unsigned NOT NULL,
  "category_id" int(10) unsigned NOT NULL,
  "delivery_time" varchar(50) NOT NULL,
  "delivery_date" varchar(50) NOT NULL,
  PRIMARY KEY  ("transport_request_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_transport_request'
#

LOCK TABLES "tbl_transport_request" WRITE;
/*!40000 ALTER TABLE "tbl_transport_request" DISABLE KEYS;*/
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('9','pinapple','2009-01-01','40','2009-01-02','3','4','2','5','Please Contact With us','3','1','06:25','2009-01-16');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('10','APPLE','2009-01-01','40','2009-01-02','3','3','2','3','Please Contact With us','3','1','01:00','2009-01-10');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('11','ORANGE','2009-01-01','10','2009-01-02','3','4','8','4','Please Contact With us','3','1','02:21','2009-01-09');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('12','Mango','2021-06-16','10','2021-06-17','3','4','2','3','Please Contact With us','3','1','11:40','2021-06-19');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('13','table','2021-06-17','15','2021-06-18','3','3','2','3','Please Contact With us','3','2','12:04','2021-06-21');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('14','chair','2021-06-17','10','2021-06-18','3','4','8','4','Please Contact With us','3','2','13:10','2021-06-21');
REPLACE INTO "tbl_transport_request" ("transport_request_id", "transport_request_description", "transport_request_date", "transport_request_qty", "transport_request_for_date", "transport_request_status", "user_id", "from_location_id", "to_location_id", "transport_request_reply", "company_id", "category_id", "delivery_time", "delivery_date") VALUES
	('15','apple','2021-06-19','10','2021-06-20','1','4','2','4','Please Contact With us','3','1','23:18','2021-06-21');
/*!40000 ALTER TABLE "tbl_transport_request" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_transport_shedule'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_transport_shedule" (
  "transport_shedule_id" int(10) unsigned NOT NULL auto_increment,
  "transport_shedule_date" varchar(50) NOT NULL,
  "transport_request_id" int(10) unsigned NOT NULL,
  "transport_shedule_status" int(10) unsigned NOT NULL default '0',
  "driver_id" int(10) unsigned NOT NULL default '0',
  "driver_id2" int(10) unsigned NOT NULL default '0',
  "vehicle_id" int(10) unsigned NOT NULL,
  "transport_amount" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("transport_shedule_id")
) AUTO_INCREMENT=16;



#
# Dumping data for table 'tbl_transport_shedule'
#

LOCK TABLES "tbl_transport_shedule" WRITE;
/*!40000 ALTER TABLE "tbl_transport_shedule" DISABLE KEYS;*/
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('9','2009-01-01','8','6','5','6','5','23500');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('10','2009-01-01','9','6','4','8','2','9100');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('11','2009-01-01','10','5','4','8','4','6500');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('12','2009-01-01','11','5','4','8','4','9000');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('13','2021-06-16','12','6','4','8','2','9100');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('14','2021-06-17','13','6','4','8','2','6600');
REPLACE INTO "tbl_transport_shedule" ("transport_shedule_id", "transport_shedule_date", "transport_request_id", "transport_shedule_status", "driver_id", "driver_id2", "vehicle_id", "transport_amount") VALUES
	('15','2021-06-17','14','5','4','8','2','9100');
/*!40000 ALTER TABLE "tbl_transport_shedule" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_transport_update'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_transport_update" (
  "transport_update_id" int(10) unsigned NOT NULL auto_increment,
  "transport_update_datetime" varchar(50) NOT NULL,
  "transport_update_location" varchar(50) NOT NULL,
  "transport_update_status" int(10) unsigned NOT NULL default '0',
  "transport_shedule_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("transport_update_id")
);



#
# Dumping data for table 'tbl_transport_update'
#

# No data found.



#
# Table structure for table 'tbl_user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_user" (
  "user_id" int(10) unsigned NOT NULL auto_increment,
  "user_name" varchar(50) NOT NULL,
  "user_contact" varchar(50) NOT NULL,
  "user_dob" varchar(50) NOT NULL,
  "user_doj" varchar(50) NOT NULL,
  "user_address" varchar(50) NOT NULL,
  "user_password" varchar(50) NOT NULL,
  "user_aadhar_number" varchar(50) NOT NULL,
  "user_email" varchar(50) NOT NULL,
  "user_status" int(10) unsigned NOT NULL default '0',
  "location_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("user_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_user'
#

LOCK TABLES "tbl_user" WRITE;
/*!40000 ALTER TABLE "tbl_user" DISABLE KEYS;*/
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_dob", "user_doj", "user_address", "user_password", "user_aadhar_number", "user_email", "user_status", "location_id") VALUES
	('3','Josy','9847725125','1998-05-31','2021-05-29','Josy, kothamangalam','We@are12','685932147896','josy@gmail.com','1','2');
REPLACE INTO "tbl_user" ("user_id", "user_name", "user_contact", "user_dob", "user_doj", "user_address", "user_password", "user_aadhar_number", "user_email", "user_status", "location_id") VALUES
	('4','Eldhose','9947720123','1982-06-09','2021-05-31','MELBHAGATH HOUSE','Iam@eldhose98','685932147899','eldhose@gmail.com','1','2');
/*!40000 ALTER TABLE "tbl_user" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vehicle'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vehicle" (
  "vehicle_id" int(10) unsigned NOT NULL auto_increment,
  "vehicle_chase_no" varchar(50) NOT NULL,
  "vehicle_reg_no" varchar(50) NOT NULL,
  "vehicle_insurance_date" varchar(50) NOT NULL,
  "vehicle_insurance_exp" varchar(50) NOT NULL,
  "vehicle_status" int(10) unsigned NOT NULL default '0',
  "vehiclesubtype_id" int(10) unsigned NOT NULL,
  "company_id" int(10) unsigned NOT NULL,
  "vehicle_detailes" varchar(100) NOT NULL,
  "vehicle_name" varchar(50) NOT NULL,
  "vehicle_amount" varchar(50) NOT NULL,
  PRIMARY KEY  ("vehicle_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_vehicle'
#

LOCK TABLES "tbl_vehicle" WRITE;
/*!40000 ALTER TABLE "tbl_vehicle" DISABLE KEYS;*/
REPLACE INTO "tbl_vehicle" ("vehicle_id", "vehicle_chase_no", "vehicle_reg_no", "vehicle_insurance_date", "vehicle_insurance_exp", "vehicle_status", "vehiclesubtype_id", "company_id", "vehicle_detailes", "vehicle_name", "vehicle_amount") VALUES
	('2','06276','KL40M1542','2019-05-15','2030-05-29','0','2','3','Medium sized','P AND G Truck','1600');
REPLACE INTO "tbl_vehicle" ("vehicle_id", "vehicle_chase_no", "vehicle_reg_no", "vehicle_insurance_date", "vehicle_insurance_exp", "vehicle_status", "vehiclesubtype_id", "company_id", "vehicle_detailes", "vehicle_name", "vehicle_amount") VALUES
	('3','06278','KL40M1545','2019-01-01','2031-10-02','0','4','4','Heavy up to 5','UNILOG Truck','1300');
REPLACE INTO "tbl_vehicle" ("vehicle_id", "vehicle_chase_no", "vehicle_reg_no", "vehicle_insurance_date", "vehicle_insurance_exp", "vehicle_status", "vehiclesubtype_id", "company_id", "vehicle_detailes", "vehicle_name", "vehicle_amount") VALUES
	('4','06279','KL40M1547','2016-10-11','2025-09-06','0','5','3','Heavy Truck For Vegetables','P AND G  Heavy Truck','1500');
REPLACE INTO "tbl_vehicle" ("vehicle_id", "vehicle_chase_no", "vehicle_reg_no", "vehicle_insurance_date", "vehicle_insurance_exp", "vehicle_status", "vehiclesubtype_id", "company_id", "vehicle_detailes", "vehicle_name", "vehicle_amount") VALUES
	('5','06278','KL40M1542','2021-06-16','2021-06-17','0','3','5','Good Milege','Texas Motors','3500');
REPLACE INTO "tbl_vehicle" ("vehicle_id", "vehicle_chase_no", "vehicle_reg_no", "vehicle_insurance_date", "vehicle_insurance_exp", "vehicle_status", "vehiclesubtype_id", "company_id", "vehicle_detailes", "vehicle_name", "vehicle_amount") VALUES
	('6','062755','KL40M1543','2016-02-10','2027-10-13','0','5','3','Heavy Truck For Vegetables','P AND G Motors','1800');
/*!40000 ALTER TABLE "tbl_vehicle" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vehiclesubtype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vehiclesubtype" (
  "vehiclesubtype_id" int(11) NOT NULL auto_increment,
  "vehiclesubtype_name" varchar(50) NOT NULL,
  "vehicletype_id" int(11) NOT NULL,
  PRIMARY KEY  ("vehiclesubtype_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_vehiclesubtype'
#

LOCK TABLES "tbl_vehiclesubtype" WRITE;
/*!40000 ALTER TABLE "tbl_vehiclesubtype" DISABLE KEYS;*/
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(2,'Tata Ace Mini Trucks',3);
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(3,'Tata Intra V10',4);
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(4,'ASHOK LEYLAND U 3718',5);
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(5,'Mahindra Truxo 31 – 202',5);
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(6,'Eicher Pro 6000',5);
REPLACE INTO "tbl_vehiclesubtype" ("vehiclesubtype_id", "vehiclesubtype_name", "vehicletype_id") VALUES
	(7,'macro trucks',3);
/*!40000 ALTER TABLE "tbl_vehiclesubtype" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vehicletype'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vehicletype" (
  "vehicletype_id" int(10) unsigned NOT NULL auto_increment,
  "vehicletype_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("vehicletype_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_vehicletype'
#

LOCK TABLES "tbl_vehicletype" WRITE;
/*!40000 ALTER TABLE "tbl_vehicletype" DISABLE KEYS;*/
REPLACE INTO "tbl_vehicletype" ("vehicletype_id", "vehicletype_name") VALUES
	('3','Light truck');
REPLACE INTO "tbl_vehicletype" ("vehicletype_id", "vehicletype_name") VALUES
	('4','Medium truck');
REPLACE INTO "tbl_vehicletype" ("vehicletype_id", "vehicletype_name") VALUES
	('5','Heavy truck');
/*!40000 ALTER TABLE "tbl_vehicletype" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
