import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:simple_food_response_flutter_app/FoodOrderingWebsite/Models/product_model.dart';

class ProductDetailItem extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ProductDetailItem(
      {super.key, required this.press, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              product.title,
              maxLines: 1,
              minFontSize: 14,
              style: const TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
