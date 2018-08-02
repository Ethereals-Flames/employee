 
	import java.io.File;
	import java.io.IOException;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import java.util.Iterator;
	import java.util.List;

	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;
	import org.apache.commons.fileupload.FileItem;
	import org.apache.commons.fileupload.FileUploadException;
	import org.apache.commons.fileupload.disk.DiskFileItemFactory;
	import org.apache.commons.fileupload.servlet.ServletFileUpload;
	 
	public class BookInfoInsert extends HttpServlet {	    
	 
	    private String filePath;
	
	    private File file ;
	    private String title;
	    private String description;
	    private String fileName;	    

		public void doPost(HttpServletRequest req,
	            HttpServletResponse res) throws ServletException, IOException {
	        		      
			filePath="C:\\Apache Software Foundation\\Tomcat 7.0\\webapps\\OnlineBStore\\coverPhoto\\";
					  
			DiskFileItemFactory factory = new DiskFileItemFactory();		  

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);		          
	       
	        Connection conn = null; // connection to the database	        
	         
	        try {
	        	
	        	 List fileItems = upload.parseRequest(req);
	        		
	             // Process the uploaded file items
	             Iterator i = fileItems.iterator();
	       
	             while ( i.hasNext () ) {
	                FileItem fi = (FileItem)i.next();
	                
	                if ( fi.isFormField () ) {
	                	
	                	if(fi.getFieldName().equals("bookTitle")){
	                		title=fi.getString();
	                    }
	                    
	                    if(fi.getFieldName().equals("bookDescription")){
	                    	description=fi.getString();                 	  
	                    }	                	
	                }
	                
	                if ( !fi.isFormField () ) {                       
	                	// Get the uploaded file parameters
	                	fileName = fi.getName();
	                	System.out.println("Filename: " + fileName);
	                	
	                	file = new File(filePath + fileName);	          
	                	
	                   fi.write( file ) ;
	                   System.out.println("Uploaded Filename: " + fileName);
	                }
	             }
	             
	             Class.forName("com.mysql.jdbc.Driver");
	             conn=DriverManager.getConnection("jdbc:mysql://localhost/OnlineBookStore","root","root");
    
	            // constructs SQL statement
	            String sql = "INSERT INTO BookInfo(bTitle, bDescription, coverPhoto) values (?, ?, ?)";
	            PreparedStatement statement = conn.prepareStatement(sql);
	            statement.setString(1, title);
	            statement.setString(2, description);
	            statement.setString(3, fileName); 
	            
	 
	            // sends the statement to the database server
	            int row = statement.executeUpdate();
	            if (row > 0) {
	            	res.sendRedirect("pages\\displayBookinfo.jsp");
	            }
	        } catch (SQLException ex) {	            
	            ex.printStackTrace();
	        } catch (FileUploadException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
	            if (conn != null) {
	                // closes the database connection
	                try {
	                    conn.close();
	                } catch (SQLException ex) {
	                    ex.printStackTrace();
	                }
	            }  
	               
	        }
	    }
	}