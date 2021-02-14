<%-- 
    Document   : index
    Created on : Nov 24, 2020, 3:15:14 PM
    Author     : JEE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="h" uri="http://java.sun.com/jsf/html" %>
<%@taglib  prefix="f" uri="http://java.sun.com/jsf/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <f:view>
            <h2>List Of Items</h2><br><br>
            <a href="faces/addItem.jsp">Purchase</a><br><br>
            <h:form>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="#{itemsBean.product}" var="product">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.price}</td>
                            <td>${product.quantity}</td>
                            <td>
                                <h:commandLink value="Sale" action="#{itemsBean.updateLink(product)}"/>
                            </td>
                            <td>
                                <h:commandLink value="Delete" action="#{itemsBean.deleteById(product.id)}"/>
                            </td>
                                
                            
                        </tr> 
                        
                    </c:forEach>
                </table>
            </h:form>   
            
        </f:view>  
        
    </center>
    </body>
</html>
