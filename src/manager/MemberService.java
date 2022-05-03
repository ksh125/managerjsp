package manager;

import java.util.List;

public class MemberService {
	private static MemberService instance;
	private MemberDao memberDao;
	
	private MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public static MemberService getInstance() {
		synchronized(MemberService.class) {
			if(instance == null) {
				instance = new MemberService(MemberDao.getInstance());
			}
		}
		return instance;
	}
	
	// 등록하기
	public boolean regist(MemberVo vo) {
		int ret = memberDao.insertMember(vo);
		if(ret == 1) {
			return true;
		} 
		return false;
	}
	
	// 조회
	public MemberVo read(int num) {
		return memberDao.selectMember(num);
	}
	
	// 전체조회
	public List<MemberVo> listAll() {
		return memberDao.selectMemberAll();
	}
	
	// 수정
	public boolean edit(MemberVo vo, String memberPwOld) {
		int result = -1;
		MemberVo searchMember = memberDao.selectMember(vo.getNum());
		if(searchMember.getMemberPw().equals(memberPwOld)) {
			result = memberDao.updateMember(vo);
		}
		return (result == 1) ? true : false;
	}
	
	//탈퇴
	public boolean remove(int num) {
		int ret = memberDao.deleteMember(num);
		return (ret == 1) ? true : false;
		
	}
}