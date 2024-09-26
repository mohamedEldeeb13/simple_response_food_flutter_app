import 'package:flutter/material.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Body/body_section.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Header/header_section.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Header/my_drawer.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/footer/footer_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MyDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            /// header
            HeaderSection(),

            /// body
            BodySection(),

            /// footer
            FooterSection()
          ],
        ),
      )),
    );
  }
}
