import 'package:flutter/material.dart';
import 'package:sneaker_king/constants/colors.dart';
import 'package:sneaker_king/model/product.dart';
import 'package:sneaker_king/screens/home/home.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      child: buildCircleAvatar(
                        icon: Icons.chevron_left,
                        backgroundColor: Colors.white,
                        iconColor: kBlackColor,
                      ),
                    ),
                    const Text(
                      'Sneaker King',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor,
                      ),
                    ),
                    buildCircleAvatar(
                      icon: Icons.shopping_bag_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    ),
                    Text(
                      product.description,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Sizes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  // children: List.generate(
                  //   product.sizes.length,
                  //   (index) => buildCircleSizes(
                  //     text: product.sizes[index].toString(),
                  //     backgroundColor: kPrimaryColor.withOpacity(0.3),
                  //     textColor: kBlackColor,
                  //   ),
                  // ),
                  children: [
                    for (int size in product.sizes)
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: buildCircleSizes(
                          text: size.toString(),
                          backgroundColor: kPrimaryColor.withOpacity(0.3),
                          textColor: kPrimaryColor,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Colors',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
                const SizedBox(height: 10),

                Row(
                  children: [
                    for (Color color in product.colors)
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: buildCircleColors(
                          icon: Icons.circle,
                          backgroundColor: color.withOpacity(0.3),
                          innerColor: color,
                        ),
                      ),
                  ],
                ),

                const SizedBox(height: 20),
                // Button here
              ],
            ),
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Text(
                '\$${product.price}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: kBlackColor,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCircleSizes({
  required String text,
  required Color backgroundColor,
  required Color textColor,
}) {
  return Center(
    child: CircleAvatar(
      radius: 25,
      backgroundColor: backgroundColor,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    ),
  );
}

Widget buildCircleColors({
  required IconData icon,
  required Color backgroundColor,
  required Color innerColor,
}) {
  return CircleAvatar(
    radius: 25,
    backgroundColor: backgroundColor,
    child: Icon(
      icon,
      color: innerColor,
    ),
  );
}
