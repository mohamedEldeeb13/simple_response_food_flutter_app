import 'package:flutter/material.dart';

class HeaderWebMenu extends StatelessWidget {
  const HeaderWebMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        webMenuItem(itemName: "Home"),
        webMenuItem(itemName: "Favorite"),
        webMenuItem(itemName: "About"),
        webMenuItem(itemName: "Preview"),
      ],
    );
  }

  Padding webMenuItem({required String itemName}) => Padding(
        padding: const EdgeInsets.only(right: 20),
        child: InkWell(
            child: Text(
          itemName,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
      );
}
