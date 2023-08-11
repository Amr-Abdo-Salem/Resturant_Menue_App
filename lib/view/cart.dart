// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import '../model/item.dart';

class Cart extends ChangeNotifier {
  final List<Items> _items = [];
  double _price = 0.0;

  void add(Items item) {
    _items.add(item);
    _price += item.price!;
    notifyListeners();
  }

  void remove(Items item) {
    _items.remove(item);
    _price -= item.price!;
    notifyListeners();
  }

  int get count {
    return _items.length;
  }

  double get totalprice {
    return _price;
  }

  List<Items> get basketitems {
    return _items;
  }
}
