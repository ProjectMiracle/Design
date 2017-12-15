SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Account_Balance
-- ----------------------------
DROP TABLE IF EXISTS `Account_Balance`;
CREATE TABLE `Account_Balance` (
  `Account_Number` varchar(16) NOT NULL,
  `Country_Code` varchar(2) NOT NULL,
  `Group_Member` varchar(8) NOT NULL,
  `Currency` varchar(3) DEFAULT NULL,
  `Account_Balance` float(16,2) DEFAULT NULL,
  `Account_Name` varchar(30) DEFAULT NULL,
  `Nick_Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Country_Code`,`Group_Member`,`Account_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Account_Balance
-- ----------------------------
INSERT INTO `Account_Balance` VALUES ('007000007007', 'CN', 'HSBC', 'CNY', '7000.00', 'XXX', null);
INSERT INTO `Account_Balance` VALUES ('008000008008', 'CN', 'HSBC', 'CNY', '9000.00', 'ZZZ', null);
INSERT INTO `Account_Balance` VALUES ('009000009009', 'CN', 'HSBC', 'CNY', '10000.00', 'AAA', null);
INSERT INTO `Account_Balance` VALUES ('010000010010', 'CN', 'HSBC', 'CNY', '11000.00', 'BBB', null);
INSERT INTO `Account_Balance` VALUES ('004000004004', '中国', '恒生', 'CNY', '4000.00', '张三', null);
INSERT INTO `Account_Balance` VALUES ('005000005005', '中国', '恒生', 'CNY', '5000.00', '李四', null);
INSERT INTO `Account_Balance` VALUES ('001000001001', '中国', '汇丰', 'CNY', '20000.00', '黄晓明', null);
INSERT INTO `Account_Balance` VALUES ('002000002002', '中国', '汇丰', 'CNY', '1000.00', '陈大文', null);
INSERT INTO `Account_Balance` VALUES ('003000003003', '中国', '汇丰', 'CNY', '3000.00', '陈小文', null);
INSERT INTO `Account_Balance` VALUES ('006000006006', '中国', '汇丰', 'CNY', '6000.00', '王五', null);

-- ----------------------------
-- Table structure for Account_Transaction
-- ----------------------------
DROP TABLE IF EXISTS `Account_Transaction`;
CREATE TABLE `Account_Transaction` (
  `Record_ID` int(20) NOT NULL,
  `Reference_Number` int(20) NOT NULL,
  `Country_Code` varchar(2) NOT NULL,
  `Group_Member` varchar(8) NOT NULL,
  `Account_Number` varchar(16) NOT NULL,
  `Currency` varchar(3) NOT NULL,
  `Transaction_Amount` float(16,2) NOT NULL,
  `Transaction_Narrative` varchar(255) NOT NULL,
  `Value_Date` date NOT NULL,
  `Posting_Date` date NOT NULL,
  PRIMARY KEY (`Record_ID`,`Reference_Number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Account_Transaction
-- ----------------------------
INSERT INTO `Account_Transaction` VALUES ('1', '1', '中国', '汇丰银行', '001000001001', 'CNY', '-100.00', '用于华润万家超市消费', '2017-11-27', '2017-11-27');
INSERT INTO `Account_Transaction` VALUES ('2', '2', '中国', '汇丰银行', '001000001001', 'CNY', '500.00', '生活费, 付款人：黄小红', '2017-11-28', '2017-11-28');
INSERT INTO `Account_Transaction` VALUES ('3', '3', '中国', '汇丰银行', '001000001001', 'CNY', '-200.00', '用于农贸市场消费', '2017-11-29', '2017-11-29');
INSERT INTO `Account_Transaction` VALUES ('4', '4', '中国', '汇丰银行', '001000001001', 'CNY', '300.00', '生活费，付款人：黄小青', '2017-11-30', '2017-11-30');
INSERT INTO `Account_Transaction` VALUES ('5', '5', '中国', '汇丰银行', '001000001001', 'CNY', '-400.00', '转给预设收款人：陈大文', '2017-12-01', '2017-12-01');
INSERT INTO `Account_Transaction` VALUES ('6', '6', '中国', '汇丰银行', '001000001001', 'CNY', '-500.00', '转给预设收款人：陈小文', '2017-12-02', '2017-12-02');
INSERT INTO `Account_Transaction` VALUES ('7', '7', '中国', '汇丰银行', '001000001001', 'CNY', '-600.00', '转给预设收款人：张三', '2017-12-03', '2017-12-03');
INSERT INTO `Account_Transaction` VALUES ('8', '8', '中国', '汇丰银行', '001000001001', 'CNY', '-700.00', '转给预设收款人：李四', '2017-12-04', '2017-12-04');
INSERT INTO `Account_Transaction` VALUES ('9', '9', '中国', '汇丰银行', '001000001001', 'CNY', '-800.00', '转给预设收款人：王五', '2017-12-05', '2017-12-05');
INSERT INTO `Account_Transaction` VALUES ('10', '10', '中国', '汇丰银行', '001000001001', 'CNY', '900.00', '生活费，付款人：黄小澄', '2017-12-06', '2017-12-06');
INSERT INTO `Account_Transaction` VALUES ('11', '1', '中国', '中国银行', '1111111111111111', 'CNY', '100.00', '用于华润万家超市消费', '2017-11-27', '2017-11-27');
INSERT INTO `Account_Transaction` VALUES ('12', '2', '中国', '中国银行', '2222222222222222', 'CNY', '-500.00', '生活费, 付款人：黄小红', '2017-11-28', '2017-11-28');
INSERT INTO `Account_Transaction` VALUES ('13', '3', '中国', '中国银行', '3333333333333333', 'CNY', '200.00', '用于农贸市场消费', '2017-11-29', '2017-11-29');
INSERT INTO `Account_Transaction` VALUES ('14', '4', '中国', '中国银行', '4444444444444444', 'CNY', '-300.00', '生活费，付款人：黄小青', '2017-11-30', '2017-11-30');
INSERT INTO `Account_Transaction` VALUES ('15', '5', '中国', '汇丰银行', '002000002002', 'CNY', '400.00', '转给预设收款人：陈大文', '2017-12-01', '2017-12-01');
INSERT INTO `Account_Transaction` VALUES ('16', '6', '中国', '汇丰银行', '003000003003', 'CNY', '500.00', '转给预设收款人：陈小文', '2017-12-02', '2017-12-02');
INSERT INTO `Account_Transaction` VALUES ('17', '7', '中国', '恒生银行', '004000004004', 'CNY', '600.00', '转给预设收款人：张三', '2017-12-03', '2017-12-03');
INSERT INTO `Account_Transaction` VALUES ('18', '8', '中国', '恒生银行', '005000005005', 'CNY', '700.00', '转给预设收款人：李四', '2017-12-04', '2017-12-04');
INSERT INTO `Account_Transaction` VALUES ('19', '9', '中国', '汇丰银行', '006000006006', 'CNY', '800.00', '转给预设收款人：王五', '2017-12-05', '2017-12-05');
INSERT INTO `Account_Transaction` VALUES ('20', '10', '中国', '中国银行', '5555555555555555', 'CNY', '-900.00', '生活费，付款人：黄小澄', '2017-12-06', '2017-12-06');

-- ----------------------------
-- Table structure for Preset_Payee
-- ----------------------------
DROP TABLE IF EXISTS `Preset_Payee`;
CREATE TABLE `Preset_Payee` (
  `Country_Code` varchar(2) NOT NULL,
  `Group_Member` varchar(8) NOT NULL,
  `Account_Number` varchar(16) NOT NULL,
  `Account_Name` varchar(30) DEFAULT NULL,
  `Nick_Name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Country_Code`,`Group_Member`,`Account_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of Preset_Payee
-- ----------------------------
INSERT INTO `Preset_Payee` VALUES ('中国', '恒生', '004000004004', '张三', null);
INSERT INTO `Preset_Payee` VALUES ('中国', '恒生', '005000005005', '李四', null);
INSERT INTO `Preset_Payee` VALUES ('中国', '汇丰', '002000002002', '陈大文', null);
INSERT INTO `Preset_Payee` VALUES ('中国', '汇丰', '003000003003', '陈小文', null);
INSERT INTO `Preset_Payee` VALUES ('中国', '汇丰', '006000006006', '王五', null);

-- ----------------------------
-- Table structure for User_Action
-- ----------------------------
DROP TABLE IF EXISTS `User_Action`;
CREATE TABLE `User_Action` (
  `Record_ID` int(20) NOT NULL,
  `Nick_Name` varchar(30) NOT NULL,
  `Action` int(1) NOT NULL,
  `Action_Date_Time` datetime NOT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Record_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of User_Action
-- ----------------------------
