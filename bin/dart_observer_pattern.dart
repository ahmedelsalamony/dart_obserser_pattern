import 'package:dart_observer_pattern/dart_observer_pattern.dart'
    as dart_observer_pattern;

import 'current_display_conditions.dart';
import 'weather_data.dart';

void main(List<String> arguments) {
  var weatherData = WeatherData();
  var currentDiplayConditions = CurrentDiplayConditions(weatherData);
  weatherData.setMeassurments('1.2', '34', '2.3');
  currentDiplayConditions.display();
  print('Hello world: ${dart_observer_pattern.calculate()}!');
}
