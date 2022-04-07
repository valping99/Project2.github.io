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
</head>
<body>
	<%
		System.out.println("record/report.jsp");
	%>
	<div class="content" style="
    background-image: linear-gradient(#ccc, #9ab1c3, transparent);">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title" style="font-weight: bold;">
								<s:message code="ratings.report.title" />
							</h4>
						</div>

						<div style="clear: both; width: 98%; margin: 10px auto;">
							<div>
								<a href="admin/record/" type="submit"
									class="btn btn-info btn-fill"><s:message
										code="record.index.title" /></a>
							</div>
						</div>
						<div class="content table-responsive table-full-width">
							<table class="table table-hover table-striped">
								<thead>
									<tr>
										<th>STT</th>
										<th>Mã Nhân Viên</th>
										<th>Tên Nhân Viên</th>
										<th>Tổng Thành Tích</th>
										<th>Tổng Kỷ Luật</th>
										<th>Tiền</th>
										<th>Tổng Kết</th>
									</tr>

								</thead>
								<c:set var="count" value="0" />
								<tbody>
									<c:forEach var="report" items="${arrays}">
										<tr>
											<c:set var="count" value="${count+1 }" />
											<td>${count}</td>
											<td>${report[0]}</td>
											<td><a href="">${report[1]}</a></td>
											<td>${report[2]}</td>
											<td>${report[3]}</td>
											<td><f:formatNumber type="currency" value="${report[4]}"
													pattern="###,###,###" /> VNĐ</td>
											<td>${report[2] - report[3]}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
			message : "Cảm ơn bạn đã trỏ tới <b> => Quản Lý Bản Ghi </b> "

		}, {
			type : 'success',
			timer : 1
		});

	});
</script>
</html>