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
	<form name="frmAction" id="frmAction" method="post" action="judgeAction_update">
		<div id="main_frame">
			<div id="main_column">
				<div>
					<div class="mainbox-title-container">
						<div class="mainbox-title">修改课程</div>
					</div>
					<div class="mainbox-body">
					<input name="judge.JudgeId" type="hidden" id="judge.JudgeId" value="${requestScope.judge.JudgeId}" />
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
													<td colspan="2"><input name="judge.request"
														type="text" id="judge.request"
														value="${requestScope.judge.request}" /> <span class="info1">&nbsp;*&nbsp;${message1}</span></td>
												</tr>
												<tr>
													<td height="25px" align="right">用户类别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td><select name="judge.judgeType" id="judge.judgeType">
															<option value="1" <c:if test="${requestScope.judge.judgeType=='1'}"> selected="selected"</c:if>>纯理论</option>
															<option value="2" <c:if test="${requestScope.judge.judgeType=='2'}"> selected="selected"</c:if>>上机加理论</option>
															<option value="2" <c:if test="${requestScope.judge.judgeType=='3'}"> selected="selected"</c:if>>纯上机</option>
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
