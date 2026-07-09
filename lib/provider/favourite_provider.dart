import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  final List<int> _selectedItem = [];
  List<int> get setelectItem => _selectedItem;

  void addItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }
  void removeItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
