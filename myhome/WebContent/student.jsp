<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- student.jsp -->
<html>
<head>
	<title>�л�����</title>
</head>
<body>
	<div align="center">
		<hr color="green" width="300">
		<h2>�� �� �� �� �� �� ��</h2>
		<hr color="green" width="300">
		<form name="f" action="insert.jsp" method="post">
			<table border="1">
				<tr><td>
					���̵� : <input type="text" name="id"><br>
					�л��� : <input type="text" name="name"><br>
					�б޸� : <input type="text" name="cname"><br>
					<input type="submit" value="�Է�">
					<input type="reset" value="�ٽ��Է�">
				</td></tr>
			</table>
		</form>
	</div>
</body>
</html>


