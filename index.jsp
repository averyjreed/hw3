
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
             table {
            
                width: 50%;
            }
            td {
                width: 100%;
                border: 1px solid #dddddd;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Salary Calculator</title>
    </head>
    
    
    
    <body>
        <h1>Simple Salary Calculator</h1>
        
        <form name="demoForm" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50" required</td>                                               
                    </tr> 
                    
                    <tr>
                        <td>Hourly Pay</td>
                        <td><input type="text" name="hourly" value="" size="50"required </td>                                               
                    </tr> 
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="preTax" value="" size="50"required </td>                                               
                    </tr> 
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="postTax" value="" size="50"required </td>                                               
                    </tr> 
                    
                    
                </tbody> 
            </table>
            
          <input type="reset" value="Clear" id="clear">
          <input type="submit" value="Submit" id="submit">
            
        </form>
        
    </body>
</html>
