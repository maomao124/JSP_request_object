<%@ page import="java.util.Enumeration" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  Project name(项目名称)：JSP_request_object
  Author(作者）: mao
  Author QQ：1296193245
  GitHub：https://github.com/maomao124/
  Date(创建日期)： 2021/12/26
  Time(创建时间)： 14:20
  Description(描述)：
JSP request 是 javax.servlet.http.HttpServletRequest 的实例对象，主要用来获取客户端提交的数据。
request 对象提供了一系列方法，可以获取请求参数信息、表单数据、HTTP 头信息、cookie 和 HTTP 请求方法等。
request 对象常用方法
方法	说明
String getParameter(String name)	获取请求参数 name 的值
Enumeration getParameterNames() 	获取所有参数名称
String[] getParameterValues(String name)	获取请求参数 name 的所有值
Object getAttribute(String name)	获取 name 属性的值
Enumeration getAttributeNames() 	返回所有属性的名称集合
void setAttribute(String key, Object value)	给 key 对象赋 value 值
void removeAttribute(String name)	删除指定的 name 属性
cookie[] getCookies()	获取所有的 cookie 对象
HttpSession getSession()	返回 request 对应的 session 对象，如果没有则创建一个 session 对象
HttpSession getSession(boolean create)	返回 request 对应的 session 对象，如果没有，且 create 值为 true，则创建一个 session 对象
Enumeration getHeaderNames()	返回 HTTP 头信息的名称集合
String getHeader(String name)	获取 name 指定的 HTTP 头信息
String getMethod()	获取 HTTP 请求方法/客户提交信息方式
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    response.setContentType("text/html;charset=UTF-8");
    PrintWriter printWriter = response.getWriter();
    Enumeration<String> headerNames = request.getHeaderNames();
    printWriter.write("<h2>");
    while (headerNames.hasMoreElements())
    {
        String paramName = headerNames.nextElement();
        printWriter.print("       " + paramName + ":      ");
        String paramValue = request.getHeader(paramName);
        printWriter.println("      " + paramValue + "<br/>");
    }
    printWriter.write("</h2>");
%>

</body>
</html>
