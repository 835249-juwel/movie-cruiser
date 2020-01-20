package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao favoritedao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();
    }

    public static void testAddFavorites() {
        System.out.println("Movie added into favorites\n");
        favoritedao.addFavoritesById(1, 2);// 1 is userId and 2 is movieId
        favoritedao.addFavoritesById(1, 3);// 1 is userId and 3 is movieId
    }

    public static void testGetAllFavorites() {
        try {
            System.out.println("Retrieving all the movies from favorites\n");
            List<Movie> list = favoritedao.getAllFavorites(1).getFavoriteList();// 1 is userId
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println(
                    "No of favorites " + favoritedao.getAllFavorites(1).getNoOfFavorites());
        } catch (FavoriteEmptyException e) {
            System.err.println(e);
        }
    }

    public static void testRemoveFavorites() {
        System.out.println("Favorite Removed\n");
        favoritedao.removeFavoritesById(1, 3);
    }

}
