import 'package:flutter/material.dart';
import 'package:food_app/utils/constants.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: kPrimaryColor,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Image(
                  image: AssetImage('assets/images/LogoAmarela1.png'),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Center(
                  child: Text(
                    'Toque para começar',
                    style: Theme.of(context).textTheme.headline3.copyWith(color: kSecondaryColor),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(context, '/menu');
          }),
    );
  }
}
