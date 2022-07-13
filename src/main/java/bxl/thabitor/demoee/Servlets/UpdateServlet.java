package bxl.thabitor.demoee.Servlets;

import bxl.thabitor.demoee.models.Product;
import bxl.thabitor.demoee.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", value = "/product/update")
public class UpdateServlet extends HttpServlet {

    private final ProductService service = ProductService.getInstance();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = 0;
        try {
            id = Integer.parseInt( request.getParameter("id") );
        }
        catch (NumberFormatException ex){
            response.sendError(400, "id invalide");
        }

        Product p = service.getOne(id);

        request.setAttribute("product", p);

        request.getRequestDispatcher("/update.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String brand = request.getParameter("brand");
        String category = request.getParameter("category");
        try {
            double price = Double.parseDouble( request.getParameter("price") );
            Product prodToUpdate = new Product(id, name, brand, category, price);
            service.update(prodToUpdate);

            response.sendRedirect(request.getContextPath()+"/getOne.jsp?id=" + id); // renvoi une reponse de redirection
            // request.getRequestDispatcher( "/product/getOne.jsp?id=" + id ).forward(request, response); // continue la creation de la reponse autre part
        }
        catch (NumberFormatException ex){
            request.getRequestDispatcher("/product/update.jsp" ).forward(request, response);
        }
    }
}
