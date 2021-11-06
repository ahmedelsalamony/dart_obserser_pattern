import 'Observer.dart';
import 'display_element.dart';
import 'weather_data.dart';

class CurrentDiplayConditions implements Observer, DisplayElement {
  String _humidity;
  String _temp;
  String _pressure;
  WeatherData weatherData;

  CurrentDiplayConditions(WeatherData weatherData) {
    this.weatherData = weatherData;
    weatherData.registerObserver(this);
  }

  @override
  void display() {
    print(
        'weather condition is humidity is : $_humidity , temprature is : $_temp , pressure is $_pressure');
  }

  @override
  void update(String humidaty, String temp, String pressure) {
    _humidity = humidaty;
    _temp = temp;
    _pressure = pressure;
  }
}
