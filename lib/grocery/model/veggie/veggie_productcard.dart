import 'package:flutter/material.dart';


import '../../constants/app_info.dart';
import '../product_model.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product, required this.press});


final Product product; 
final VoidCallback press; 
  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding), 
        decoration: const BoxDecoration(
          color: Color(0xFFF7F7F7), 
          borderRadius: BorderRadius.all(Radius.circular(defaultPadding * 1.25), 
          ), 
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(tag: product.title, 
            child: SizedBox(
              width: 150, height: 150,
              child: Image.asset(product.image)),
            ), 
            Text(
product.title,  
style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ), 
            const Text('Veggies', style: TextStyle(color: Colors.grey),), 
            Row(
              children: [
                Text('\$${product.price}', style: const TextStyle(color: primaryColor, fontWeight: FontWeight.bold, fontSize: 16),), 
                const Spacer(), 
             //  FavBtn(), 
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FavBtn extends StatelessWidget {
  const FavBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}