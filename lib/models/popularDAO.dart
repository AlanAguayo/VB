class Popular {
  int? page;
  List<Results>? results;
  int? totalPage;
  int? totalResults;
}

class Results {
  int? vote_count;
  String? posterpath;
  String? backdrop_path;
  String? title;
  int? id;
  String? overview;
  String? release_date;

  Results(this.vote_count, this.posterpath, this.backdrop_path, this.title,
      this.id, this.overview, this.release_date);

  /*Result(int noCounts){
      this.voteCount
    }*/

  factory Results.fromMap(Map<String, dynamic> map) {
    return Results(
        map['vote_count'] ?? 0,
        map['posterpath'] ?? "",
        map['backdrop_path'] ??
            "" /* si el valor de la izquierda es nulo, devuelve el de la derecha */,
        map['title'] ?? "",
        map['id'] ?? "",
        map['overview'] ?? "",
        map['release_date'] ?? "");
  }
}
