<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- insert.jsp -->
<%
	request.setCharacterEncoding("EUC-KR");
%>
<!-- �Ѿ�� ������ �ֱ� -->
<jsp:useBean id="stdto" class="my.student.StudentDTO" />
<jsp:setProperty property="*" name="stdto" />

<!-- DAO��ü ����� -->
<jsp:useBean id="stdao" class="my.student.StudentDAO" />

<%
	if (stdto.getId() == null || stdto.getId().trim().equals("") || 
		stdto.getName() == null || stdto.getName().trim().equals("") || 
		stdto.getCname() == null || stdto.getCname().trim().equals("")){
		response.sendRedirect("student.jsp");
		return;
	}

	int res = stdao.insertStudent(stdto);
	String msg = null, url = null;
	if (res > 0){
		msg = "�л���� ����!! �л������������ �̵��մϴ�.";
		url = "list.jsp";
	}else { 
		msg = "�л���� ����!! �л������������ �̵��մϴ�.";
		url = "student.jsp";
	}
%>
<script type="text/javascript">
	alert("<%=msg%>")
	location.href="<%=url%>"
</script>














