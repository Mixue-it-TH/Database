INSERT INTO `itbkanban2`.`status` (`id`,`statusName`,`statusColor`,`statusDescription`) VALUES
(1,'No Status','#6b7280','A status has not been assigned'),
(2,'To Do','#F5C330','The task is included in the project'),
(3,'In Progress','#F5C330','The task is being worked on'),
(4,'Reviewing','#F55D30','The task is being reviewed'),
(5,'Testing','#30F558','The task is being tested'),
(6,'Waiting','#60F558','The task is waiting for a resource'),
(7,'Done','#30F558','The task has been completed');

INSERT INTO `itbkanban2`.`tasks` (`taskTitle`, `taskDescription`, `taskAssignees`, `taskStatus`,`createdOn`,`updatedOn`) VALUES
('TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0','Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5',
'Assignees1Assignees2Assignees3',1,'2024-4-22 09:00:00','2024-4-22 09:00:00');
INSERT INTO `itbkanban2`.`tasks` (`taskTitle`, `taskDescription`, `taskAssignees`, `taskStatus`,`createdOn`,`updatedOn`) VALUES
('Repository',null,null,
2,'2024-4-22 09:10:00','2024-4-25 00:00:00');
INSERT INTO `itbkanban2`.`tasks` (`taskTitle`, `taskDescription`, `taskAssignees`, `taskStatus`,`createdOn`,`updatedOn`) VALUES
('ดาต้าเบส','ສ້າງຖານຂໍ້ມູນ','あなた、彼、彼女 (私ではありません)',
3,'2024-4-22 09:10:00','2024-4-25 00:00:00');
INSERT INTO `itbkanban2`.`tasks` (`taskTitle`, `taskDescription`, `taskAssignees`, `taskStatus`,`createdOn`,`updatedOn`) VALUES
('_Infrastructure_','_Setup containers_','ไก่งวง กับ เพนกวิน',
4,'2024-4-22 09:15:00','2024-4-22 10:00:00');