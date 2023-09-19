package kh.groupware.stream.ptask.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kh.groupware.stream.ptask.model.vo.PtaskVo;

@Repository
public class PtaskDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<PtaskVo> selectList() {
		return sqlSession.selectList("task.selectList");
	}
	
	public List<PtaskVo> pselectList(String pno) {
		return sqlSession.selectList("task.ProjectSelectOne", pno);
	}
	
	public int insertTask(PtaskVo vo) {
		return sqlSession.insert("task.insertTask",vo);
	}
	
	public int deleteTask(String pno) {
		return sqlSession.delete("task.deleteTask", pno);
	}
	
}