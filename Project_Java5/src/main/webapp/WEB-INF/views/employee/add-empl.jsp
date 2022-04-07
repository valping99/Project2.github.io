<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Assignment_Final</title>
</head>
<body>
	<%
		System.out.println("employee/add-employee.jsp");
	%>
	<div class="content" style="
    background-image: linear-gradient(#ccc, #9ab1c3, transparent);">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								<s:message code="employee.add.title" />
							</h4>
						</div>
						<div class="content">
							<form:form action="admin/employee/save-empl.htm" method="POST"
								commandName="employee">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Mã Nhân Viên: (<span style="color: red;">*</span>)<form:errors
													path="id" class="error" /></label>
											<form:input path="id" placeholder="Mã nhân viên..."
												class="form-control" value="" />
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label>Tên Nhân Viên: (<span style="color: red;">*</span>)<form:errors
													path="nameEmployee" class="error" /></label>
											<form:input path="nameEmployee"
												placeholder="Tên nhân viên..." size="30" maxlength="30"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label for="exampleInputEmail1">Thư Điện Tử: (<span
												style="color: red;">*</span>)<form:errors path="email"
													class="error" /></label>
											<form:input path="email" placeholder="Email..." size="30"
												maxlength="30" class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Địa Chỉ: (<span style="color: red;">*</span>)<form:errors
													path="address" class="error" /></label>
											<form:input path="address" placeholder="Địa chỉ..."
												class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Số Điện Thoại: (<span style="color: red;">*</span>)<form:errors
													path="numberPhone" class="error" /></label>
											<form:input path="numberPhone" placeholder="Số Điện Thoại..."
												size="12" maxlength="12" class="form-control" value="" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Ngày Sinh: (<span style="color: red;">*</span>)<form:errors
													path="birthday" class="error" /></label>
											<form:input path="birthday" placeholder="dd/MM/yyyy..."
												class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Giới Tính: (<span style="color: red;">*</span>)<form:errors
													path="gender" class="error" /></label>
											<form:select path="gender" class="form-control">
												<option selected="selected" value=0><s:message
														code="global.select" /></option>
												<form:option value="1">Nam</form:option>
												<form:option value="2">Nữ</form:option>
											</form:select>
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label>Hình Ảnh: (<span style="color: red;">*</span>)<form:errors
													path="photo" class="error" /></label>
											<form:input path="photo" type="file" class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Loại Nhân Viên</label>
											<form:select path="employeeType.id" items="${employeeType}"
												itemValue="id" itemLabel="nameEmployeeType"
												class="form-control">
												<option selected="selected" value=0>Chọn</option>
												<form:option value=""></form:option>
											</form:select>
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label>Phòng Ban</label>
											<form:select path="department.id" items="${department}"
												itemValue="id" itemLabel="nameDepartment"
												class="form-control" />

										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label>Chức Vụ</label>
											<form:select path="position.id" items="${position}"
												itemValue="id" itemLabel="namePosition" class="form-control" />
										</div>
									</div>


								</div>

								<div class="clearfix"></div>
								<div>
									<button type="submit"
										class="btn btn-success btn-fill">
										<s:message code="employee.add.process" />
									</button>
									<div class="clearfix"></div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>