import 'package:flutter/material.dart';


import '../../constants/app_info.dart';
import '../../constants/fav_btn.dart';
import '../product_model.dart';
import 'counter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class VeggieDetailScreen extends StatefulWidget {
  const VeggieDetailScreen({super.key, required this.product, required this.onProductAdd});

  final Product product; 
   final VoidCallback onProductAdd;

  @override
  State<VeggieDetailScreen> createState() => _VeggieDetailScreenState();
}

class _VeggieDetailScreenState extends State<VeggieDetailScreen> {
  String _cartTag = ""; 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding), 
      // child: ElevatedButton(
      //   onPressed:() {

      // widget.onProductAdd(); 
      // setState(() {
      //   _cartTag = '_cartTag';
      // });
      // Navigator.pop(context);
      // }, child: const Text('Add to Cart'), 
      // ),
      
      child: GestureDetector( 
        onTap: () {

        widget.onProductAdd();
        setState(() {
          _cartTag = '_cartTag';
        });
        Navigator.pop(context); 
        },
        child: Container(
          height: 60, width: 250,
          decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(30), 
          ),
          child: const Align(child: Text('Add to Cart', 
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),),
        ),
      ),
      ),
      ),
       
      ),
      backgroundColor: Colors.white, 
      appBar: AppBar(
         actions: const [
        FavBtn(radius: 20),
        SizedBox(width: defaultPadding),
      ],
        title: const Text('Veggies'), centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ), 
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.37, 
            
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                width: double.infinity,
                color: const Color(0xFFEAEAEA),
                child: Hero(
                  tag: widget.product.title + _cartTag, 
                  child: Image.asset(widget.product.image,), 
                  ), 
                  ),
                  const Positioned(
                    bottom: -20, 
                    child: CartCounter(), 
                    ) ,
              ],
            )), 
            const SizedBox(height: defaultPadding *  1.5), 
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.product.title,
                    style: const TextStyle(fontWeight: FontWeight.bold, 
                    fontSize: 20),
                  ),
                ),
                Text( widget.product.price, 
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              widget.product.description,
              style: const TextStyle(
                color: Color(0xFFBDBDBD),
                //height: 1.8, 
                fontSize: 18
              ),
            ),
          ),

          // Nutrition details.
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text('Nutrtition'),
          ), 
          NutritionInfo(),
        ],
      )
    );
  }
}






          class NutritionInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NutritionRing(value: 1, label: "Protein", color: Colors.green),
        NutritionRing(value: 23, label: "Carbs", color: Colors.red),
        NutritionRing(value: 96, label: "Calories", color: Colors.yellow),
      ],
    );
  }
}

class NutritionRing extends StatefulWidget {
  final double value;
  final String label;
  final Color color;

  NutritionRing({required this.value, required this.label, required this.color});

  @override
  _NutritionRingState createState() => _NutritionRingState();
}

class _NutritionRingState extends State<NutritionRing> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: widget.value).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircularPercentIndicator(
          radius: 40.0,
          lineWidth: 8.0,
          percent: _animation.value / 100,
          center: Text(
            "${_animation.value.toStringAsFixed(0)}g",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),
          ),
          progressColor: widget.color,
          backgroundColor: Colors.grey[200]!,
        ),
        SizedBox(height: 4.0),
        Text(
          widget.label,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}