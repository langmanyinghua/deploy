
-- ----------------------------
-- 初始化客户经理
-- ----------------------------
INSERT INTO `t_account`(id,username,password,salt,is_use,rid) 
VALUES ('1','admin','71aba206ad41e59203f40d87ba092c82', '171031FBPYMH4095','1', '1');
INSERT INTO `t_account`(id,username,password,salt,is_use,rid) 
VALUES ('2','chance','a2dacb3839b876b65112bd590a9cd819', '171102CKM5KCZNTD','1', '2');

-- ----------------------------
-- 初始化标签
-- ----------------------------
INSERT INTO `t_lable`(id,level,name,remark,type,parentid) VALUES ('1',  '1', '啤酒', '系统标签', 'SERVER', 0);
INSERT INTO `t_lable`(id,level,name,remark,type,parentid) VALUES ('2',  '1', '生日', '系统标签', 'SERVER', 0);
INSERT INTO `t_lable`(id,level,name,remark,type,parentid) VALUES ('3',  '1', '次卡', '系统标签', 'SERVER', 0);
INSERT INTO `t_lable`(id,level,name,remark,type,parentid) VALUES ('4',  '1', '储值卡', '系统标签', 'SERVER', 0);
INSERT INTO `t_lable`(id,level,name,remark,type,parentid) VALUES ('5',  '1', '洋酒', '系统标签', 'SERVER', 0);


-- ----------------------------
-- 初始化问候语
-- ----------------------------
INSERT INTO `t_greetings`(id,content,sort) VALUES ('1', '您好', '1');
INSERT INTO `t_greetings`(id,content,sort) VALUES ('2', '请问有什么可以帮您？', '1');
INSERT INTO `t_greetings`(id,content,sort) VALUES ('3', '好的，稍等一下', '1');
INSERT INTO `t_greetings`(id,content,sort) VALUES ('4', '马上过来', '1');
INSERT INTO `t_greetings`(id,content,sort) VALUES ('5', '不客气', '1');
INSERT INTO `t_greetings`(id,content,sort) VALUES ('6', '很高兴为您服务', '1');


