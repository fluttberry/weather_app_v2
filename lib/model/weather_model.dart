// ignore_for_file: non_constant_identifier_names

class Weather {
  String? cityName;
  double? temp;
  num? wind;
  int? humidity;

  double? feels_like;
  int? pressure;

  Weather(
      {this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure});

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temp = json['main']['temp'];
    wind = json['wind']['speed'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity0'];
    feels_like = json['main']['feels_like'];
  }
}
