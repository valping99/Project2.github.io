package quocdat.service;

import java.util.List;

import quocdat.model.Department;
import quocdat.model.EmployeeType;
import quocdat.model.Position;

public interface InfoService {

	/**
	 * Lấy danh sách phòng ban
	 * 
	 * @return
	 */
	public List<Department> getListDepartment();

	/**
	 * Lấy danh sách chức vụ
	 * 
	 * @return
	 */
	public List<Position> getListPosition();

	/**
	 * Lấy danh sách loại nhân viên
	 * 
	 * @return
	 */
	public List<EmployeeType> getListEmployeeType();

}
