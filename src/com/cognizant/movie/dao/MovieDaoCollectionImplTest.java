package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao moviedao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovie();
        testGetMovieListCustomer();

    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin View\n");
        System.out.printf("%-10s%-20s%-20s%-15s%-20s%-20s%-10s\n", "Id", "Title", "BoxOffice",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        List<Movie> movie = moviedao.getMovieListAdmin();
        for (Movie movieItem : movie) {
            System.out.println(movieItem);
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer View\n");
        List<Movie> movie = moviedao.getMovieListCustomer();
        System.out.printf("%-10s%-20s%-20s%-15s%-20s%-20s%-10s\n", "Id", "Title", "BoxOffice",
                "Active", "Date of Launch", "Genre", "Has Teaser");

        for (Movie movieItem2 : movie) {
            System.out.println(movieItem2);
        }

    }

    public static void testEditMovie() {
        System.out.println("Edited Movie\n");
        Movie movie = new Movie(1, "Lucifer", 35245648761L, true,
                DateUtil.convertToDate("02/10/2019"), "Political", true);
        moviedao.modifyMovieList(movie);
    }

    public static void testGetMovie() {
        System.out.println("Get Movie Item\n");
        System.out.printf("%-10s%-20s%-20s%-15s%-20s%-20s%-10s\n", "Id", "Title", "BoxOffice",
                "Active", "Date of Launch", "Genre", "Has Teaser");
        Movie movie = moviedao.getMovieById(3);
        System.out.println(movie);

    }

}
