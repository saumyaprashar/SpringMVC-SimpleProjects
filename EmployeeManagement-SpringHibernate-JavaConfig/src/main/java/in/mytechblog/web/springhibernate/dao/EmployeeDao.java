package in.mytechblog.web.springhibernate.dao;

import java.util.List;

import in.mytechblog.web.springhibernate.model.Employee;

public interface EmployeeDao {

	Employee findById(int id);

	void saveEmployee(Employee employee);

	void deleteEmployeeBySsn(String ssn);

	List<Employee> findAllEmployees();

	Employee findEmployeeBySsn(String ssn);
}