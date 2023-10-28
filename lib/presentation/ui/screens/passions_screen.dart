import 'package:flutter/material.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/widgets/passions_card.dart';

class PassionsScreen extends StatelessWidget {
  PassionsScreen({super.key});

  Map<String, IconData> passionsData = {
    'Photography': Icons.camera_alt_outlined,
    'Shopping': Icons.shopping_bag_outlined,
    'Karaoke': Icons.mic,
    'Yoga': Icons.male,
    'Cooking': Icons.emoji_food_beverage,
    'Tennis': Icons.sports_tennis,
    'Run': Icons.directions_run_outlined,
    'Swimming': Icons.water_outlined,
    'Art': Icons.cookie_outlined,
    'Traveling': Icons.travel_explore_outlined,
    'Extreme': Icons.diamond_outlined,
    'Music': Icons.music_note_outlined,
    'Drink': Icons.no_drinks_outlined,
    'Video games': Icons.gamepad_outlined,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: InkWell(
          onTap: () {},
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(
                color: Colors.grey.shade300,
                width: 1.0,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.red,
              ),
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.red, fontSize: 17),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your interests',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 35),
              ),
              const Text(
                  'Select a few of your interests and let everyone know what you\'re passionate about.'),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                child: SizedBox(
                  height: 800,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3,
                    ),
                    itemCount: passionsData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PassionsCard(
                        passionName: passionsData.keys.elementAt(index),
                        passionIcon: passionsData.values.elementAt(index),
                      );
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  minimumSize: const Size(double.infinity, 56.0),
                ),
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
