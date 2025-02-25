class Product {
  final String title; 
  final String image;
  final String price; 
  final String description; 

  Product({required this.price, required this.description, required this.title, required this.image}); 
}

// ignore: non_constant_identifier_names
List<Product> veggie_products = [
  Product(
    title: 'Cabbage', 
    image: 'assets/products/veggie/cabbage.png', 
  description: 'Round, tightly packed head of leaves. Available in green, red, or savoy varieties. Crisp texture with a slightly peppery flavor when raw, becoming sweeter when cooked.' ,
  price: '100/head', 
  ),


  Product(title: 'Broccoli', image: 'assets/products/veggie/broccoli.png', 
  price: '2.49/lb', 
  description: 'Tree-like structure with a thick, edible stem and green florets. Has a grassy, slightly bitter taste when raw, becoming milder when cooked'),


  Product(title: 'Carrot', image: 'assets/products/veggie/carrot.png', 
  price: '2.49/lb',
  description: 'Round, tightly packed head of leaves. Available in green, red, or savoy varieties. Crisp texture with a slightly peppery flavor when raw, becoming sweeter when cooked.'),

  Product(title: 'Potato', image: 'assets/products/veggie/potato.png', 
  price: '2.49/lb',
  description: 'Round, tightly packed head of leaves. Available in green, red, or savoy varieties. Crisp texture with a slightly peppery flavor when raw, becoming sweeter when cooked.'),


  Product(title: 'Onion', image: 'assets/products/veggie/onion.png', 
  price: '2.49/lb',
  description: 'Layered bulb with papery outer skin. Available in yellow, red, and white varieties. Strong, pungent flavor that sweetens when cooked.'),


  Product(title: 'Tomato', image: 'assets/products/veggie/tomato.png', 
  price: '2.49/lb',
  description: ' Juicy, round fruit with thin skin. Ranges from small cherry tomatoes to large beefsteak varieties. Slightly sweet, acidic flavor.'),

  Product(title: 'Spinach', image: 'assets/products/veggie/spinach.png',
  price: '2.99/bunch',
  description: ' Dark green, broad leaves with a tender texture. Mild, slightly sweet flavor when young, becoming more bitter as it matures'
  ),

  Product(title: 'Cauliflower', image: 'assets/products/veggie/cauliflower.png', 
  price: '2.79/head', 
  description: 'Dense clusters of white florets surrounded by green leaves. Mild, slightly nutty flavor with a firm, crumbly texture.'),


  Product(title: 'Cucumber', image: 'assets/products/veggie/cucumber.png', 
  price: '2.49/lb',
  description: ' Long, cylindrical fruit with green skin and pale flesh. High water content gives it a cool, crisp texture. Mild, refreshing flavor.'), 
]; 