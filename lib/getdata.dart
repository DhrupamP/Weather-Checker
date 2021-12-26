import 'package:weather/weather.dart';
import 'globals.dart' as globals;

void getWeather(String name) async {
  WeatherFactory wf = WeatherFactory("c7f3ca513a67d8c827f86198c25c05c1");
  Weather w = await wf.currentWeatherByCityName(name);
  // cel = w.temperature?.celsius?.toString();
  globals.cel = w.temperature?.celsius;
  globals.fer = w.temperature?.fahrenheit;
  globals.name = w.areaName;
  globals.country = w.country;
}
