
import 'package:flutter/material.dart';

import '../../constants/app_info.dart';
import '../productitem.dart';



class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({
    super.key,
    required this.productItem,
  });

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(productItem.product!.image),
      ),
      title: Text(
        productItem.product!.title, 
        style: const TextStyle(color: Colors.black, fontSize: 15, 
        fontWeight: FontWeight.w500), 
      ),
      trailing: FittedBox(
        child: Row(
          children: [
            Text('\$${productItem.product!.price}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),), 
           // Price(amount: "20"),
            Text(
              "  x ${productItem.quantity}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}