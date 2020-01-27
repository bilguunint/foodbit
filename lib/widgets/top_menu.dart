import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodbit/model/menu.dart';

class HomeHeader extends StatelessWidget {
  final menuItems = <Menu>[
    Menu(
      title: "Asian",
      img: 'assets/icons/asianfood.svg',
    ),
    Menu(
      title: "Breakfast",
      img: 'assets/icons/breakfast.svg',
    ),
    Menu(
      title: "Soup",
      img: 'assets/icons/soup.svg',
    ),
    Menu(
      title: "Fast Food",
      img: 'assets/icons/pizza.svg',
    ),
    Menu(
      title: "Icecream",
      img: 'assets/icons/summer.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.horizontal,
        children: menuItems.map<Widget>((Menu menu) {
          return GestureDetector(
            onTap: () {

            },
            child:  Padding(
            padding: EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
            child: Container(
              width: 90,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey[300], width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      menu.img,
                      colorBlendMode: BlendMode.darken,
                      placeholderBuilder: (BuildContext context) =>
                          new Container(
                              padding: const EdgeInsets.all(30.0),
                              child: const CircularProgressIndicator()),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    menu.title,
                    style: TextStyle(
                        color: Colors.black45,
                        fontSize: 11.0),
                  )
                ],
              ),
            ),
          )
          );
        }).toList());
  }
}