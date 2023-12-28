<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<head>
    <title>User Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(to right, #3498db, #6ab0de);
            color: #fff;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            text-align: center;
            padding-top: 50px;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: #fff;
        }

        tr:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }

        a {
            text-decoration: none;
            color: #fff;
            font-size: 1.2em;
            margin: 0 5px;
            padding: 8px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }
    </style>
</head>
<body>

    <h1>User Details</h1>

    <table border="2">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Gender</th>
            <th>Country</th>
            <th>Action</th>
            <th>Action</th>
        </tr>

        <!-- Your forEach loop content here -->
        <c:forEach var="user" items="${users}">   
   <tr>  
   <td>${user.id}</td>  
   <td>${user.name}</td>  
   <td>${user.email}</td>  
   <td>${user.password}</td>  
   <td>${user.gender}</td> 
   <td>${user.country}</td>
   <td><a href="/delete/${user.id}">Delete</a></td>
   <td><a href="/update/${user.id}">Edit</a></td>
   
  
    </tr>  
   </c:forEach>
    </table>

</body>
</html>
