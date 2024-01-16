/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author osdroix
 */
@WebServlet(name = "Modelador", urlPatterns = {"/Modelador"})
public class Modelador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion = request.getParameter("accion");
        Connection con = conexion.getConnection();
        Statement set = null;
        try {
            set = con.createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(Modelador.class.getName()).log(Level.SEVERE, null, ex);
        }
        switch(accion){
            case "Crear-categoria":
              String categoria = request.getParameter("categoria");
                      //Preparas el String con los datos de creación  de la tabla
                     String table = "CREATE TABLE "+categoria+" " +
                                "(`Id_producto` int(11) NOT NULL AUTO_INCREMENT," +
                                "  `Codigo_producto` int(11) NOT NULL," +
                                "  `Cantidad_producto` int(11) NOT NULL," +
                                "  `Precio_producto` double NOT NULL," +
                                "  `Fecha_producto` date NOT NULL," +
                                "  `Nom_producto` varchar(100) NOT NULL," +
                                "  `Foto_producto` varchar(100) NOT NULL,"+
                                " PRIMARY KEY ( Id_producto ))";
        {
            try {
                //Ejecutamos el Statement
                set.executeUpdate(table);                  
                response.sendRedirect("index.jsp");
            } catch (SQLException ex) {
                Logger.getLogger(Modelador.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
            break;
    }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
