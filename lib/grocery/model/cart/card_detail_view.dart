
import 'package:flutter/material.dart';


import '../../constants/app_info.dart';
import '../../controllers/veggie_controller.dart';
import 'cart_detail_view_card.dart';


class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key, required this.controller});

  final VeggieController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart", style: Theme.of(context).textTheme.headlineSmall),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Next - \$30"),
            ),
          )
        ],
      ),
    );
  }
}