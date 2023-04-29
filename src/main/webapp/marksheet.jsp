<%@page import="bean.BeanClass"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">



<title>Nagpur University</title>
	   <style>
  body {
      margin: 40px;
      border-radius: 15px;
      border: 2px solid #ccc;
    }

    .header {
      text-align: center;
      background-color: #f2f2f2;
      padding: 20px;
      border-radius: 10px 10px 0 0;
    }

    .header h1 {
  margin: 0;
  font-size: 36px;
  color: #333;
  font-family: 'Wisteria';
}
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th {
      background-color: #e0eaf7;
      color: #333;
      font-weight: bold;
      padding: 10px;
      text-align: left;
    }

    td {
      padding: 10px;
      text-align: left;
    }

    tbody tr:nth-child(odd) {
      background-color: #f2f2f2;
    }

    .response {
      font-weight: bold;
    }

    @media screen and (max-width: 600px) {
      table, thead, tbody, th, td, tr {
        display: block;
      }

      thead tr {
        position: absolute;
        top: -9999px;
        left: -9999px;
      }

      tr {
        border: 1px solid #ccc;
      }

      td {
        border: none;
        border-bottom: 1px solid #eee;
        position: relative;
        padding-left: 50%;
      }

      td:before {
        position: absolute;
        top: 6px;
        left: 6px;
        width: 45%;
        padding-right: 10px;
        white-space: nowrap;
        content: attr(data-column);
        color: #000;
        font-weight: bold;
      }
    }

   
    th {
      background-color: #e0eaf7;
      color: #0077c2;
      
      
      .back-button {
    display: inline-block;
    background-color: #f2f2f2;
    border: none;
    color: black;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    border-radius: 5px;
    top: calc(1cm - 10px);
    font-size: 1.2em;
}

.back-arrow {
    margin-right: 10px;
}
      
     
      
      
    }
    </style>
</head>
<body>

<a href="back" class="back-button" style="font-size: 20px;"><span class="back-arrow">&#8592;</span>
    Back</a>

