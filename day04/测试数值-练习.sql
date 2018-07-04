CREATE TABLE IF NOT EXISTS cms_cate(
	id TINYINT,
	cateName VARC时HAR(50),
	cateDesc VARCHAR(50)
)ENGINE=MyISAM CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS cms_news(
	id INT,
	title VARCHAR(50),
	content TEXT,
	pubTime INT,
	clickNum INT,
	isTop TINYINT(1) COMMENT '0代表不置顶，1代表置顶'
)
//再粘切到控制台


查看表
SHOW TABLES;

//查看表结构
DES cms_news;?不能用了
DESCRIBE cms_news;
SHOW COLUMNS FROM cms_news;

测试整型
CREATE TABLE test1 (
	num1 TINYINT,
	num2 SMALLINT,
	num3 MEDIUMINT,
	num4 INT,
	num5 BIGINT
);

---向表中插入数据 INSERT tbl_name VALUE|VALUES(值,...);
INSERT test1 VALUES(-128,-32768,-8388608,-2147483648,-9223372036854775808)


---查询表中所有记录 SELECT * FROM tbl_name;
SELECT * FROM test1;


---测试无符号UNSIGNED
CREATE TABLE test2(
	num1 TINYINT UNSIGNED,
	num2 TINYINT
);

----零填充ZEROFILL(不够的话，前面以零填充)

CREATE TABLE test3(
	num1 TINYINT ZEROFILL,
	num2 TINYINT
);

---测试浮点类型
CREATE TABLE test4(
	num1 FLOAT(6,2), //2表示保留两位--四舍五入
	num2 DOUBLE(6,2),
	num3 DECIMAL(6,2) //和double一样以字符串的形式保存的，查询时，以字符串形式查询时，转为数值时可能是一堆小数点，
	如果以数值的形式查询，则不存在这种情况。DECIMAL对精度要求高的地方使用，
);

对于精度要求高的时候，使用定点数存，因为定点数内部是以字符串形式存储的




