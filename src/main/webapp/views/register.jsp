<head>
    <title>User Management CRUD Application</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            background: linear-gradient(to right, #3498db, #6ab0de);
            color: #fff;
        }

        center {
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        hr {
            border: 0;
            height: 1px;
            background: linear-gradient(to right, transparent, rgba(255, 255, 255, 0.7), transparent);
            margin-bottom: 20px;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-size: 1.2em;
            margin: 0 15px;
            padding: 10px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #fff;
        }

        form {
            width: 60%;
            margin: 20px auto;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            text-align: right;
        }

        input[type="number"],
        input[type="text"],
        input[type="email"] {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <center>
        <h1>User Management CRUD Application</h1>
        <hr> <br>
        <a href="/addUser">Add New User</a>
        <a href="/viewUsers">View Users</a>
    </center>

    <form action="/save">
        <table>
            <tr>
                <td><h3 style="color: navy;">User Id</h3></td>
                <td><input type="number" name="id"></td>
            </tr>
            <tr>
                <td><h3 style="color: navy;">Name:</h3></td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td><h3 style="color: navy;">Password</h3></td>
                <td><input type="text" name="password"></td>
            </tr>
            <tr>
                <td><h3 style="color: navy;">Email</h3></td>
                <td><input type="email" name="email"></td>
            </tr>
            <tr>
                <td><h3 style="color: navy;">Gender</h3></td>
                <td><input type="text" name="gender"></td>
            </tr>
            <tr>
                <td><h3 style="color: navy;">Country:</h3></td>
                <td><input type="text" name="country"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="ADD USER">
                </td>
            </tr>
        </table>
    </form>

</body>
</html>
