-- 내 스키마
DROP SCHEMA IF EXISTS login_proj;

-- 내 스키마
CREATE SCHEMA login_proj;

-- 사용자
drop table if exists login_proj.users;

CREATE TABLE login_proj.users (
	uid	    INT	NOT NULL AUTO_INCREMENT,
	id   	VARCHAR(12) NOT NULL UNIQUE COMMENT '아이디', -- 아이디
	passwd  CHAR(41)    NOT NULL COMMENT '비밀번호', -- 비밀번호
	email   VARCHAR(60) COMMENT '이메일', -- 이메일
	PRIMARY KEY (UID)
)
COMMENT '사용자';

-- 계정 권한 부여
grant all 
   on login_proj.* 
   to 'user_login_proj'@'localhost' identified by 'rootroot';

