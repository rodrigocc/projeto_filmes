import 'package:get_it/get_it.dart';
import 'package:projeto_novo/data/fetch_image.dart';
import 'package:projeto_novo/data/fetch_movie_usecase.dart';
import 'package:projeto_novo/infra/dio_client.dart';
import 'package:projeto_novo/infra/http_service_interface.dart';
import 'package:projeto_novo/presenter/controller/home_controller.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(
    () => HomeController(imageUseCase: getIt(), movieUseCase: getIt()),
  );

  getIt.registerLazySingleton(() => FetchMovieUseCase(client: getIt()));
  getIt.registerSingleton<FetchPosterPath>(FetchPosterPath());
  getIt.registerLazySingleton<IHttpService>(() => DioClient());
}
