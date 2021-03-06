<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ include file="../util/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="resource/css/new_style.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<form name="frmAction" id="frmAction" method="post" action="courseAction_queryByCond">
		<div id="main_frame">
			<div id="main_column">
				<div>
					<div class="mainbox-title-container">
						<div class="mainbox-title">查询课程</div>
					</div>
					<div class="mainbox-body">
					<input name="course.courseId" type="hidden" id="course.courseId" value="${requestScope.course.courseId}" />
						<table width="100%">
							<tr>
								<td width="100%">查询条件：&nbsp;&nbsp;
								<select name="condName" id="condName">
								<option value="courseId" <c:if test="${condName=='courseId'}"> selected="selected"</c:if>>课程编号</option>
								<option value="courseName" <c:if test="${condName=='courseName'}"> selected="selected"</c:if>>课程名</option></select>
								 &nbsp;&nbsp;<input name="condValue"
												type="text" id="condValue"
												value="${condValue}" />&nbsp;&nbsp;<input type="submit"
														value=" 查询 " />&nbsp;&nbsp;<span class="info1">&nbsp;*&nbsp;${message}</span></td>
							</tr>
						</table>
						<table cellpadding="0" cellspacing="0" border="0"
							class="table-fixed">
							<tr>
								<td>
									<div class="statistics-box-order">
										<div class="statistics-body-order">
											<table width="100%" border="0px;" cellpadding="0px;"
												cellspacing="2px;">
												<tr>
													<td height="25px" align="right" >课程名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="course.courseName"
														type="text" id="course.courseName"
														value="${requestScope.course.courseName}" disabled="true" /> </td>
												</tr>				
												<tr>
													<td height="25px" align="right">用户类别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td><select name="course.courseName" id="course.courseName"  disabled="true">
															<option value="1" <c:if test="${requestScope.course.courseName=='1'}"> selected="selected"</c:if>>纯理论课</option>
															<option value="2" <c:if test="${requestScope.course.courseName=='2'}"> selected="selected"</c:if>>理论加上机</option>
															<option value="2" <c:if test="${requestScope.course.courseName=='3'}"> selected="selected"</c:if>>纯上机</option>
													</select></td>
												</tr>
											 </table>
										</div>
									</div>
								</td>
							</tr>
						</table>

					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
