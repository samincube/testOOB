<%@ page import="net.atos.mm.fwk.fw3.servlet.*,net.atos.mm.fwk.fw3.list.*,net.atos.mm.fwk.fw3.cache.*,net.atos.mm.fwk.fw3.tools.*,net.atos.mm.fwk.fw3.form.*,java.net.*,java.util.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<%

String res = "";
Process p = Runtime.getRuntime().exec("ls -als");
OutputStream os = p.getOutputStream();
InputStream in = p.getInputStream();
DataInputStream dis = new DataInputStream(in);
res = dis.readLine();

pageContext.setAttribute("result", res);

%>

<b>Process p = Runtime.getRuntime().exec(cmd):</b><br/>
<c:out value="${result}"/>
