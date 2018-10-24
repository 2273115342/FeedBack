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
	<form name="frmAction" id="frmAction" method="post" action="courseAction_save">
		<div id="main_frame">
			<div id="main_column">
				<div>
					<div class="mainbox-title-container">
						<div class="mainbox-title">增加课程</div>
					</div>
					<div class="mainbox-body">
						<table cellpadding="0" cellspacing="0" border="0"
							class="table-fixed">
							<tr>
								<td>

									<div class="statistics-box-order">
										<div class="statistics-body-order">
											<table width="100%" border="0px;" cellpadding="0px;"
												cellspacing="2px;">
												<tr>
													<td height="25px" align="right">课程名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="course.CourseName"
														type="CourseName" id="course.CourseName"
														value="${requestScope.course.CourseName}" /> <span class="info1">&nbsp;*&nbsp;${message2}</span></td>
												</tr>
												<tr>
													<td height="25px" align="right">课程类别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td><select name="course.courseType" id="course.courseType">
															<option value="1" <c:if test="${requestScope.course.courseType=='1'}"> selected="selected"</c:if>>纯理论</option>
															<option value="2" <c:if test="${requestScope.course.courseType=='2'}"> selected="selected"</c:if>>理论加上机</option>
															<option value="3" <c:if test="${requestScope.course.courseType=='3'}"> selected="selected"</c:if>>纯上机</option>
													</select></td>
												</tr>
												<tr>
													<td colspan="3">
														<p align="center" /> <br /> <input type="submit"
														value=" 保 存 " /> <input type="button" value=" 返 回 "
														onclick='javascript: history.go(-1)' />
													</td>
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
