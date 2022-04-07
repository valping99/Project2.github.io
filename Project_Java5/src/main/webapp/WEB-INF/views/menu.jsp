<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="sidebar" data-color="blued" data-image="assets/img/bg.jpg">
	<div class="sidebar-wrapper" style="
    background-color: #363742;">

		<ul class="nav">
			<li><a href="home"> 
					<p>
						<s:message code="global.menu.home" />
					</p>
			</a></li>
			<li><a href="admin/account/">
					<p>
						<s:message code="global.menu.qltk" />
					</p>
			</a></li>
			<li><a href="admin/employee/"> 
					<p>
						<s:message code="global.menu.qlnv" />
					</p>
			</a></li>
			<li><a href="admin/info/department">
					<p>
						<s:message code="global.menu.ttpb" />
					</p>
			</a></li>
			<li><a href="admin/record/report"> 
					<p>
						<s:message code="global.menu.xh" />
					</p>
			</a></li>
			<li><a href="admin/email/"> 
					<p>
						<s:message code="global.menu.lh" />
					</p>
			</a></li>
		</ul>
	</div>
</div>
