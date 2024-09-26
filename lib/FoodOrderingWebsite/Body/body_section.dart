import 'package:flutter/material.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Body/product_details_item.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Body/send_feedback.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Models/product_model.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Screens/responsive.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        // constraints: const BoxConstraints(maxWidth: 1233),
        color: Colors.white,
        child: Column(
          children: [
            Responsive(
                mobile: ProductsGridView(
                    crossAxisCount: size.width < 690 ? 2 : 3,
                    aspectRatio: size.width < 560 ? 0.85 : 1.1),
                desktop: ProductsGridView(
                    crossAxisCount: size.width < 650 ? 2 : 3,
                    aspectRatio: size.width < 650 ? 0.85 : 1.1)),
            const SizedBox(
              height: 40,
            ),
            const SendFeedBack()
          ],
        ),
      ),
    );
  }
}

class ProductsGridView extends StatelessWidget {
  const ProductsGridView(
      {super.key, this.crossAxisCount = 3, this.aspectRatio = 1.1});
  final int crossAxisCount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, childAspectRatio: aspectRatio),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductDetailItem(press: () {}, product: products[index]);
        });
  }
}
