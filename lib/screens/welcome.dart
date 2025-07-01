import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleep_app/colors.dart';
import 'package:sleep_app/screens/sleepStories.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.background,
      body: Stack(
        children: [
          Container(color: CustomColors.background),
          Positioned(
            top: -30,
            left: -110,
            child: SvgPicture.asset('assets/svg/background/new_group.svg'),
          ),
          Positioned(
            right: 0,
            top: 380,
            child: Image.asset(
              "assets/png/welcome.png",
              width: 360,
              fit: BoxFit.contain,
            ),
          ),

          Column(
            children: [
              const SizedBox(height: 160),
              Center(
                child: Text(
                  "Welcome to Sleep",
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Explore the new king of sleep. It uses sound\nand vesualization to create perfect conditions\nfor refreshing sleep",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: CustomColors.textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

              const SizedBox(height: 500),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: MaterialButton(
                  minWidth: 380,
                  padding: const EdgeInsets.all(16),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Sleepstories(),
                      ),
                    );
                  },
                  textColor: CustomColors.textColor,
                  color: CustomColors.buttons,
                  child: const Text(
                    "Get Started",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
