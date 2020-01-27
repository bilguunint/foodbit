import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:foodbit/model/food.dart';
import 'package:foodbit/style/theme.dart' as Style;

class FoodList extends StatelessWidget {
  final foodItems = <Food>[
    Food(
      title: "Jimmy's Steak",
      price: "34.00",
      img: 'assets/icons/foods/food5.jpg',
      rating: "4.2"
    ),
    Food(
      title: "Butter Steak",
      price: "45.00",
      img: 'assets/icons/foods/food6.jpg',
      rating: "4.2"
    ),
    Food(
      title: "Sushi",
      price: "10.00",
      img: 'assets/icons/foods/food7.jpg',
      rating: "4.7"
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: foodItems.map<Widget>((Food food) {
          return GestureDetector(
            onTap: () {

            },
            child:  Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0),
            child: Container(
              width: 170,
              decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(10), topRight:Radius.circular(10)),
                      image: DecorationImage(
                        image: AssetImage(food.img),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      food.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0, right: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(food.rating, style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.black38
                        ),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(EvaIcons.star, color: Style.Colors.mainColor, size: 8.0,),
                        Icon(EvaIcons.star, color: Style.Colors.mainColor, size: 8.0,),
                        Icon(EvaIcons.star, color: Style.Colors.mainColor, size: 8.0,),
                        Icon(EvaIcons.star, color: Style.Colors.mainColor, size: 8.0,),
                        Icon(EvaIcons.star, color: Colors.black38, size: 8.0,),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text("(200)", style: TextStyle(
                          fontSize: 9.0,
                          color: Colors.black38
                        ),),
                      ],
                    ),
                    Text( "\$" + food.price, style: TextStyle(
                      fontSize: 10.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                    ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
          );
        }).toList());
  }
}