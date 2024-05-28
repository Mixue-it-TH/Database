USE itbkanban;
/!40101 SET @saved_cs_client     = @@character_set_client/;
/!50503 SET character_set_client = utf8mb4/;
INSERT INTO tasks(id,taskTitle,taskDescription,taskAssignees,taskStatus,createdOn,updatedOn) values(1,'TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0','Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5','Assignees1Assignees2Assignees3','NO_STATUS','2024-4-22 09:00:00','2024-4-22 09:00:00');
INSERT INTO tasks(id,taskTitle,taskDescription,taskAssignees,taskStatus,createdOn,updatedOn) values(2,'Repository',null,null,'TO_DO','2024-4-22 09:05:00','2024-4-22 14:00:00');
INSERT INTO tasks(id,taskTitle,taskDescription,taskAssignees,taskStatus,createdOn,updatedOn) values(3,'ดาต้าเบส','ສ້າງຖານຂໍ້ມູນ','あなた、彼、彼女 (私ではありません)','DOING','2024-4-22 09:10:00','2024-4-25 00:00:00');
INSERT INTO tasks(id,taskTitle,taskDescription,taskAssignees,taskStatus,createdOn,updatedOn) values(4,'_Infrastructure_','_Setup containers_','ไก่งวง กับ เพนกวิน','DONE','2024-4-22 09:15:00','2024-4-22 10:00:00');


ALTER DATABASE itbkanban CHARACTER SET UTF8MB4 COLLATE  UTF8MB4_0900_AI_CI;