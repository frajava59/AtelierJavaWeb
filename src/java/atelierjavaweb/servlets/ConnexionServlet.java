/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.servlets;

import java.io.IOException;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Formation
 */
@WebServlet(name = "ConnexionServlet", urlPatterns = {"/connexion"})
public class ConnexionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("connexion.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();

        String login = req.getParameter("pseudo");
        String mdp = req.getParameter("mdp");

        Query query = em.createQuery("SELECT COUNT(u) FROM Utilisateur u WHERE u.pseudo:pseudo  and u.mdp=:motDePasse");
        query.setParameter("pseudo", login);
        query.setParameter("motDePasse", mdp);
        query.setFirstResult(500);
        query.setMaxResults(50);
        
        
        Long nbResul = (Long) query.getSingleResult();
        
        if (nbResul > 0 ) {
            // identification OK
            req.getSession().setAttribute("pseudoUtil", login);
            
            req.getRequestDispatcher("lister_films").forward(req, resp);
        }
        else {
            req.getRequestDispatcher("connexion.jsp").forward(req, resp);
            
        }
        

    }

}
