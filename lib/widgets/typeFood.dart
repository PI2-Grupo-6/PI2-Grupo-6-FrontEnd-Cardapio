import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/utils/constants.dart';

class TypeFood extends StatefulWidget {
  Food food;
  
  TypeFood(this.food);
  @override
  _TypeFoodState createState() => _TypeFoodState();
}

class _TypeFoodState extends State<TypeFood> {
  bool checkbox1 = false;

  bool checkbox2 = false;

   bool checkboxp = false;

    bool checkboxm = false;
     bool checkboxg = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: kBorderColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Descrição: " + widget.food.description),
            ),
            widget.food.foodType == "porcao"
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1 Porção"),
                      Checkbox(
                        value: this.checkbox1,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkbox1 = value;
                              widget.food.selected = "1 porção";
                            },
                          );
                        },
                      ),
                      SizedBox(width: 20),
                      Text("2 Porções"),
                      Checkbox(
                        value: this.checkbox2,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkbox2 = value;
                              widget.food.selected = "2 porções";
                            },
                          );
                        },
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("P (100g)"),
                      Checkbox(
                        value: this.checkboxp,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkboxp = value;
                              widget.food.selected = "P";
                            },
                          );
                        },
                      ),
                      SizedBox(width: 20),
                      Text("M (250g)"),
                      Checkbox(
                        value: this.checkboxm,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkboxm = value;
                              widget.food.selected = "M";
                            },
                          );
                        },
                      ),
                      SizedBox(width: 20),
                      Text("G (450g)"),
                      Checkbox(
                        value: this.checkboxg,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkboxg = value;
                              widget.food.selected = "G";
                            },
                          );
                        },
                      ),
                    ],
                  )
          ],
        ));
  }
}
