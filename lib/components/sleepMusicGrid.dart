import 'package:flutter/material.dart';
import 'package:sleep_app/colors.dart';

class SleepMusicGrid extends StatefulWidget {
  const SleepMusicGrid({super.key});

  @override
  State<SleepMusicGrid> createState() => _SleepMusicGridState();
}

class _SleepMusicGridState extends State<SleepMusicGrid> {
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
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: sleepMusics.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                  padding: const EdgeInsets.symmetric(horizontal: 8),
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
    );
  }
}
