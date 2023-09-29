import 'package:flutter/material.dart';
import 'package:sneaker_king/constants/colors.dart';
import 'package:sneaker_king/constants/images.dart';
import 'package:sneaker_king/screens/home/home.dart';
import 'package:sneaker_king/screens/splash/circle.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              buildColoredCircle(isLeft: true),
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        top: 1.0,
                      ),
                      child: CircleAvatar(
                        radius: 142,
                        backgroundColor: kPrimaryColor,
                      ),
                    ),
                    Positioned(
                      top: 1,
                      left: 0,
                      child: Image.asset(
                        splashImage,
                        height: 320,
                        width: 310,
                        repeat: ImageRepeat.noRepeat,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: buildColoredCircle(isLeft: false),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Sneaker King'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: kBlackColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Get moving with the latest Sneakers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: kBlackColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(
                color: kPrimaryColor,
                thickness: 4,
                indent: 150,
                endIndent: 150,
              ),
              const Spacer(),
              Center(
                child: ElevatedButton(
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
