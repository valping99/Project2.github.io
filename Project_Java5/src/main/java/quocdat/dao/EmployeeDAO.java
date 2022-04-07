package quocdat.dao;

import java.util.List;

import quocdat.model.Employee;

public interface EmployeeDAO {

	/**
	 * Thêm nhân viên
	 * 
	 * @param employee
	 */
	public void insertEmployee(Employee employee);

	/**
	 * Sửa nhân viên
	 * 
	 * @param employee
	 */
	public void editEmployee(Employee employee);

	/**
	 * Xóa nhân viên
	 * 
	 * @param employee
	 */
	public void deleteEmployee(Employee employee);

	/**
	 * Load id nhân viên
	 * 
	 * @param id
	 * @return
	 */
	public Employee getIDEmployee(String id);

	/**
	 * Kiểm tra địa chỉ id
	 * 
	 * @param id
	 * @return
	 */
	public int checkIDEmmployee(String id);

	/**
	 * Lấy tất cả danh sách nhân viên
	 * 
	 * @return
	 */
	public List<Employee> getAllEmployee();

	/**
	 * Lấy nhân viên từ phòng ban
	 * 
	 * @param idDepart
	 * @return
	 */
	public List<Employee> getEmplByDepart(String idDepart);

	/**
	 * Tìm kiếm theo nhân viên
	 * 
	 * @param search
	 * @return
	 */
	public List<Employee> searchByEmpl(String search);

	/**
	 * Tìm kiếm theo cả 2
	 * 
	 * @param search
	 * @param idDepart
	 * @return
	 */
	public List<Employee> searchByBoth(String search, String idDepart);

	/**
	 * Phân trang nhân viên
	 * 
	 * @param page
	 * @return
	 */
	public List<Employee> loadEmplPage(String page);
	
	public int getRowEmpl();

}
