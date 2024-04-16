import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> images = [
    'https://via.placeholder.com/500',
    'https://via.placeholder.com/500',
    'https://via.placeholder.com/500',
    'https://via.placeholder.com/500',
    'https://via.placeholder.com/500',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(251, 247, 248, 1),
            image: DecorationImage(
              image: AssetImage('assets/images/verification_illustration.png'),
              alignment: Alignment.topRight,
            ),
          ),
          // padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //spacing
              const SizedBox(height: 120),

              //Heading and cart button
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 180,
                      child: Text(
                        'Find your favorite plants',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            blurRadius: 16,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Color.fromRGBO(62, 102, 24, 1),
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),

              //spacing
              const SizedBox(height: 30),

              //horizontal Cards Carousel
              CarouselSlider(
                options: CarouselOptions(
                  height: 110,
                  autoPlay: true,
                  aspectRatio: 16 / 10,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.90,
                ),
                items: images.map((item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 7.5),
                          height: 110,
                          width: 320,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromRGBO(204, 231, 185, 1),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "30% OFF",
                                    style: GoogleFonts.poppins(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "02-23 April",
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                              const SizedBox(width: 35),
                              Image.asset('assets/images/plant_1.png'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              //spacing
              const SizedBox(height: 30),

              //indoor slider with cards
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //heading
                    SizedBox(
                      child: Text(
                        'Indoor',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    //spacing
                    const SizedBox(height: 10),

                    //card
                    Container(
                      width: 141,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 18,
                            offset: Offset(0, 7),
                            color: Color.fromRGBO(0, 0, 0, 0.06),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/main_plant.png',
                            height: 112,
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: 110,
                            child: Text(
                              'Snake Plant',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$350",
                                style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(62, 102, 24, 1),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(237, 238, 235, 1),
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Icon(
                                  Icons.shopping_bag_outlined,
                                  size: 22,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    //card end
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
