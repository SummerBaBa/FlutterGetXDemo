import 'ApiService.dart';
import 'MovieModel.dart';
import 'package:get/get.dart';

class MovieController extends GetxController {

  var isLoading = true.obs;
  // ignore: deprecated_member_use
  var movieList = [].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    fetchMovie();
    super.onInit();
  }

  void fetchMovie() async {
    try {
      isLoading(true);
      var movie = await ApiService.fetchMovie();
      if (movie != null) {
        movieList.assignAll(movie);
      }
    } finally {
      isLoading(false);
    }
  }
}