import 'package:flutter/foundation.dart';


class Food {
  const Food({
      @required this.name,
      @required this.foodType,
      @required this.description
  })  : assert(name != null),
        assert(foodType != null),
        assert(description != null);


  final String name;
  final String foodType;
  final String description;

}