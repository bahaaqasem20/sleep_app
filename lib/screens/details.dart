import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sleep_app/colors.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final List<Map<String, dynamic>> sleepMusics = [
    {
      'image': 'assets/png/1.png',
      'title': "Night Island",
      'desc': '45 MIN • SLEEP MUSIC',
    },
    {
      'image': 'assets/png/2.png',
      'title': "Reduce Stress",
      'desc': '45 MIN • SLEEP MUSIC',
    },
    {
      'image': 'assets/png/3.png',
      'title': "Calm Night",
      'desc': '45 MIN • SLEEP MUSIC',
    },
    {
      'image': 'assets/png/1.png',
      'title': "Relaxing Sleep",
      'desc': '45 MIN • SLEEP MUSIC',
    },
    {
      'image': 'assets/png/2.png',
      'title': "refreshing night",
      'desc': '45 MIN • SLEEP MUSIC',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background color
          Container(color: CustomColors.background),

          /// Background image
          Positioned(
            top: 0,
            child: Image.asset(
              "assets/png/1.png",
              width: MediaQuery.of(context).size.width,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),

          /// Top buttons
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: CustomColors.textColor,
                  child: SvgPicture.asset(
                    "assets/svg/icons/BackButton.svg",
                    color: CustomColors.background,
                    width: 26,
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: CustomColors.iconColors,
                      child: SvgPicture.asset(
                        "assets/svg/icons/Heart.svg",
                        color: CustomColors.textColor,
                        width: 26,
                      ),
                    ),
                    SizedBox(width: 10),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: CustomColors.iconColors,
                      child: SvgPicture.asset(
                        "assets/svg/icons/download.svg",
                        color: CustomColors.textColor,
                        width: 26,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Main scrollable content
          Positioned.fill(
            top: 320,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Night Island",
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "45 MIN · SLEEP MUSIC",
                      style: TextStyle(
                        color: CustomColors.textColor.withOpacity(0.8),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 14),
                    Text(
                      "Ease the mind into a restful night’s sleep with\nthese deep, ambient tones.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/icons/Heart.svg",
                              width: 20,
                              height: 20,
                              color: CustomColors.textColor,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "24,234 Favorites",
                              style: TextStyle(
                                color: CustomColors.textColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/svg/icons/MusicIcon.svg",
                              width: 20,
                              height: 20,
                              color: CustomColors.textColor,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "34,234 Listening",
                              style: TextStyle(
                                color: CustomColors.textColor,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: SvgPicture.asset("assets/svg/icons/strok.svg"),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Related",
                      style: TextStyle(
                        color: CustomColors.textColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: sleepMusics.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 3 / 3.6,
                            ),
                        itemBuilder: (context, index) {
                          final item = sleepMusics[index];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Image.asset(
                                    item['image'],
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  child: Text(
                                    item['title'],
                                    style: const TextStyle(
                                      color: CustomColors.textColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                                  child: Text(
                                    item['desc'],
                                    style: const TextStyle(
                                      color: CustomColors.textColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
