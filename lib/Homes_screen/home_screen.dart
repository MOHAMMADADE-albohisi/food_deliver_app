import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  late PageController _mohammad;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mohammad = PageController(viewportFraction: 0.7, initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _mohammad.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEF2F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView(
          children: [
            const SizedBox(height: 52),
            TextField(
              textInputAction: TextInputAction.search,
              onSubmitted: (String value) => () {},
              style: GoogleFonts.openSans(
                color: const Color(0xFF5E6A6C),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFFFFF),
                constraints: const BoxConstraints(
                  minHeight: 60,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
                hintText: 'Are you hungry? …',
                hintStyle: GoogleFonts.openSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF9AAAAE),
                ),
                hintMaxLines: 1,
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF9AAAAE),
                  size: 35,
                ),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_road_rounded,
                      color: Color(0xFF9AAAAE),
                    )),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              minLines: 1,
              maxLines: 1,
              expands: false,
            ),
            const SizedBox(height: 26),
            Text(
              'Popular categories',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5E6A6C),
              ),
            ),
            const SizedBox(height: 9),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 90),
              child: GridView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 16,
                  crossAxisCount: 1,
                  // mainAxisExtent: 100
                  childAspectRatio: 85 / 85,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: ListView(
                        children: [
                          Image.asset(
                            'images/image8.png',
                          ),
                          Text(
                            'Drinks',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: const Color(0xFF566265),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 29),
            Text(
              'Restaurants nearby',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5E6A6C),
              ),
            ),
            const SizedBox(height: 9),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 158),
              child: GridView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 17.8,
                  crossAxisCount: 1,
                  childAspectRatio: 158 / 158,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28.4),
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            Image.asset('images/image9.png'),
                            const SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                'Eco house',
                                style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF566265),
                                ),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: Text(
                                'Healthy food',
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF9AAAAE),
                                ),
                              ),
                            ),
                          ],
                        )),
                  );
                },
              ),
            ),
            const SizedBox(height: 29),
            Text(
              'Best dishes',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF5E6A6C),
              ),
            ),
            const SizedBox(height: 9),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 200),
              child: GridView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 18.6,
                  mainAxisSpacing: 17.8,
                  childAspectRatio: 150 / 194,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/image13.png', fit: BoxFit.cover),
                        const SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24.1),
                          child: Text(
                            'Mojito',
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xFF566265)),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.question_answer_outlined,
                                color: Color(0xFF9BABAE),
                              ),
                            ),
                            Text(
                              '261',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xFF9AAAAE),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart_outlined,
                                color: Color(0xFF9BABAE),
                              ),
                            ),
                            Text(
                              '1',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xFF9AAAAE),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              '367',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color(0xFF9AAAAE),
                              ),
                            ),
                            SizedBox(width: 21),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 13.2),
          ],
        ),
      ),
    );
  }
}
