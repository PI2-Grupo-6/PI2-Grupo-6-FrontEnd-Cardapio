import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/typeFood.dart';

class OrderCard extends StatefulWidget {
  final int index;
  final Food food;

  OrderCard(this.index, this.food, {Key key}) : super(key: key);
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool addFoodQuant = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text( widget.food.selected)
      
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}
