<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <title>Edit User Data</title>
    <style>
       body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background: #3498db; /* Change the background color to blue */
        color: #333;
    }

    h1 {
        font-size: 2.5em;
        text-align: center;
        margin-bottom: 20px;
        color: #fff; /* Text color is set to white for better visibility on a blue background */
    }

        form {
            width: 50%;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 10px;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #3498db;
        }
    </style>
</head>
<body>

    <h1>Edit User Data</h1>

    <form:form action="/editu" method="post" modelAttribute="command">
        <table>
            <tr>
                <td><form:hidden path="id" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><form:input type="text" path="name" /></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><form:input type="password" path="password" /></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input type="email" path="email" /></td>
            </tr>
            <tr>
                <td>Gender:</td>
                <td>
                    <form:radiobutton path="gender" value="Male" />Male
                    <form:radiobutton path="gender" value="Female" />Female
                </td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><form:input type="text" path="country" /></td>
            </tr>
        </table>
        <center><input type="submit" value="UPDATE USER"></center>
    </form:form>

    <a href="/viewUsers">View All User Details</a>
    <a href="/">New User Here</a>

</body>
</html>
