<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Assignment_Final</title>
</head>
<body>
	<%
		System.out.println("employee/index.jsp");
	%>
	<div class="content" style="
    background-image: linear-gradient(#ccc, #9ab1c3, transparent);">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								<s:message code="employee.index.title" />
							</h4>
						</div>

						<div style="clear: both; width: 98%; margin: 10px auto;">
							<div>
								<a href="admin/employee/add-empl.htm" type="submit"
									class="btn btn-success btn-fill"><s:message
										code="employee.add.title" /></a>
							</div>
						</div>


						<div class="content table-responsive table-full-width">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã</th>
										<th>Tên Nhân Viên</th>
										<th>Giới Tính</th>
										<th>Ngày Sinh</th>
										<th>Email</th>
										<th>Địa Chỉ</th>
										<th>SĐT</th>
										<th>Ảnh</th>
										<!-- <th>Loại NV</th>
										<th>Phòng Ban</th>
										<th>Chức Vụ</th>-->
										<th>Chức Năng</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach items="${listEmployee}" var="employee"
										varStatus="itr">
										<tr>
											<c:set var="count" value="${count+1 }" />
											<td>${count}</td>
											<td>${employee.id }</td>
											<td><a href="admin/employee/detail/${employee.id}.htm"
												class="text-warning">${employee.nameEmployee }</a></td>
											<td><c:choose>
													<c:when test="${employee.gender < 2 }"> Nam </c:when>
													<c:when test="${employee.gender >= 2}"> Nữ </c:when>
												</c:choose></td>
											<td><f:formatDate value="${employee.birthday}"
													pattern="dd/MM/yyyy" /> <%-- <td>${employee.employeeType.nameEmployeeType}</td>
											<td>${employee.department.nameDepartment }</td>
											<td>${employee.position.namePosition }</td> --%>
											<td>${employee.email }</td>
											<td>${employee.address }</td>
											<td>${employee.numberPhone }</td>
											<td><img src="assets/img/${employee.photo }"
												style="width: 75px; height: 90px"></td>
											<td><a
												href="admin/employee/edit-empl/${employee.id}.htm"
												type="button" rel="tooltip" title="Sửa"
												class="btn btn-simple btn-xs"> <i
													class="fa fa-edit"></i>
											</a> <a href="admin/employee/delete-empl/${employee.id}.htm"
												onclick="return confirm('Bạn chắc chắn chứ ?')"
												type="button" rel="tooltip" title="Xóa"
												class="btn btn-simple btn-xs"> <i
													class="fa fa-times"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<div style="margin: 10px; text-align: right;">
								<c:forEach begin="1" end="${rowCount}" varStatus="row">
									<a type="button" href="admin/employee/?page=${row.index}"
										class="btn btn-danger btn-xs btn-fill">${row.index}</a>
								</c:forEach>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>


<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		demo.initChartist();

		$.notify({
			icon : 'pe-7s-gift',
			message : "Cảm ơn bạn đã trỏ tới <b> => Quản Lý Nhân Viên </b> "

		}, {
			type : 'danger',
			timer : 1
		});

	});
</script>

</html>