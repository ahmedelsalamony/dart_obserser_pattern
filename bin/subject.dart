import 'Observer.dart';

abstract class Subject {
  void registerObserver(Observer observer);
  void unregisterObserver(Observer observer);
  void notifiyObservers();
}
