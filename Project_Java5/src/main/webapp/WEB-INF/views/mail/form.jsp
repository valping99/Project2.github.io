<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Assignment_Final</title>
</head>
<body>
	<%
		System.out.println("mail/form.jsp");
	%>
	<div class="content" style="
    background-image: linear-gradient(#ccc, #9ab1c3, transparent);">
		<div class="container-fluid">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="header">
								<h4 class="title" style="font-weight: bold;">
									<s:message code="contact.email.title" />
								</h4>
							</div>
							<div style="clear: both; width: 98%; margin: 10px auto;">
								<div class="content">
									<div class="row">
										<div class="col-md-12">
											<form:form action="admin/email/send.htm" method="post"
												modelAttribute="record">
												<div class="form-group">
													<label><s:message code="email.from" /> (<span
														style="color: red;">*</span>) </label> <input name="from"
														placeholder="Người gửi" class="form-control">
												</div>
												<div class="form-group">
													<label><s:message code="email.to" /> (<span
														style="color: red;">*</span>)</label> <input name="to"
														placeholder="Người nhận" class="form-control">
												</div>
												<div class="form-group">
													<label><s:message code="email.subject" /> (<span
														style="color: red;">*</span>)</label> <input name="subject"
														placeholder="Chủ đề" class="form-control">
												</div>
												<div class="form-group">
													<label><s:message code="email.body" /> (<span
														style="color: red;">*</span>)</label>
													<textarea name="body" placeholder="Nội dung tin nhắn"
														class="form-control" rows="3" cols="30"></textarea>
												</div>

												<button class="btn btn-danger btn-fill">
													<s:message code="contact.button" />
												</button>
												<span> ${ message } </span>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
			
		</div>
	</div>
</body>
</html>