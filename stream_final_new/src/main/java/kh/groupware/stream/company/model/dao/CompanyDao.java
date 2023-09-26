package kh.groupware.stream.company.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.groupware.stream.company.model.vo.CompanyVo;


@Repository("companyDao")
public class CompanyDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 로그인시 부서조회
	public String selectOne(CompanyVo cvo) {
		return sqlSession.selectOne("company.selectOne", cvo);
	}
	


}
