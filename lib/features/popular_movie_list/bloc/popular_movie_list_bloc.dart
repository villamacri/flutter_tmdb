import 'package:bloc/bloc.dart';
import 'package:flutter_tmdb/core/models/movies_list_popular_response.dart';
import 'package:flutter_tmdb/core/services/movie_service.dart';
import 'package:meta/meta.dart';

part 'popular_movie_list_event.dart';
part 'popular_movie_list_state.dart';

class PopularMovieListBloc extends Bloc<PopularMovieListEvent, PopularMovieListState> {
  PopularMovieListBloc(MovieService ms) : super(PopularMovieListInitial()) {
    on<PopularMovieListEvent>((event, emit) async {
      emit(PopularMovieListLoading());
      try{
        var apiPopularMovieList=await ms.getList(MovieListType.popular);
        emit (PopularMovieListSuccess(apiPopularMovieList:  apiPopularMovieList));
      }catch(e){
        PopularMovieListError(message: e.toString());
      }
    });
  }
}
