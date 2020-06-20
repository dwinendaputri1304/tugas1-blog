

CREATE TABLE IF NOT EXISTS `comments` (
  `postID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `commentDesc` varchar(500) NOT NULL,
  `commentAuthor` varchar(500) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postDesc` varchar(10000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postTag` varchar(40) NOT NULL,
  `postAuthor` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `posts_buffer` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postDesc` varchar(5000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `postTag` varchar(20) NOT NULL,
  `postAuthor` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usertype` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `users_buffer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usertype` varchar(20) NOT NULL DEFAULT 'nornal'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT '0',
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT '0',
  `postViews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User and Post relation Table';


ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);


ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);


ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);


ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;

ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;

ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;

ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;

ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
