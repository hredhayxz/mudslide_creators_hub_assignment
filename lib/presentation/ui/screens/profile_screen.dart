import 'package:flutter/material.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/widgets/interest_card.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  List<String> interestData = [
    'Travelling',
    'Books',
    'Music',
    'Dancing',
    'Modeling'
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: 1360,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/photo_main.png',
                  width: screenSize.width,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 350,
                  child: Container(
                    width: screenSize.width,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.95),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jessica Parker, 23',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontSize: 30),
                                  ),
                                  const Text(
                                    'Professional model',
                                  ),
                                ],
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10.0)),
                                    border: Border.all(
                                      color: Colors.grey.shade300,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.send_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Location',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontSize: 22),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade50,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Colors.red,
                                            ),
                                            Text('1 km')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Professional model',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: 22),
                              ),
                              const Text(
                                'My name is Jessica Parker and I enjoyed meeting new people and finding ways to help them have an uplifting. I enjoyed reading..',
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Text(
                                  'Read more',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Interests',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontSize: 22),
                              ),
                              SizedBox(
                                height: 100,
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 2.5,
                                  ),
                                  itemCount: interestData.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InterestCard(
                                      interest: interestData[index],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Gallery',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(fontSize: 22),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () {},
                                    child: const Text(
                                      'See all',
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 500,
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    //childAspectRatio: 2.5,
                                  ),
                                  itemCount: 10,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.asset(
                                        'assets/images/photo_main.png',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 307.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.cancel_outlined,
                            color: Colors.amber,
                            size: 35.0, // Adjust the size as needed
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MainBottomNavScreen(),
                          ));
                        },
                        child: Container(
                          width: 85.0,
                          height: 85.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: const Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.star,
                            color: Colors.deepPurple,
                            size: 35.0,
                          ),
                        ),
                      ),
                    ],
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
