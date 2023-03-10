import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app_v2/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=3bf0e75c85dc9da39e7eb5c655825988&units=metric');
    var resposne = await http.get(endpoint);
    var body = jsonDecode(resposne.body);
    // print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
