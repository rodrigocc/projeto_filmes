import 'package:projeto_novo/data/models/movie_list.dart';
import 'package:projeto_novo/domain/entities/movie.dart';

abstract class IFetchMovieUseCase {
  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId);
  Future<List<Movie>> searchMovieByName(String name);
  Future<Movie> fetchMovieDetails(String id);
}
