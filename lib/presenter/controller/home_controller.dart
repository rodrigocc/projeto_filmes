import 'package:mobx/mobx.dart';
import 'package:projeto_novo/data/fetch_image.dart';
import 'package:projeto_novo/data/fetch_movie_usecase.dart';
import 'package:projeto_novo/data/models/genrer_list.dart';
import 'package:projeto_novo/data/models/movie_list.dart';
import 'package:projeto_novo/presenter/controller/tab_model.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final FetchMovieUseCase movieUseCase;
  final FetchPosterPath imageUseCase;

  _HomeControllerBase({required this.movieUseCase, required this.imageUseCase});

  @observable
  List<MovieResults> movies = [];

  @observable
  List<Genres> genrerList = [];

  @observable
  bool isLoadingData = false;

  @observable
  int genrerId = 28;

  ObservableList<TabModel> movieGenrerList =
      [
        TabModel(true, 'Ação'),
        TabModel(false, 'Aventura'),
        TabModel(false, 'Fantasia'),
        TabModel(false, 'Comédia'),
      ].asObservable();

  @action
  void changeGenrerTab(String genrerName) {
    switch (genrerName) {
      case 'Ação':
        genrerId = 28;
        break;

      case 'Aventura':
        genrerId = 12;
        break;
      case 'Fantasia':
        genrerId = 14;

        break;
      case 'Comédia':
        genrerId = 35;
        break;
      default:
    }
  }

  @action
  void setSelectedCardStatus(int index) {
    for (var element in movieGenrerList) {
      element.setSelectedStatus(false);
    }
    movieGenrerList[index].setSelectedStatus(true);
  }

  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) {
    return movieUseCase.fetchMovieByGenrer(genrerId);
  }

  @action
  Future<void> fetchMovies(int genrerId) async {
    isLoadingData = true;

    try {
      final List<MovieResults> movies = await fetchMovieByGenrer(genrerId);

      this.movies = movies;
    } finally {
      isLoadingData = false;
    }
  }

  @action
  Future<void> fetchGenrerList() async {
    genrerList = await movieUseCase.fetchGenrerList();
  }

  @action
  Future<void> searchMovies(String value, int genrerId) async {
    await fetchMovies(genrerId);
    final List<MovieResults> movies =
        this.movies
            .where(
              (element) =>
                  element.title!.toLowerCase().contains(value.toLowerCase()),
            )
            .toList();

    this.movies = movies;
  }

  String fetchImageCard(String posterPath) {
    return imageUseCase.fetchImageUrl(posterPath);
  }
}
