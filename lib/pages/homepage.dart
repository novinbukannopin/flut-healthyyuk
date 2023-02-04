import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthyuk/widget/doctor_item.dart';
import 'package:healthyuk/widget/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.teal,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.teal,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.teal,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.teal,
              ),
              label: '')
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 16)),
                    ),
                    const SizedBox(height: 4),
                    Text("Novin Ardian Y.",
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)))
                  ],
                ),
                const CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.teal,
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/hero.png"),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const SizedBox(
                        width: 120,
                        child: Text(
                          "Fill out your medicine right now",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 35,
                          width: 130,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Text("Get Started",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14)),
                          ))
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 64,
              decoration: BoxDecoration(
                  color: Colors.teal, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: 32,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'How we can help you?',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 110,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SpecialistItem(imagePath: "assets/10.png"),
                  SizedBox(
                    width: 12,
                  ),
                  SpecialistItem(imagePath: "assets/11.png"),
                  SizedBox(
                    width: 12,
                  ),
                  SpecialistItem(imagePath: "assets/12.png"),
                  SizedBox(
                    width: 12,
                  ),
                  SpecialistItem(imagePath: "assets/13.png"),
                  SizedBox(
                    width: 12,
                  ),
                  SpecialistItem(imagePath: "assets/14.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Doctor list",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                Text(
                  "see all",
                  style: TextStyle(color: Colors.black54, fontSize: 15),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  DoctorItem(
                      image: "assets/doctor.png",
                      name: "Reisa Kartikasari",
                      specialist: "surgeon"),
                  SizedBox(
                    width: 12,
                  ),
                  DoctorItem(
                      image: "assets/doctor.png",
                      name: "Reisa Kartikasari",
                      specialist: "surgeon"),
                  SizedBox(
                    width: 12,
                  ),
                  DoctorItem(
                      image: "assets/doctor.png",
                      name: "Reisa Kartikasari",
                      specialist: "surgeon"),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
