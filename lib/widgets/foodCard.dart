import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/typeFood.dart';

class FoodCard extends StatefulWidget {
  final int index;
  final Food food;

  FoodCard(this.index, this.food, {Key key}) : super(key: key);
  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  bool addFoodQuant = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            color: kRapidaoPink400,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: kPrimaryColor2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(widget.food.name),
                addFoodQuant
                    ? Row(
                        children: <Widget>[
                          IconButton(
                            icon: const Icon(Icons.add, color: kSecondaryColor),
                            tooltip: 'Add food',
                            onPressed: () {
                              setState(
                                () {
                                  addFoodQuant == false
                                      ? addFoodQuant = true
                                      : addFoodQuant = false;
                                },
                              );
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.arrow_drop_up , color: kSecondaryColor),
                            tooltip: 'Add food',
                            onPressed: () {
                              setState(
                                () {
                                  addFoodQuant == false
                                      ? addFoodQuant = true
                                      : addFoodQuant = false;
                                },
                              );
                            },
                          ),
                        ],
                      )
                    : IconButton(
                        icon: const Icon(Icons.add),
                        tooltip: 'Add food',
                        onPressed: () {
                          setState(
                            () {
                              addFoodQuant == false
                                  ? addFoodQuant = true
                                  : addFoodQuant = false;
                            },
                          );
                        },
                      ),
              ],
            ),
          ),
          addFoodQuant
              ? TypeFood(widget.food)
              : SizedBox(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}


