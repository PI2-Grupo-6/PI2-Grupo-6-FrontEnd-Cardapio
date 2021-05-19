import 'package:flutter/material.dart';
import 'package:food_app/model/food.dart';
import 'package:food_app/model/foods_repository.dart';
import 'package:food_app/utils/constants.dart';
import 'package:food_app/widgets/orderCard.dart';

class OrderConfirmPage extends StatelessWidget {
  final List<Food> foods = FoodsRepository.loadFoods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rapidao")),
      body: Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: SizedBox(
                width: 450,
                child: Text(
                  'Confira seu pedido',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kRapidaoBrown900),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                // scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return OrderCard(index, foods[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
