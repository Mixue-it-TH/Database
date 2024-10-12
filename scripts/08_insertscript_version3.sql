INSERT INTO `itbkanban3`.`status` (`id`,`statusName`,`statusColor`,`statusDescription`) VALUES
(1,'No Status','#6b7280','A status has not been assigned'),
(2,'To Do','#F5C330','The task is included in the project'),
(3,'In Progress','#F5C330','The task is being worked on'),
(4,'Reviewing','#F55D30','The task is being reviewed'),
(5,'Testing','#30F558','The task is being tested'),
(6,'Waiting','#60F558','The task is waiting for a resource'),
(7,'Done','#30F558','The task has been completed');

insert into `itbkanban3`.`users` (`oid`, `userName`,`email`) values("1",'test', 'test@mail.com');
insert into `itbkanban3`.`config` (`noOfTasks`,`limitMaximumTask`) values(5, 0);
insert into `itbkanban3`.`boards` (`boardId`,`boardName`,`configId`) values('TEST011','test2', 1);

insert into `itbkanban3`.`collaborator` (`userId`,`boardId`,`role`,`ownerName`) values("1","TEST011","OWNER","I'm a OWNER");

insert into `itbkanban3`.`customStatus` (`statusId`, `statusName`, `statusDescription`, `statusColor`, `boardId`) values
(1,'No Status','A status has not been assigned','#6b7280',"TEST011");
INSERT INTO `itbkanban3`.`tasks` (`taskTitle`, `taskDescription`,`boardId`,`statusId`, `taskAssignees`,`createdOn`,`updatedOn`) VALUES
('TaskTitle1TaskTitle2TaskTitle3TaskTitle4TaskTitle5TaskTitle6TaskTitle7TaskTitle8TaskTitle9TaskTitle0','Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti1Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti2Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti3Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti4Descripti1Descripti2Descripti3Descripti4Descripti5Descripti6Descripti7Descripti8Descripti9Descripti5',
"TEST011",1,'Assignees1Assignees2Assignees3','2024-4-22 09:00:00','2024-4-22 09:00:00');