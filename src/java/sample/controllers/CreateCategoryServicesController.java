/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sample.services.CategoryServiceDTO;
import sample.user.AdminDAO;


/**
 *
 * @author dangk
 */
@WebServlet(name = "CreateCategoryServicesController", urlPatterns = {"/CreateCategoryServicesController"})
public class CreateCategoryServicesController extends HttpServlet {

    private static final String ERROR="createcategory.jsp";
    private static final String SUCCESS="MainController?action=Search_Category&search";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url=ERROR ;
        try { 
            
            int count =1;
            String categoryID = "CT" + count;
            AdminDAO dao = new AdminDAO();
            boolean checkDuplicate = dao.checkDuplicateCategory(categoryID);
            while (checkDuplicate) {
                count = count + 1;
                categoryID = "CT" + count;
                checkDuplicate = dao.checkDuplicateCategory(categoryID);
            }

            String categoryName = request.getParameter("categoryName");
            boolean status = Boolean.parseBoolean(request.getParameter("status"));
            CategoryServiceDTO category = new CategoryServiceDTO(categoryID, categoryName, status);
            boolean checkCreate = dao.createCategory(category);
            if (checkCreate) {
                url = SUCCESS;
            }

        } catch (Exception e) {
            log("ERROR at CreateCategoryController:"+ e.toString());
        }finally{
            request.getRequestDispatcher(url).forward(request, response);
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
