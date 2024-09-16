import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapp/components/youtubeVdo.dart';

class Recipestab extends StatelessWidget {
  const Recipestab({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Column(children: [
        Material(
          elevation: 0,
          child: TabBar(
            labelColor: const Color.fromRGBO(195, 15, 22, 1),
            unselectedLabelColor: const Color.fromRGBO(49, 49, 49, 1),
            labelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            unselectedLabelStyle: GoogleFonts.dmSans(
              fontWeight: FontWeight.w600,
              fontSize: 16.0,
            ),
            indicatorColor: const Color.fromRGBO(195, 15, 22, 1),
            indicatorWeight: 2,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Color.fromRGBO(195, 15, 22, 1),
                width: 3.0,
              ),
            ),
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
            tabs: const [
              Tab(
                text: 'Order Ingredients',
              ),
              Tab(
                text: 'Ingredients',
              ),
              Tab(text: 'Recipes'),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(children: [
            const Center(child: Text('Tab 1')),
            const Center(child: Text('Tab 2')),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(children: [
                  const Youtubevdo(),
                  const SizedBox(height: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                          const Text('1. '),
                          const SizedBox( width:5), 
                          Expanded(
                            child: Text(
                              'Heat a small skillet over medium heat and add a little cooking oil.',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('2. '),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Once the skillet is hot, add the ground beef or chicken. Break it up with a spatula and cook until it\'s browned and cooked through. Season with salt and pepper to taste.',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('3. '),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'While the meat is cooking, warm the tortillas. You can do this by placing them directly over a gas flame for a few seconds on each side or by heating them in a dry skillet for about 30 seconds on each side.',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('4. '),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Once the meat is cooked, assemble your tacos. Place some meat on each tortilla, then top with shredded lettuce, diced tomatoes, shredded cheese, diced onions, and chopped cilantro.',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('5. '),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'If desired, add a dollop of sour cream and salsa on top.',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('6. '),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              'Serve immediately and enjoy your delicious homemade tacos!',
                              style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
