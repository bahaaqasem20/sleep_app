import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleep_app/colors.dart';
import 'package:sleep_app/components/categories.dart';
import 'package:sleep_app/components/mainCard.dart';
import 'package:sleep_app/components/sleepMusicGrid.dart';

class Sleepstories extends StatefulWidget {
  const Sleepstories({super.key});

  @override
  State<Sleepstories> createState() => _SleepstoriesState();
}

class _SleepstoriesState extends State<Sleepstories> {
  final ScrollController _scrollController = ScrollController();
  bool showBackground = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        showBackground = _scrollController.offset < 50;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: CustomColors.background),

          if (showBackground)
            Positioned(
              top: 0,
              left: -45,
              child: SvgPicture.asset('assets/svg/background/Background2.svg'),
            ),

          SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 40.0,
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "Sleep Stories",
                    style: TextStyle(
                      fontSize: 32,
                      color: CustomColors.textColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "Soothing bedtime stories to help you fall\ninto a deep and natural sleep",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: CustomColors.textColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Categories(),
                  const SizedBox(height: 18),
                  const Maincard(),
                  const SleepMusicGrid(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
