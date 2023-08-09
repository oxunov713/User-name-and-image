import 'cordin.dart';

class Address {
  String? address;
  String? city;
  String? postalCode;
  String? state;
  Coordinates? coordinates;

  Address({
    required this.address,
    required this.city,
    required this.coordinates,
    required this.postalCode,
    required this.state,
  });

  factory Address.fromJson(Map<String, Object?> json) => Address(
        address: json['address'] as String?,
        city: json['city'] as String?,
        coordinates:
            Coordinates.fromJson(json['coordinates'] as Map<String, Object?>),
        postalCode: json['postalCode'] as String?,
        state: json['state'] as String?,
      );
}
