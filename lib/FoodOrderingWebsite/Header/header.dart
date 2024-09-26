import 'package:flutter/material.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Header/header_web_menu.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Screens/responsive.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu))),
        Image.asset(
          "assets/Images/logo.png",
          height: 100,
          width: 100,
        ),
        const Text(
          "PizzaHub",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.purple),
        ),
        const Spacer(),
        if (Responsive.isDesktop(context)) const HeaderWebMenu(),
        const Spacer(),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              elevation: 17,
            ),
            onPressed: () {},
            child: const Text(
              "Join",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))
      ],
    );
  }
}
