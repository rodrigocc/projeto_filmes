import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:projeto_novo/domain/usecases/fetch_image.dart';

class FetchPosterPath implements FetchImageUseCase {
  @override
  String fetchImageUrl(String posterPath) {
    String apiPath = dotenv.get('IMAGE_URL');
    return apiPath + posterPath;
  }
}
