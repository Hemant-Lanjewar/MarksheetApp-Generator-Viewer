<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Invalid User</title>
   <meta http-equiv="cache-control" content="no-cache, no-store, must-revalidate">
   <meta http-equiv="pragma" content="no-cache">
   <meta http-equiv="expires" content="0">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgba(0, 0, 0, 0.4);
        }
        
        .dialog-box {
		  width: 400px;
		  height: 200px;
		  background-color: #fff;
		  border-radius: 10px;
		  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.4);
		  position: fixed;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  display: flex;
		  flex-direction: column;
		  justify-content: center;
		  align-items: center;
		  z-index: 9999;
		}


        
        h1 {
            font-size: 24px;
            margin-top: 0;
        }
        
        p {
            font-size: 16px;
            margin-bottom: 0;
        }
        
        button {
            padding: 10px 20px;
            background-color: rgb(162, 217, 255);
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        
        button:hover {
            background-color: rgb(151, 230, 255);
        }
    </style>
</head>
<body>
    <div class="dialog-box">
        <h1>Successful </h1>
        <p>Data Added Successfully.....</p>
       <button onclick="location.reload()">OK</button>


    </div>
    
    
    
    
</body>
</html>

