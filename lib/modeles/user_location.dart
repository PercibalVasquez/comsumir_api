class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezoneCoordinate timezone;
  
  UserLocation({
    required this.city,  // TODO: Comentario explicando city
    required this.state,  // TODO: Comentario explicando state
    required this.country,  // TODO: Comentario explicando country
    required this.postcode,  // TODO: Comentario explicando postcode
    required this.street,  // TODO: Comentario explicando street
    required this.coordinates,  // TODO: Comentario explicando coordinates
    required this.timezone,  // TODO: Comentario explicando timezone
  });

  factory UserLocation.fromMap(Map<String, dynamic> json) {
    final cordenada = LocationCoordinate.fromMap(json['coordinates']);
    final street = LocationStreet.fromMap(json['street']);
    final timezone = LocationTimezoneCoordinate.fromMap(json['timezone']);
    return UserLocation(
        city: json['city'],  // TODO: Comentario explicando city
        state: json['state'],  // TODO: Comentario explicando state
        country: json['country'],  // TODO: Comentario explicando country
        postcode: json['postcode'].toString(),  // TODO: Comentario explicando postcode
        street: street,  // TODO: Comentario explicando street
        coordinates: cordenada,  // TODO: Comentario explicando coordinates
        timezone: timezone);  // TODO: Comentario explicando timezone
  }
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({
    required this.name,  // TODO: Comentario explicando name
    required this.number,  // TODO: Comentario explicando number
  });
  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      name: json['name'],  // TODO: Comentario explicando name
      number: json['number'],  // TODO: Comentario explicando number
    );
  }
}

class LocationCoordinate {
  final String latitude;
  final String longitude;
  LocationCoordinate({required this.latitude, required this.longitude});
  factory LocationCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationCoordinate(
        latitude: json['latitude'],  // TODO: Comentario explicando latitude
        longitude: json['longitude']);  // TODO: Comentario explicando longitude
  }
}

class LocationTimezoneCoordinate {
  final String offset;
  final String description;
  LocationTimezoneCoordinate({
    required this.offset,  // TODO: Comentario explicando offset
    required this.description,  // TODO: Comentario explicando description
  });
  factory LocationTimezoneCoordinate.fromMap(Map<String, dynamic> json) {
    return LocationTimezoneCoordinate(
        offset: json['offset'],  // TODO: Comentario explicando offset
        description: json['description']);  // TODO: Comentario explicando description
  }
}
