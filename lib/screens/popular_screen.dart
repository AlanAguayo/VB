import 'package:flutter/material.dart';
import 'package:pracitca2/models/popularDAO.dart';
import 'package:pracitca2/network/api_movies.dart';
import 'package:pracitca2/views/card_popular.dart';

class PopularScreen extends StatefulWidget {
  PopularScreen({Key? key}) : super(key: key);

  @override
  _PopularScreenState createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  late ApiMovies apiMovies;

  @override
  void initState() {
    super.initState();
    apiMovies = ApiMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular Movies :D'),
      ),
      body: FutureBuilder(
        future: apiMovies.getPopular(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Results>?> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Has error in this reques'),
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return _listPopular(snapshot.data);
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }

  Widget _listPopular(List<Results>? movies) {
    return ListView.separated(
      separatorBuilder: (_, __) => Divider(height: 10),
      padding: EdgeInsets.all(5.0),
      itemBuilder: (context, index) {
        Results movie = movies![index];
        return CardPopular(movie: movie);
      },
      itemCount: movies!.length,
    );
  }
}
