import 'package:flutter/material.dart';
import 'package:sneaker_king/constants/colors.dart';
import 'package:sneaker_king/constants/data.dart';
import 'package:sneaker_king/screens/home/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
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
                    buildCircleAvatar(
                      icon: Icons.widgets_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
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
                Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 18,
                    color: kBlackColor.withOpacity(0.5),
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Find your best ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor,
                    ),
                    children: [
                      TextSpan(
                        text: 'Sneakers!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                // Search bar
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: kBlackColor.withOpacity(0.5),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                // Categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCircleAvatar(
                      icon: Icons.sports_basketball_outlined,
                      backgroundColor: kPrimaryColor,
                      iconColor: Colors.white,
                    ),
                    buildCircleAvatar(
                      icon: Icons.sports_football_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
                    ),
                    buildCircleAvatar(
                      icon: Icons.sports_volleyball_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
                    ),
                    buildCircleAvatar(
                      icon: Icons.sports_tennis_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
                    ),
                    buildCircleAvatar(
                      icon: Icons.sports_baseball_outlined,
                      backgroundColor: Colors.white,
                      iconColor: kBlackColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Row(
                  children: [
                    const Text(
                      "Best Offers",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: kBlackColor,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                // Products
                SizedBox(
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: products[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 15),
                          height: 260,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${products[index].rating}',
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '(${products[index].ratingCount})',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: kBlackColor.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      products[index].description,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: kBlackColor.withOpacity(0.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      products[index].image,
                                    ),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  products[index].name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: kBlackColor,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$${products[index].price}',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: kBlackColor,
                                      ),
                                    ),
                                    const Spacer(),
                                    Icon(
                                      Icons.favorite,
                                      color: products[index].isFavorite
                                          ? kPrimaryColor
                                          : kBlackColor.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildCircleAvatar({
  required IconData icon,
  required Color backgroundColor,
  required Color iconColor,
}) {
  return CircleAvatar(
    radius: 25,
    backgroundColor: backgroundColor,
    child: Icon(
      icon,
      color: iconColor,
    ),
  );
}
