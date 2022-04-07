package quocdat.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import quocdat.dao.InfoDAO;
import quocdat.model.Department;
import quocdat.model.EmployeeType;
import quocdat.model.Position;
import quocdat.service.InfoService;

@Service
public class InfoServiceImpl implements InfoService {

	@Autowired
	InfoDAO infoDAO;

	@Override
	public List<Department> getListDepartment() {
		return infoDAO.getListDepartment();
	}

	@Override
	public List<Position> getListPosition() {
		return infoDAO.getListPosition();
	}

	@Override
	public List<EmployeeType> getListEmployeeType() {
		return infoDAO.getListEmployeeType();
	}


}
