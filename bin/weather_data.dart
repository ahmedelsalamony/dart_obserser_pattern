import 'Observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  String _humidity;
  String _pressure;
  String _temp;
  List<Observer> _observers;

  WeatherData() {
    _observers = <Observer>[];
  }

  @override
  void notifiyObservers() {
    for (var observer in _observers) {
      observer.update(_humidity, _temp, _pressure);
    }
  }

  @override
  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void unregisterObserver(Observer observer) {
    _observers.remove(observer);
  }

  void meassurmentChanged() {
    notifiyObservers();
  }

  void setMeassurments(String humidity, String temp, String pressure) {
    _humidity = humidity;
    _temp = temp;
    _pressure = pressure;
    meassurmentChanged();
  }
}
