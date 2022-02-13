import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key? key,@required this.drink}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(title: Text(drink["strDrink"]),
      elevation: 0.0,
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Hero(
                  tag: drink["idDrink"],
                  child: CircleAvatar(
                    radius: 150.0,
                    backgroundImage: NetworkImage(drink["strDrinkThumb"]),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                "ID: ${drink["idDrink"]}",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
              ),
          ],
        ),
      ),
      
    );
  }
}