part of 'popular_movie_list_bloc.dart';

@immutable
sealed class PopularMovieListEvent {}

final class PopularMovieListFetchAllEvent extends PopularMovieListEvent{}