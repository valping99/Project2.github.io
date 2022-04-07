<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath }/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Assignment_Final</title>
<style type="text/css">
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<%
		System.out.println("record/edit-record.jsp");
	%>
	<div class="content" style="
    background-image: linear-gradient(#ccc, #9ab1c3, transparent);">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								<s:message code="record.edit.title" />
							</h4>
						</div>
						<div class="content">
							<form:form action="admin/record/edit-record/${record.id}.htm"
								method="POST" commandName="record">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label>Tên Nhân Viên: </label>
											<form:hidden path="employee.id" readonly="true"
												class="form-control" />
											<form:input path="employee.nameEmployee" readonly="true"
												class="form-control" />
											<form:hidden path="dateWrite" readonly="true"
												class="form-control" />
										</div>
									</div>

									<div class="col-md-12">
										<div class="form-group">
											<label>Loại Đánh Giá: (<span style="color: red;">*</span>)
											</label>
											<form:select path="type" class="form-control">
												<form:option value="true">Thành Tích</form:option>
												<form:option value="false">Kỷ Luật</form:option>
											</form:select>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Lý Do: (<span style="color: red;">*</span>)<form:errors
													path="reason" /></label>
											<form:textarea path="reason" placeholder="Nhập lý do..."
												rows="1" class="form-control" />
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<label>Số Tiền: (<span style="color: red;">*</span>)<form:errors
													path="price" /></label>

											<form:input path="price" type="number" class="form-control" />
										</div>
									</div>

								</div>

								<div class="clearfix"></div>
								<button type="submit" class="btn btn-info btn-fill pull-right">
									<s:message code="record.edit.process" />
								</button>
								<div class="clearfix"></div>

							</form:form>
						</div>
					</div>
				</div>

			</div>
		</div>

		
	</div>


</body>
</html>