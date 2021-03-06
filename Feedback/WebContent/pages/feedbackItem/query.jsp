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
	<form name="frmAction" id="frmAction" method="post" action="feedbackItemAction_queryByCond">
		<div id="main_frame">
			<div id="main_column">
				<div>
					<div class="mainbox-title-container">
						<div class="mainbox-title">查询反馈指标</div>
					</div>
					<div class="mainbox-body">
					<input name="feedbackItem.fiId" type="hidden" id="feedbackItem.fiId" value="${requestScope.feedbackItem.fiId}" />
						<table width="100%">
							<tr>
								<td width="100%">查询条件：&nbsp;&nbsp;
								<select name="condName" id="condName">
								<option value="fiId" <c:if test="${condName=='fiId'}"> selected="selected"</c:if>>反馈指标项编号</option>
								<option value="fiName" <c:if test="${condName=='fiName'}"> selected="selected"</c:if>>反馈指标项名称</option></select>
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
													<td height="25px" align="right">反馈指标项类型编号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="feedbackItem.feedbackItemType.fitId"
														type="text" id="feedbackItem.feedbackItemType.fitId"
														value="${requestScope.feedbackItem.feedbackItemType.fitId}" /> <span class="info1">${message2}</span></td>
												</tr>
												<tr>
													<td height="25px" align="right">反馈指标项名称&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="feedbackItem.fiName"
														type="text" id="feedbackItem.fiName"
														value="${requestScope.feedbackItem.fiName}" /><span class="info1">${message3}</span></td>
												</tr>
												<tr>
													<td height="25px" align="right">指标项分值&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="feedbackItem.itemValue"
														type="text" id="feedbackItem.itemValue"
														value="${requestScope.feedbackItem.itemValue}" /><span class="info1">${message4}</span></td>
												</tr>
												<tr>
													<td height="25px" align="right" >显示顺序&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td colspan="2"><input name="feedbackItem.dispOrder"
														type="text" id="feedbackItem.dispOrder"
														value="${requestScope.feedbackItem.dispOrder}" /></td>
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
