package login_proj.service;

import java.sql.Connection;

import login_proj.dao.impl.MemberDaoImpl;
import login_proj.ds.JndiDS;
import login_proj.dto.Member;

public class LoginService {
	private MemberDaoImpl dao = MemberDaoImpl.getInstance();
	private Connection con = JndiDS.getConnection();
	
	public LoginService() {
		dao.setCon(con);
	}
	
	public Member getLoginMember(String id, String passwd) {
	Member member = new Member(id, passwd);
	Member loginMember = dao.selectLoginMember(member);
	return loginMember;

}
}