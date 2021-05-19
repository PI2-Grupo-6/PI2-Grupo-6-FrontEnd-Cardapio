import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class TypeFood extends StatefulWidget {
  String foodDescription;
  String foodType;

  TypeFood(this.foodType, this.foodDescription);
  @override
  _TypeFoodState createState() => _TypeFoodState();
}

class _TypeFoodState extends State<TypeFood> {
  bool checkbox1 = false;

  bool checkbox2 = false;

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
              child: Text("Descrição: " + widget.foodDescription),
            ),
            widget.foodType == "porcao"
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
                        value: this.checkbox1,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkbox1 = value;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 20),
                      Text("M (250g)"),
                      Checkbox(
                        value: this.checkbox2,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkbox2 = value;
                            },
                          );
                        },
                      ),
                      SizedBox(width: 20),
                      Text("G (450g)"),
                      Checkbox(
                        value: this.checkbox2,
                        onChanged: (bool value) {
                          setState(
                            () {
                              checkbox2 = value;
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
