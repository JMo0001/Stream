package kh.groupware.stream.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.groupware.stream.admin.dao.AdminDao;
import kh.groupware.stream.admin.vo.AdminVo;
import kh.groupware.stream.company.model.vo.CompanyVo;
import kh.groupware.stream.project.model.vo.ProjectVo;
import kh.groupware.stream.ptask.model.vo.PtaskVo;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDao adminDao;
	
	public List<AdminVo> cnt(){
		return adminDao.cnt();
	}
	

}
