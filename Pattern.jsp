<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@1,900&family=Sansita+Swashed:wght@600&display=swap" rel="stylesheet">        
        <title>Program 1</title>
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
            p{
                text-align:left;
                padding-left:650px;
            }
        </style>
    </head>
    <body class="body">
        <div class="header"> 
            Name- Sukrati Agrawal<br>
            Subject- Internet Technologies<br>
            Roll No.- 1217<br>
        </div>
        <h1>Pattern</h1>
        <%
            int n=Integer.parseInt(request.getParameter("terms"));
            String s="";
            for(int i=1;i<=n;i++){
                for(int j=1;j<=i;j++)
                    s+=(j+" ");
                s+="<br>";
            }
        %>
        <p><%=s %></p>
        <div class="header">
            <script>document.writeln("Execution Time- "+ new Date());</script>
        </div>
    </body>
</html>
