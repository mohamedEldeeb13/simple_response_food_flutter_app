import 'package:flutter/material.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Header/header.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Header/header_contain.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Screens/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      color: Colors.blue[200],
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            constraints: const BoxConstraints(maxWidth: 1233),
            child: Column(
              children: [
                // header icon and name
                const Header(),
                Responsive.isDesktop(context)
                    ? const HeaderContain()
                    : const MobileHeaderContain(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
