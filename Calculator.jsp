<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,900&family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">        
        <title>Program 2</title>
        <style>
            .header{
                background-color:#259b9a;
                color: white;
                text-align: center;
                padding: 25px;
                font-family: 'Sansita Swashed', cursive;
            }
            .body{
                background-color:white;
                text-align: center;
                padding: 25px;
                font-family: 'Roboto', sans-serif;
            }
        </style>
    </head>
    <body class="body">
        <div class="header"> 
            Name- Sukrati Agrawal<br>
            SUbject- Internet Technologies<br>
            Roll No.- 1217<br>
        </div>
        <h1>Result</h1>
        Integer 1: ${param.n1}<br>
        Integer 2: ${param.n2}<br> 
        <%
            int n1=Integer.parseInt(request.getParameter("n1"));
            int n2=Integer.parseInt(request.getParameter("n2"));
            int op=Integer.parseInt(request.getParameter("op"));
            double ans=0;
            if(op==0)
                ans=n1+n2;
            else if(op==1)
                ans=n1-n2;
            else if(op==2)
                ans=n1*n2;
            else if(op==3)
                ans=n1/n2;
        %>
        <h3>Output: <%=ans %></h3><br><br>
        <div class="header">
            <script>document.writeln("Date- "+ new Date());</script>
        </div>
    </body>
</html>