-- ----------------------------
-- 初始化权限
-- ----------------------------
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('1', '1', '今日数据', '52', 'index', '1', '0', '', 'fa fa-server', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('2', '1', '管理员管理', '2', 'adminManager', '1', '0', '', 'fa fa-wrench', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('9', '2', '用户管理', '71', 'adminList', '1', '2', '2', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('12', '2', '角色管理', '6', 'role', '1', '2', '2', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('13', '3', '添加', '7', 'create', '1', '12', '2,12', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('14', '1', '标签管理', '8', 'lableManager', '1', '0', '', 'fa fa-tag', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('15', '2', '标签统计', '10', 'lableStatistics', '1', '14', '14', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('16', '2', '基本信息', '9', 'basicLable', '1', '14', '14', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('17', '3', '添加', '11', 'create', '1', '16', '14,16', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('18', '3', '删除', '12', 'delete', '1', '16', '14,16', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('19', '3', '修改', '13', 'edit', '1', '16', '14,16', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('20', '3', '搜索', '14', 'search', '1', '16', '14,16', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('22', '3', '添加', '16', 'create', '1', '9', '2,9', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('23', '3', '修改', '17', 'edit', '1', '9', '2,9', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('24', '3', '搜索', '18', 'search', '1', '9', '2,9', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('25', '3', '删除', '19', 'delete', '1', '9', '2,9', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('27', '3', '修改', '21', 'edit', '1', '12', '2,12', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('29', '3', '搜索', '23', 'serach', '1', '12', '2,12', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('30', '3', '重置密码', '24', 'reset', '1', '9', '2,9', 'MENU', 'reset');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('31', '1', 'robot管理', '25', 'robotList', '1', '0', '', 'fa fa-android', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('32', '3', '添加', '26', 'create', '1', '31', '31', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('33', '3', '搜索', '27', 'search', '1', '31', '31', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('34', '3', '修改', '28', 'edit', '1', '31', '31', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('35', '3', '解绑', '29', 'unBundling', '1', '31', '31', 'MENU', 'unBundling');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('37', '3', '详情', '30', 'details', '1', '31', '31', 'MENU', 'details');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('38', '1', '店员管理', '34', 'customerManager', '1', '0', '', 'fa fa-group', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('39', '2', '店员数据', '36', 'customerList', '1', '38', '38', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('40', '2', '客户运维', '32', 'customerOperationList', '0', '38', '38', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('41', '1', '素材库管理', '46', 'cloudMaterialManager', '1', '0', '', 'fa fa-picture-o', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('42', '2', '云素材库', '39', 'cloudMaterialBasic', '1', '41', '41', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('43', '2', '回收站', '38', 'cloudMaterialRecovery', '1', '41', '41', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('44', '3', '添加', '40', 'create', '1', '42', '41,42', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('45', '3', '修改', '41', 'edit', '1', '42', '41,42', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('46', '3', '下架', '42', 'delete', '1', '42', '41,42', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('47', '3', '搜索', '43', 'search', '1', '42', '41,42', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('48', '3', '搜索', '44', 'search', '1', '43', '41,43', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('49', '3', '还原', '45', 'delete', '1', '43', '41,43', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('50', '1', '店铺管理', '50', 'shopManager', '1', '0', '', 'fa fa-sitemap', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('51', '2', '分店数据', '48', 'branchShop', '1', '50', '50', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('52', '2', '分店详情', '49', 'shopDetailis', '1', '50', '50', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('53', '2', '基本信息', '47', 'basicShop', '1', '50', '50', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('55', '1', '客户数据', '37', 'friendManager', '1', '0', '', 'fa fa-user', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('56', '2', '好友列表', '70', 'friendList', '1', '55', '55', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('57', '1', '指标管理', '1', 'targetManager', '1', '0', '', 'fa fa-slack', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('58', '2', '基本信息', '53', 'targetList', '1', '57', '57', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('59', '3', '搜索', '54', 'search', '1', '53', '50,53', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('60', '3', '添加', '55', 'create', '1', '53', '50,53', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('61', '3', '修改', '56', 'edit', '1', '53', '50,53', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('62', '3', '删除', '57', 'delete', '1', '53', '50,53', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('63', '3', '搜索', '58', 'search', '1', '39', '38,39', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('64', '3', '添加', '59', 'create', '1', '39', '38,39', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('65', '3', '修改', '60', 'edit', '1', '39', '38,39', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('66', '3', '重置密码', '61', 'reset', '1', '39', '38,39', 'MENU', 'reset');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('67', '2', '搜索', '62', 'search', '1', '40', '38,40', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('68', '3', '搜索', '63', 'search', '1', '56', '55,56', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('69', '3', '修改', '64', 'edit', '1', '56', '55,56', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('70', '3', '聊天记录', '65', 'details', '1', '56', '55,56', 'MENU', 'details');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('71', '3', '朋友圈', '66', 'circle', '1', '56', '55,56', 'MENU', 'circle');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('72', '3', '添加', '67', 'create', '1', '58', '57,58', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('73', '3', '修改', '68', 'edit', '1', '58', '57,58', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('74', '3', '删除', '69', 'delete', '1', '58', '57,58', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('75', '3', '重复添加好友', '51', 'friendRepeat', '1', '55', '55', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('76', '2', '自动更新', '3', 'autoUpdate', '1', '2', '2', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('77', '3', '添加', '72', 'create', '1', '76', '2,76', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('78', '3', '删除', '73', 'delete', '1', '76', '2,76', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('79', '3', '搜索', '74', 'search', '1', '76', '2,76', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('80', '3', '编辑', '75', 'edit', '1', '76', '2,76', 'MENU', 'edit');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('81', '3', '查看好友', '76', 'lookFriend', '1', '39', '38,39', 'MENU', 'lookFriend');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('82', '3', '停用', '77', 'stop', '1', '39', '38,39', 'MENU', 'stop');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('83', '3', '朋友圈', '78', 'circle', '1', '39', '38,39', 'MENU', 'circle');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('84', '2', '问候语', '3', 'greetings', '1', '2', '2', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('85', '3', '搜索', '80', 'search', '1', '84', '2,84', 'MENU', 'search');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('86', '3', '添加', '81', 'create', '1', '84', '2,84', 'MENU', 'create');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('87', '3', '删除', '82', 'delete', '1', '84', '2,84', 'MENU', 'delete');
INSERT INTO `t_sys_permission`(id,level,name,sort,url,is_available,parentid,parentids,resourcetype,permission) VALUES ('88', '3', '修改', '83', 'edit', '1', '84', '2,84', 'MENU', 'edit');

-- ----------------------------
-- 初始化角色
-- ----------------------------
INSERT INTO `t_sys_role`(id,role,is_available,roleids,type) VALUES ('1','管理员', '1', '1,2,9,12,13,14,15,16,17,18,19,20,22,23,24,25,27,29,30,31,32,33,34,35,37,38,39,41,42,43,44,45,46,47,48,49,50,51,52,53,55,56,57,58,59,60,61,62,63,64,65,66,68,69,70,71,72,73,74,75,76,77,78,79,80,', '0');
INSERT INTO `t_sys_role`(id,role,is_available,roleids,type) VALUES ('2','店长', '1', '1,14,15,16,17,18,19,20,31,32,33,34,35,37,38,39,41,42,43,44,45,46,47,48,49,50,51,52,53,55,56,57,58,59,60,61,62,63,64,65,66,68,69,70,71,72,73,74,75,81,82,83,', '1');

-- ----------------------------
-- 初始化权限关系
-- ----------------------------
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('45', '1', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('46', '2', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('47', '9', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('48', '10', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('49', '11', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('50', '12', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('51', '13', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('52', '14', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('53', '15', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('54', '16', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('55', '17', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('56', '18', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('57', '19', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('58', '20', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('59', '22', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('60', '23', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('61', '24', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('62', '25', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('63', '26', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('64', '27', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('65', '29', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('66', '30', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('86', '31', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('87', '32', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('88', '33', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('89', '34', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('90', '35', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('92', '37', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('93', '38', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('94', '39', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('95', '40', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('96', '41', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('97', '42', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('98', '43', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('99', '44', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('100', '45', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('101', '46', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('102', '47', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('103', '48', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('104', '49', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('105', '50', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('106', '51', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('107', '52', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('108', '53', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('109', '55', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('110', '56', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('111', '57', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('112', '58', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('113', '59', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('114', '60', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('115', '61', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('116', '62', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('117', '63', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('118', '64', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('119', '65', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('120', '66', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('121', '67', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('122', '68', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('123', '69', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('124', '70', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('125', '71', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('126', '72', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('127', '73', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('128', '74', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('131', '75', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('132', '76', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('133', '77', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('134', '78', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('135', '79', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('136', '80', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('227', '81', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('278', '82', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('279', '83', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('332', '84', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('333', '85', '5');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('334', '86', '5');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('335', '87', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('392', '88', '1');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('336', '1', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('337', '14', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('338', '15', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('339', '16', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('340', '17', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('341', '18', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('342', '19', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('343', '20', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('344', '31', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('345', '32', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('346', '33', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('347', '34', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('348', '35', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('349', '37', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('350', '38', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('351', '39', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('352', '41', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('353', '42', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('354', '43', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('355', '44', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('356', '45', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('357', '46', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('358', '47', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('359', '48', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('360', '49', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('361', '50', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('362', '51', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('363', '52', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('364', '53', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('365', '55', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('366', '56', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('367', '57', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('368', '58', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('369', '59', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('370', '60', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('371', '61', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('372', '62', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('373', '63', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('374', '64', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('375', '65', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('376', '66', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('377', '68', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('378', '69', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('379', '70', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('380', '71', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('381', '72', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('382', '73', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('383', '74', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('384', '75', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('385', '81', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('386', '82', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('387', '83', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('388', '84', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('389', '85', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('390', '86', '2');
INSERT INTO `t_sys_role_permission`(id,pid,rid) VALUES ('391', '87', '2');


-- ----------------------------
-- 初始化环信token
-- ----------------------------
INSERT INTO `t_easemob_token`(id,access_token,application,expires_in) VALUES (1, 'YWMtdAk8msKvEee1vPtQl6SIkwAAAAAAAAAAAAAAAAAAAAEcMg3Ao2sR54r82Yyu_K8IAgMAAAFfj7PT9wBPGgA_hewcjxfpO0_ajJQZ1sl3bjbCWDWJa-qv6Ru-XMX2Xw', '1c320dc0-a36b-11e7-8afc-d98caefcaf08', 1515128447548);


-- ----------------------------
-- 设置唯一索引
-- ----------------------------
#ALTER TABLE t_friend ADD UNIQUE(robotid,wxid);

#ALTER TABLE t_lable_group ADD UNIQUE(accountid,name);

#ALTER TABLE t_news ADD UNIQUE(accountid,objectid,type);
#
#ALTER TABLE `t_lable_friend` ADD INDEX index_name ( `friendid` ) 
#