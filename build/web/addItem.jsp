<%-- 
    Document   : addItem
    Created on : Nov 24, 2020, 3:14:41 PM
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
            <h:form>
                <h:inputHidden value="#{itemsBean.id}"/>
                <table border="1">
                    <tr>
                        <td>Name</td>
                        <td>
                            <h:inputText value="#{itemsBean.name}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td>
                            <h:inputText value="#{itemsBean.price}"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td>
                            <h:inputText value="#{itemsBean.quantity}"/>
                        </td>
                    </tr>
                    <tr>
                        <td> <h:commandButton value="Submit" action="#{itemsBean.createProduct()}"/></td>
                    </tr>
                </table>
            </h:form>   
            
        </f:view>  
        
    </center>
    </body>
</html>
