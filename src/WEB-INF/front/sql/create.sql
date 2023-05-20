CREATE TABLE `admin` (
                         `adminid` varchar(20) NOT NULL,
                         `username` varchar(20) DEFAULT NULL,
                         `password` varchar(20) DEFAULT NULL,
                         `realname` varchar(20) DEFAULT NULL,
                         `contact` varchar(20) DEFAULT NULL,
                         `addtime` datetime DEFAULT NULL,
                         PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `article` (
                           `articleid` varchar(20) NOT NULL,
                           `title` varchar(50) DEFAULT NULL,
                           `image` varchar(100) DEFAULT NULL,
                           `contents` text,
                           `addtime` datetime DEFAULT NULL,
                           `hits` int(11) DEFAULT NULL,
                           PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `bbs` (
                       `bbsid` varchar(20) NOT NULL,
                       `usersid` varchar(20) DEFAULT NULL,
                       `title` varchar(50) DEFAULT NULL,
                       `contents` text,
                       `addtime` datetime DEFAULT NULL,
                       `hits` int(11) DEFAULT NULL,
                       `repnum` int(11) DEFAULT NULL,
                       `username` varchar(50) DEFAULT NULL,
                       `image` varchar(100) DEFAULT NULL,
                       PRIMARY KEY (`bbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `cart` (
                        `cartid` varchar(20) NOT NULL,
                        `usersid` varchar(20) DEFAULT NULL,
                        `goodsid` varchar(20) DEFAULT NULL,
                        `price` decimal(10,2) DEFAULT NULL,
                        `num` int(11) DEFAULT NULL,
                        `addtime` datetime DEFAULT NULL,
                        `username` varchar(50) DEFAULT NULL,
                        `goodsname` varchar(50) DEFAULT NULL,
                        `image` varchar(100) DEFAULT NULL,
                        PRIMARY KEY (`cartid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `cate` (
                        `cateid` varchar(20) NOT NULL,
                        `catename` varchar(50) DEFAULT NULL,
                        `image` varchar(100) DEFAULT NULL,
                        `addtime` datetime DEFAULT NULL,
                        `memo` varchar(200) DEFAULT NULL,
                        PRIMARY KEY (`cateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `complains` (
                             `complainsid` varchar(20) NOT NULL,
                             `usersid` varchar(20) DEFAULT NULL,
                             `ordersid` varchar(20) DEFAULT NULL,
                             `sellerid` varchar(20) DEFAULT NULL,
                             `goodsid` varchar(20) DEFAULT NULL,
                             `title` varchar(50) DEFAULT NULL,
                             `contents` text,
                             `addtime` datetime DEFAULT NULL,
                             `status` varchar(20) DEFAULT NULL,
                             `reps` text,
                             `username` varchar(50) DEFAULT NULL,
                             `ordercode` varchar(50) DEFAULT NULL,
                             `shopname` varchar(50) DEFAULT NULL,
                             `goodsname` varchar(50) DEFAULT NULL,
                             PRIMARY KEY (`complainsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





CREATE TABLE `goods` (
                         `goodsid` varchar(20) NOT NULL,
                         `sellerid` varchar(20) DEFAULT NULL,
                         `goodsname` varchar(50) DEFAULT NULL,
                         `cateid` varchar(20) DEFAULT NULL,
                         `image` varchar(100) DEFAULT NULL,
                         `price` decimal(10,2) DEFAULT NULL,
                         `addtime` datetime DEFAULT NULL,
                         `sellnum` int(11) DEFAULT NULL,
                         `hits` int(11) DEFAULT NULL,
                         `status` varchar(20) DEFAULT NULL,
                         `contents` text,
                         `shopname` varchar(50) DEFAULT NULL,
                         `catename` varchar(50) DEFAULT NULL,
                         PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `orders` (
                          `ordersid` varchar(20) NOT NULL,
                          `ordercode` varchar(50) DEFAULT NULL,
                          `usersid` varchar(20) DEFAULT NULL,
                          `goodsid` varchar(20) DEFAULT NULL,
                          `sellerid` varchar(20) DEFAULT NULL,
                          `price` decimal(10,2) DEFAULT NULL,
                          `num` int(11) DEFAULT NULL,
                          `total` decimal(10,2) DEFAULT NULL,
                          `addtime` datetime DEFAULT NULL,
                          `status` varchar(20) DEFAULT NULL,
                          `receiver` varchar(50) DEFAULT NULL,
                          `address` varchar(200) DEFAULT NULL,
                          `contact` varchar(50) DEFAULT NULL,
                          `username` varchar(50) DEFAULT NULL,
                          `goodsname` varchar(50) DEFAULT NULL,
                          `shopname` varchar(50) DEFAULT NULL,
                          PRIMARY KEY (`ordersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `rebbs` (
                         `rebbsid` varchar(20) NOT NULL,
                         `usersid` varchar(20) DEFAULT NULL,
                         `bbsid` varchar(20) DEFAULT NULL,
                         `contents` text,
                         `addtime` datetime DEFAULT NULL,
                         `username` varchar(50) DEFAULT NULL,
                         `title` varchar(50) DEFAULT NULL,
                         `image` varchar(100) DEFAULT NULL,
                         PRIMARY KEY (`rebbsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `seller` (
                          `sellerid` varchar(20) NOT NULL,
                          `username` varchar(50) DEFAULT NULL,
                          `password` varchar(50) DEFAULT NULL,
                          `shopname` varchar(50) DEFAULT NULL,
                          `idcard` varchar(50) DEFAULT NULL,
                          `contact` varchar(50) DEFAULT NULL,
                          `address` varchar(200) DEFAULT NULL,
                          `workdate` datetime DEFAULT NULL,
                          `status` varchar(20) DEFAULT NULL,
                          `regdate` datetime DEFAULT NULL,
                          PRIMARY KEY (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `topic` (
                         `topicid` varchar(20) NOT NULL,
                         `usersid` varchar(20) DEFAULT NULL,
                         `ordersid` varchar(20) DEFAULT NULL,
                         `sellerid` varchar(20) DEFAULT NULL,
                         `goodsid` varchar(20) DEFAULT NULL,
                         `num` int(11) DEFAULT NULL,
                         `contents` text,
                         `addtime` datetime DEFAULT NULL,
                         `username` varchar(50) DEFAULT NULL,
                         `ordercode` varchar(50) DEFAULT NULL,
                         `shopname` varchar(50) DEFAULT NULL,
                         `goodsname` varchar(50) DEFAULT NULL,
                         PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



