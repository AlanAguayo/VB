import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:pracitca2/models/popularDAO.dart';

class ApiMovies {
  var url = Uri.parse(
      "https://api.themoviedb.org/3/movie/popular?api_key=fee8a8099c56235ef6fce1d7bae09197");

  Future<List<Results>?> getPopular() async {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      //var movies = convert.JsonDecode(response.body)['results'] as List;
      try {
        //var jsonResponse =
        // convert.jsonDecode(response.body) as Map<String, dynamic>;
        var movies = convert.jsonDecode(response.body)['result'] as List;
        List<Results> listMovies =
            movies.map((movie) => Results.fromMap(movie)).toList();
        return listMovies;
      } catch (e, r) {
        return null;
      }
    } else {
      return null;
    }
  }
}
