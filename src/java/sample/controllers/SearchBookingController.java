/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sample.booking.BookingDTO;
import sample.user.AdminDAO;
import sample.user.DoctorDTO;

/**
 *
 * @author QUANG VAN
 */
@WebServlet(name = "SearchBookingController", urlPatterns = {"/SearchBookingController"})
public class SearchBookingController extends HttpServlet {

    private static final String ERROR = "showBooking.jsp";
    private static final String SUCCESS = "showBooking.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String search = request.getParameter("search");
            AdminDAO dao = new AdminDAO();
            HttpSession session = request.getSession();
            List<BookingDTO> listBooking = dao.searchListAppointmentBooking(search);
            if (listBooking.size() > 0) {
                int page, numperpage = 5;
                int size = listBooking.size();
                int number = (size % 5 == 0 ? (size / 5) : (size / 5)) + 1;
                String xpage = request.getParameter("page");
                if (xpage == null) {
                    page = 1;
                } else {
                    page = Integer.parseInt(xpage);
                }
                int start, end;
                start = (page - 1) * numperpage;
                end = Math.min(page * numperpage, size);
                List<BookingDTO> listAllBooking = dao.getListBookingByPage(listBooking, start, end);
                session.setAttribute("LIST_BOOKING", listAllBooking);
                session.setAttribute("page", page);
                session.setAttribute("number", number);
                
                url = SUCCESS;
            }
        } catch (Exception e) {
            log("Error at SearchController:" + e.toString());
        } finally {
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
