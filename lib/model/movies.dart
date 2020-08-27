class Movies {
  String index;
  String category;
  String name;
  String image;
  String rating;
  String duration;


  Movies(
    this.index,
    this.category,
    this.name,
    this.image,
    this.rating,
    this.duration,

  );

  Movies.fromJson(Map<String, dynamic> json) {
    index = json["index"].toString();
    category = json['category'];
    name = json['name'];
    image = json['image'];
    rating = json['rating'].toString();
    duration = json['duration'];


  }
}


