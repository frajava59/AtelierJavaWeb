/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atelierjavaweb.servlets;

import atelierjavaweb.entity.Film;
import atelierjavaweb.entity.Genre;
import atelierjavaweb.entity.Pays;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "AjouterFilmServlet", urlPatterns = {"/ajouter_film"})
public class AjouterFilmServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();

        Query query = em.createQuery("SELECT p FROM Pays p ORDER BY p.nom");
        List<Pays> pays = (List<Pays>) query.getResultList();
        req.setAttribute("pays", pays);

        query = em.createQuery("SELECT g FROM Genre g ORDER BY g.nom");
        List<Genre> genres = (List<Genre>) query.getResultList();
        req.setAttribute("genres", genres);

        req.getRequestDispatcher("ajouter_film.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();

        Film f = new Film();

        f.setTitre(req.getParameter("titre"));
        f.setSynopsis(req.getParameter("synopsis"));
        f.setAnnee(Integer.valueOf(req.getParameter("annee")));
        f.setDuree(Integer.valueOf(req.getParameter("duree")));

        // parseLong ou valueOf
        Pays unPays = em.find(Pays.class, Long.parseLong(req.getParameter("selpays")));
        unPays.getFilmsProduits().add(f);
        f.getPays().add(unPays);

        Genre unGenre = em.find(Genre.class, Long.parseLong(req.getParameter("genre_id")));
        unGenre.getFilms().add(f);
        f.setGenre(unGenre);

        em.persist(f);
        em.getTransaction().commit();

        // on pourrait faire un 
        // req.getRequestDispatcher("lister_films").forward(req, resp);
        // mais ca part en post sur la servlet lister_films
        // envoi vers la servlet
        resp.sendRedirect("lister_films");

    }

}
