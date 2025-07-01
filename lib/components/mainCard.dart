import 'package:flutter/material.dart';
import 'package:sleep_app/colors.dart';

class Maincard extends StatelessWidget {
  const Maincard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 373,
        height: 233,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage("assets/png/backImage.png"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(82, 0, 0, 0),
              BlendMode.colorBurn,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 8),
            Text(
              "The Ocean Moon",
              style: TextStyle(
                fontFamily: 'AlfaSlabOne',
                color: CustomColors.textColor,
                fontWeight: FontWeight.w700,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Non-stop 8-hour mixes of our\nmost popular sleep studio",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: CustomColors.textColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 18),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: MaterialButton(
                color: CustomColors.textColor,
                textColor: CustomColors.background,
                minWidth: 80,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                onPressed: () {},
                child: const Text(
                  "Start",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