<%
BeanClass beanClass = (BeanClass)request.getAttribute("BeanClass");
%>


    <div class="header">
        <h1>NAGPUR UNIVERSITY</h1>
        <p>Semester: <span class="response"><%out.println(beanClass.getSemesterName().toUpperCase());%></span></p>
        <p>Examination: <span class="response"><%out.println(beanClass.getStudentDepartment());%></span></p>
    </div>
    <table>
        <tr>
            <th>Student Name</th>
            <td><%out.println(beanClass.getStudentName().toUpperCase());%></td>
            <th>Roll No.</th>
            <td><%out.println(beanClass.getStudentRollNo());%></td>
        </tr>
        <tr>
            <th>Branch Name</th>
            <td><%out.println(beanClass.getStudentBranch().toUpperCase());%></td>
            <th>Date</th>
            <td><%out.println("17/04/2023");%></td>
        </tr>
        <tr>
            <th>College Code</th>
            <td><span class="response"><%out.println(beanClass.getCollegeCode());%></span></td>
            <th>Medium</th>
            <td><%out.println(beanClass.getMedium().toUpperCase());%></td>
        </tr>
    </table>
    <table>
        <thead>
            <tr>
                <th rowspan="2">Sr.no</th>
                <th rowspan="2">Subject</th>
                <th colspan="4">Marks and Credit scheme</th>
                <th colspan="7">Marks and credit awarded</th>
            </tr>
            <tr>
                <th>TU/PU</th>
                <th>TI/PI</th>
                <th>Max marks</th>
                <th>Min marks</th>
                <th>TU/PU</th>
                <th>TI/PI</th>
                <th>Total Marks</th>
                <th>Grade</th>
                <th>GP</th>
                <th>CR</th>
                <th>GPV</th>
                
            </tr>
        </thead>
        <%//Student Marks
		ArrayList<String> subjectNames = new ArrayList<String>();
		subjectNames.add(beanClass.getNameS1());
		subjectNames.add(beanClass.getNameS2());
		subjectNames.add(beanClass.getNameS3());
		subjectNames.add(beanClass.getNameS4());
		subjectNames.add(beanClass.getNameP1());
		subjectNames.add(beanClass.getNameP2());
		
		ArrayList<Integer>sbConTotMarkTU=new ArrayList<Integer>();
		sbConTotMarkTU.add(beanClass.getConstS1TU());
		sbConTotMarkTU.add(beanClass.getConstS2TU());
		sbConTotMarkTU.add(beanClass.getConstS3TU());
		sbConTotMarkTU.add(beanClass.getConstS4TU());
		sbConTotMarkTU.add(beanClass.getConstP1TU());
		sbConTotMarkTU.add(beanClass.getConstP2TU());
		
		ArrayList<Integer>sbConTotMarkTI =new ArrayList<Integer>();
		sbConTotMarkTI.add(beanClass.getConstS1TI());
		sbConTotMarkTI.add(beanClass.getConstS2TI());
		sbConTotMarkTI.add(beanClass.getConstS3TI());
		sbConTotMarkTI.add(beanClass.getConstS4TI());
		sbConTotMarkTI.add(beanClass.getConstP1TI());
		sbConTotMarkTI.add(beanClass.getConstP2TI());
		
		ArrayList<Integer>maxMark=new ArrayList<Integer>();
		maxMark.add(beanClass.getMaxS1());
		maxMark.add(beanClass.getMaxS2());
		maxMark.add(beanClass.getMaxS3());
		maxMark.add(beanClass.getMaxS4());
		maxMark.add(beanClass.getMaxP1());
		maxMark.add(beanClass.getMaxP2());
		
		ArrayList<Integer>minMark=new ArrayList<Integer>();
		minMark.add(beanClass.getMinS1());
		minMark.add(beanClass.getMinS2());
		minMark.add(beanClass.getMinS3());
		minMark.add(beanClass.getMinS4());
		minMark.add(beanClass.getMinP1());
		minMark.add(beanClass.getMinP2()); 
		
		ArrayList<Integer> subjectMarksT = new ArrayList<Integer>();
		subjectMarksT.add(beanClass.getObtS1TU());
		subjectMarksT.add(beanClass.getObtS2TU());
		subjectMarksT.add(beanClass.getObtS3TU());
		subjectMarksT.add(beanClass.getObtS4TU());
		subjectMarksT.add(beanClass.getObtP1TU());
		subjectMarksT.add(beanClass.getObtP2TU());

		ArrayList<Integer> subjectInternalMarks = new ArrayList<Integer>();
		subjectInternalMarks.add(beanClass.getObtS1TI());
		subjectInternalMarks.add(beanClass.getObtS2TI());
		subjectInternalMarks.add(beanClass.getObtS3TI());
		subjectInternalMarks.add(beanClass.getObtS4TI());
		subjectInternalMarks.add(beanClass.getObtP1TI());
		subjectInternalMarks.add(beanClass.getObtP2TI());
		
		
		ArrayList<Integer> subjectTotalMarks = new ArrayList<Integer>();
		subjectTotalMarks.add(beanClass.getTotS1());
		subjectTotalMarks.add(beanClass.getTotS2());
		subjectTotalMarks.add(beanClass.getTotS3());
		subjectTotalMarks.add(beanClass.getTotS4());
		subjectTotalMarks.add(beanClass.getTotP1());
		subjectTotalMarks.add(beanClass.getTotP2());
		
		ArrayList<String> subjectGrade = new ArrayList<String>();
		subjectGrade.add(beanClass.getGrdS1());
		subjectGrade.add(beanClass.getGrdS2());
		subjectGrade.add(beanClass.getGrdS3());
		subjectGrade.add(beanClass.getGrdS4());
		subjectGrade.add(beanClass.getGrdP1());
		subjectGrade.add(beanClass.getGrdP2());
		
		ArrayList<Integer> subjectGp = new ArrayList<Integer>();
		subjectGp.add(beanClass.getGpS1());
		subjectGp.add(beanClass.getGpS2());
		subjectGp.add(beanClass.getGpS3());
		subjectGp.add(beanClass.getGpS4());
		subjectGp.add(beanClass.getGpP1());
		subjectGp.add(beanClass.getGpP2());
		
		ArrayList<Integer> subjectCr = new ArrayList<Integer>();
		subjectCr.add(beanClass.getCrS1());
		subjectCr.add(beanClass.getCrS2());
		subjectCr.add(beanClass.getCrS3());
		subjectCr.add(beanClass.getCrS4());
		subjectCr.add(beanClass.getCrP1());
		subjectCr.add(beanClass.getCrP2());
		
		
		ArrayList<Integer> subjectGPV = new ArrayList<Integer>();
		subjectGPV.add(beanClass.getGpvS1());
		subjectGPV.add(beanClass.getGpvS2());
		subjectGPV.add(beanClass.getGpvS3());
		subjectGPV.add(beanClass.getGpvS4());
		subjectGPV.add(beanClass.getGpvP1());
		subjectGPV.add(beanClass.getGpvP2());
		
		
		
		%>
        <% for(int i = 0; i < subjectNames.size(); i++){%>
        <tbody>
            <tr>
                <td><%out.println(i+1);%></td>
                <td><%out.println(subjectNames.get(i).toUpperCase());%></td>
                <td><%out.println(sbConTotMarkTU.get(i));%></td>
                <td><%out.println(sbConTotMarkTI.get(i));%></td>
                <td><%out.println(maxMark.get(i));%></td>
                <td><%out.println(minMark.get(i));%></td>
                <td><%out.println(subjectMarksT.get(i));%></td>
                <td><%out.println(subjectInternalMarks.get(i));%></td>
                <td><%out.println(subjectTotalMarks.get(i));%></td>
                <td><%out.println(subjectGrade.get(i).toUpperCase());%></td>
                <td><%out.println(subjectGp.get(i));%></td>
                <td><%out.println(subjectCr.get(i));%></td>
                <td><%out.println(subjectGPV.get(i));%></td>
            </tr>
        </tbody>
        <% }%>
    </table>
    
    
    <table>
		<thead>
			<tr>
				<th>Total Credits</th>
				<th>SGPA</th>
				<th>OUT OF</th>
				<th>Total Marks Obtained</th>
				<th>Out of Marks</th>
				<th>Result</th>
				<th>Division</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%out.println(beanClass.getTotalCredits());%></td>
				<td><%out.println(beanClass.getSgpa());%></td>
				<td><%out.println(beanClass.getSgpaOutof());%></td>
				<td><%out.println(beanClass.getObtTotalMarks());%></td>
				<td><%out.println(beanClass.getOutofTotalMarks());%></td>
				<td><%out.println(beanClass.getResult());%></td>
				<td><%out.println(beanClass.getDivision().toUpperCase());%></td>
			</tr>
		</tbody>
	</table>
    
    
    
</body>



</html>