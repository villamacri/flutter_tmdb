part of 'popular_movie_list_bloc.dart';

@immutable
sealed class PopularMovieListState {}

final class PopularMovieListInitial extends PopularMovieListState {}

final class PopularMovieListLoading extends PopularMovieListState{}

final class PopularMovieListSuccess extends PopularMovieListState{
  final List<Movie> apiPopularMovieList;
  PopularMovieListSuccess({required this.apiPopularMovieList});
}

final class PopularMovieListError extends PopularMovieListState{
  final String message;
  PopularMovieListError({required this.message});
}