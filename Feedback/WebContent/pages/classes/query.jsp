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
	<form name="frmAction" id="frmAction" method="post" action="userAction_queryByCond">
		<div id="main_frame">
			<div id="main_column">
				<div>
					<div class="mainbox-title-container">
						<div class="mainbox-title">查询班级</div>
					</div>
					<div class="mainbox-body">
					<input name="classes.classesId" type="hidden" id="classes.classesId" value="${requestScope.classes.classesId}" />
						<table width="100%">
							<tr>
								<td width="100%">查询条件：&nbsp;&nbsp;
								<select name="condName" id="condName">
								<option value="classId" <c:if test="${condName=='classId'}"> selected="selected"</c:if>>班级编号</option>
								<option value="className" <c:if test="${condName=='className'}"> selected="selected"</c:if>>班级名称</option></select>
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
													<td height="25px" align="right">班级编号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="classes.classId"
														type="text" id="classes.classId"
														value="${requestScope.classes.classId}"  disabled="true" /></td>
												</tr>
												
												<tr>
													<td height="25px" align="right">班级名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="classes.className"
														type="text" id="classes.className"
														value="${requestScope.classes.className}"  disabled="true" /></td>
												</tr>
												<tr>
													<td height="25px" align="right">成立日期&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="classes.createDate"
														type="text" id="classes.createDate"
														value="${requestScope.classes.createDate}"  disabled="true" /></td>
												</tr>
												<tr>
													<td height="25px" align="right">班级状态&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td><select name="classes.classStatus" id="classes.classStatus"  disabled="true">
															<option value="0" ${requestScope.classes.classStatus==0?'selected':'' }"> selected="selected"注销</option>
															<option value="1" ${requestScope.classes.classStatus==0?'selected':'' }"> selected="selected"正常</option>
															<option value="2" ${requestScope.classes.classStatus==0?'selected':'' }'}"> selected="selected"已毕业</option>
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
