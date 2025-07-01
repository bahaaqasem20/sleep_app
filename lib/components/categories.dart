import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleep_app/colors.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    final List<Map<String, dynamic>> categories = [
      {'icon': "assets/svg/icons/All.svg", 'label': 'All'},
      {'icon': "assets/svg/icons/Heart.svg", 'label': 'My'},
      {'icon': "assets/svg/icons/Anxious.svg", 'label': 'Anxious'},
      {'icon': "assets/svg/icons/Sleep.svg", 'label': 'Sleep'},
      {'icon': "assets/svg/icons/Kids.svg", 'label': 'Kids'},
    ];
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? CustomColors.buttons
                        : Color(0xff52577A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        categories[index]['icon'],
                        height: 24,
                        width: 24,
                        color: CustomColors.textColor,
                      ),
                    ],
                  ),
                ),
                Text(
                  categories[index]['label'],
                  style: TextStyle(color: CustomColors.textColor, fontSize: 16),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
