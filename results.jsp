
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            table {
            
                width: 50%;
            }
            td {
                border: 2px solid #dddddd;
            }
            tr:nth-child(even){
               background-color: #dddddd; 
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Info</title>
    </head>
    
    <%
    int hoursWorked = Integer.parseInt(request.getParameter("hours"));
    int overtimeHours = hoursWorked- 40;
    double hourlyPay = Double.parseDouble(request.getParameter("hourly"));
    double overtimeRate = hourlyPay * 1.5;
    double overtimePay = overtimeRate * overtimeHours;
    int regularHours = hoursWorked - overtimeHours;
    double grossPay = (regularHours*hourlyPay)+ (overtimeHours*overtimeRate);
    int preTax = Integer.parseInt(request.getParameter("preTax"));
    int postTax = Integer.parseInt(request.getParameter("postTax"));
    double preTaxPay = grossPay - preTax;
    double lowTax = preTaxPay * 0.18;
    double highTax = preTaxPay * 0.22;
    double postTaxPayLow = preTaxPay - lowTax;
    double postTaxPayHigh = preTaxPay - highTax;
    double grossPayHigh =  postTaxPayHigh - postTax;
    double grossPayLow =   postTaxPayLow - postTax;

    %>
    
    <body>
        <h1>Salary Info</h1>
        <table>
            <tbody>
                <tr>
                    <td>Hours Worked: </td>               
                    <td><%= hoursWorked %> hours</td>
                </tr>
                
                <tr>
                    <td>Hourly Rate: </td>               
                    <td>$<%= hourlyPay %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime: </td>
                    <% if (hoursWorked > 40) { %>
                    <td><%= overtimeHours  %> hours</td>
                    <% } %>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate</td>
                    <td>$<%= overtimeRate %> </td>
                </tr>
                
                <tr>
                    <td>Gross Pay</td>
                    <td>$<%= grossPay %> </td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct: </td>               
                    <td>$<%= preTax%></td>
                </tr>
                
                 <tr>
                    <td>Pre Tax Pay</td>
                    <td>$<%= preTaxPay %> </td>
                </tr>
                
                 <tr>
                    <td>Tax Amount </td>
                    <% if (grossPay < 500) { %>
                    <td>$<%= lowTax %> </td>
                    <%} else{%>
                    <td>$<%= highTax %> </td>
                    <% } %>
                </tr>
                
                <tr>
                    <td>Post-tax Pay: </td> 
                    <% if (grossPay < 500) { %>
                    <td>$<%= postTaxPayLow %> </td>
                    <% } else {%>
                    <td>$<%= postTaxPayHigh %> </td>
                    <% } %>
                </tr>
                
                
                <tr>
                    <td>Post-tax Deduct: </td>               
                    <td>$<%= postTax%></td>
                </tr>
                
                <tr>
                    <td>Gross Pay </td> 
                    <% if (grossPay < 500) { %>
                    <td>$<%= grossPayLow %> </td>
                    <% } else {%>
                    <td>$<%= grossPayHigh %> </td>
                    <% } %>
                </tr>
            </tbody>                      
        </table>
        
        
        
        
        
    </body>
</html>
