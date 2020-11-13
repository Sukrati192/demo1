<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,900&family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">        
        <title>Program 11</title>
        <style>
            .header{
                background-color:#fb9039;
                color: white;
                text-align: center;
                padding: 25px;
                font-family: 'Sansita Swashed', cursive;
            }
            .body{
                background-color:#646c79;
                text-align: center;
                padding: 25px;
                font-family: 'Roboto', sans-serif;
            }
            button {
                background-color: #1f3044;
                padding: 10px;
                color:white;
            }
        </style>
    </head>
    <body class="body">
        <div class="header"> 
            Name- Sukrati Agrawal<br>
            Assignment- Internet Technologies<br>
            Roll No.- 1217<br>
        </div>
        <h1>Invoice</h1>
        Customer ID: ${param.cid}<br>
        Name: ${param.name}<br> 
        Address: ${param.addr}<br>
        Contact No: ${param.cno}<br>
        Order ID: ${param.oid}<br>
        <h3><u>Items List</u></h3> 
        <%
            int tQuant=Integer.parseInt(request.getParameter("tshirt"));
            int jQuant=Integer.parseInt(request.getParameter("jeans"));
            int suQuant=Integer.parseInt(request.getParameter("suit"));
            int saQuant=Integer.parseInt(request.getParameter("saree"));
            int tValue=400*tQuant;
            int jValue=1000*jQuant;
            int suValue=2000*suQuant;
            int saValue=4000*saQuant;
            double tGst=(5*tValue)/100;
            double jGst=(5*jValue)/100;
            double suGst=(5*suValue)/100;
            double saGst=(5*saValue)/100;
            double total=jGst+jValue+tGst+tValue+suGst+suValue+saGst+saValue;
        %>
        <table align="center" border="1" >
            <tr>
                <th>Item Name</th>
                <th>Quantity</th> 
                <th>Rate</th> 
                <th>Taxable Value</th> 
                <th>GST 5%</th>
                <th>Invoice Value</th> 
            </tr>
            <tr>
                <td>T-Shirt</td>
                <td><%=tQuant %></td>
                <td>Rs. 400</td>
                <td>Rs. <%=tValue %></td>
                <td>Rs. <%=tGst %></td>
                <td>Rs. <%=tGst+tValue %></td>
             </tr>  
             <tr>
                <td>Jeans</td>
                <td><%=jQuant %></td>
                <td>Rs. 1000</td>
                <td>Rs. <%=jValue %></td>
                <td>Rs. <%=jGst %></td>
                <td>Rs. <%=jGst+jValue %></td>
             </tr> 
             <tr>
                <td>Suit</td>
                <td><%=suQuant %></td>
                <td>Rs. 2000</td>
                <td>Rs. <%=suValue %></td>
                <td>Rs. <%=suGst %></td>
                <td>Rs. <%=suGst+suValue %></td>
             </tr>  
             <tr>
                <td>Saree</td>
                <td><%=saQuant %></td>
                <td>Rs. 4000</td>
                <td>Rs. <%=saValue %></td>
                <td>Rs. <%=saGst %></td>
                <td>Rs. <%=saGst+saGst %></td>
             </tr>   
        </table><br><br>
        <h3>TOTAL: Rs. <%=total %></h3><br><br>
        <div class="header">
            <script>document.writeln("Date- "+ new Date());</script>
        </div>
    </body>
</html>
