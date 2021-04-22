package login_proj.dao;

import login_proj.dto.Member;

public interface MemberDao {
	Member selectLoginMember(Member member);
}
