package home;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import bean.BeanClass;
import connection.DBConnection;

public class HomeDAO {
	
	BeanClass beanClass=null;
	public BeanClass retrieveMarksheet(HttpServletRequest req)
	{
		int i=0,j=0,k=0;

		try
		{
			beanClass = new BeanClass();
			Connection con = DBConnection.getCon();
			
			String deprtment = req.getParameter("department");
			String branch = req.getParameter("branch");
			String semester = req.getParameter("semester");
			String  rollno = req.getParameter("rollno");
			
			
			//Retrieving Student Details 
			PreparedStatement ps1 = con.prepareStatement("SELECT * FROM student WHERE (roll_no = ? AND department = ?) AND (branch = ? AND semester = ?)  ");
			
			ps1.setString(1, rollno);
			ps1.setString(2, deprtment);
			ps1.setString(3, branch);
			ps1.setString(4, semester);
			
			ResultSet rs1 = ps1.executeQuery();
			
			
			while(rs1.next()) {
				beanClass.setSemesterName(rs1.getString("semester"));
				beanClass.setStudentDepartment(rs1.getString("department"));
				beanClass.setStudentName(rs1.getString("name"));
			    beanClass. setStudentBranch(rs1.getString("branch"));
			    beanClass.setStudentRollNo(rs1.getString("roll_no"));
			    beanClass. setMedium(rs1.getString("medium"));
			    beanClass.setCollegeCode(rs1.getInt("collegecode"));
			    i=1;
			}
			
			
			
			//Retrieving Subjects Marks And Setting it Into Setter Methods 
			PreparedStatement ps2 = con.prepareStatement("SELECT * from subject_marks WHERE roll_no = ?");
			ps2.setString(1, rollno); 
			
			ResultSet rs2 = ps2.executeQuery();
			

			while(rs2.next())
			{
				 beanClass.setStudentRollNo(rs2.getString(2));
						     
				 			 int srS=rs2.getInt(3);
							  String nameS = rs2.getString(4);
							  int constSTU = rs2.getInt(5);
							  int constSTI= rs2.getInt(6);
							  int maxS = rs2.getInt(7);
							  int minS = rs2.getInt(8);
							  int obtSTU = rs2.getInt(9);
							  int obtSTI = rs2.getInt(10);
							  int totS = rs2.getInt(11);
							  String grdS = rs2.getString(12);
							  int gpS = rs2.getInt(13);
							  int crS = rs2.getInt(14);
							  int gpvS = rs2.getInt(15);
				  
							  j=1;
								  switch (srS) {
								    case 1: beanClass.setSrS1(srS);
								            beanClass.setNameS1(nameS);
								            beanClass.setConstS1TU(constSTU);
								            beanClass.setConstS1TI(constSTI);
								            beanClass.setMaxS1(maxS);
								            beanClass.setMinS1(minS);
								            beanClass.setObtS1TU(obtSTU);
								            beanClass.setObtS1TI(obtSTI);
								            beanClass.setTotS1(totS);
								            beanClass.setGrdS1(grdS);
								            beanClass.setGpS1(gpS);
								            beanClass.setCrS1(crS);
								            beanClass.setGpvS1(gpvS);
								      
								      break;
								    case 2:
								    	beanClass.setSrS2(srS);
							            beanClass.setNameS2(nameS);
							            beanClass.setConstS2TU(constSTU);
							            beanClass.setConstS2TI(constSTI);
							            beanClass.setMaxS2(maxS);
							            beanClass.setMinS2(minS);
							            beanClass.setObtS2TU(obtSTU);
							            beanClass.setObtS2TI(obtSTI);
							            beanClass.setTotS2(totS);
							            beanClass.setGrdS2(grdS);
							            beanClass.setGpS2(gpS);
							            beanClass.setCrS2(crS);
							            beanClass.setGpvS2(gpvS);
								     
								      break;
								    case 3:
								    	beanClass.setSrS3(srS);
							            beanClass.setNameS3(nameS);
							            beanClass.setConstS3TU(constSTU);
							            beanClass.setConstS3TI(constSTI);
							            beanClass.setMaxS3(maxS);
							            beanClass.setMinS3(minS);
							            beanClass.setObtS3TU(obtSTU);
							            beanClass.setObtS3TI(obtSTI);
							            beanClass.setTotS3(totS);
							            beanClass.setGrdS3(grdS);
							            beanClass.setGpS3(gpS);
							            beanClass.setCrS3(crS);
							            beanClass.setGpvS3(gpvS);
									     
									  break;
								    case 4:
								    	beanClass.setSrS4(srS);
							            beanClass.setNameS4(nameS);
							            beanClass.setConstS4TU(constSTU);
							            beanClass.setConstS4TI(constSTI);
							            beanClass.setMaxS4(maxS);
							            beanClass.setMinS4(minS);
							            beanClass.setObtS4TU(obtSTU);
							            beanClass.setObtS4TI(obtSTI);
							            beanClass.setTotS4(totS);
							            beanClass.setGrdS4(grdS);
							            beanClass.setGpS4(gpS);
							            beanClass.setCrS4(crS);
							            beanClass.setGpvS4(gpvS);
									     
									  break;
								    case 5:
								    	beanClass.setSrS5(srS);
							            beanClass.setNameP1(nameS);
							            beanClass.setConstP1TU(constSTU);
							            beanClass.setConstP1TI(constSTI);
							            beanClass.setMaxP1(maxS);
							            beanClass.setMinP1(minS);
							            beanClass.setObtP1TU(obtSTU);
							            beanClass.setObtP1TI(obtSTI);
							            beanClass.setTotP1(totS);
							            beanClass.setGrdP1(grdS);
							            beanClass.setGpP1(gpS);
							            beanClass.setCrP1(crS);
							            beanClass.setGpvP1(gpvS);
									     
									  break;
								    case 6:
								    	beanClass.setSrS6(srS);
							            beanClass.setNameP2(nameS);
							            beanClass.setConstP2TU(constSTU);
							            beanClass.setConstP2TI(constSTI);
							            beanClass.setMaxP2(maxS);
							            beanClass.setMinP2(minS);
							            beanClass.setObtP2TU(obtSTU);
							            beanClass.setObtP2TI(obtSTI);
							            beanClass.setTotP2(totS);
							            beanClass.setGrdP2(grdS);
							            beanClass.setGpP2(gpS);
							            beanClass.setCrP2(crS);
							            beanClass.setGpvP2(gpvS);
									     
									  break;
									 
							}
								  
							//Retrieving Student Result 
								PreparedStatement ps3 = con.prepareStatement("SELECT * from student_result WHERE roll_no = ?");
								ps3.setString(1, rollno); 
								
								ResultSet rs3 = ps3.executeQuery();
								
								while(rs3.next())
								{
									beanClass.setTotalCredits(rs3.getInt(3));
									beanClass.setSgpa(rs3.getFloat(4));
									beanClass.setSgpaOutof(rs3.getInt(5));
									beanClass.setObtTotalMarks(rs3.getInt(6));
									beanClass.setOutofTotalMarks(rs3.getInt(7));
									beanClass.setResult(rs3.getString(8));
									beanClass.setDivision(rs3.getString(9));
									k=1;
									
								}
								
				}
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		if(i==1 && j==1 && k==1)
		{
			return beanClass;
		}
		else {
			return null;
		}
		
	

}
	
}
