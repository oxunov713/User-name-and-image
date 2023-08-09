class Coordinates {
  double? lat;
  double? leng;

  Coordinates({
    required this.lat,
    required this.leng,
  });

  factory Coordinates.fromJson(Map<String, Object?> json) => Coordinates(
        lat: json['lat'] as double?,
        leng: json['leng'] as double?,
      );
}
