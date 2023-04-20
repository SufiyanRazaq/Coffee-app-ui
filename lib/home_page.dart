import 'package:coffeeapp/coffee_tile.dart';
import 'package:coffeeapp/coffee_type.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List coffeeType = [
    ['cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false],
  ];
  void coffeetypeselected(int index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.person),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 56,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Find your coffee",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context, index) {
                    return coffee_type(
                        coffeetype: coffeeType[index][0],
                        isSelected: coffeeType[index][1],
                        onTap: () {
                          coffeetypeselected(index);
                        });
                  }),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                coffee_tile(
                  coffeeimagepath: 'assets/pic1_min.jpg',
                  coffeename: 'Latte',
                  coffeeprice: '4,20',
                ),
                coffee_tile(
                  coffeeimagepath: 'assets/pic_min.jpg',
                  coffeename: 'cappucino',
                  coffeeprice: '4,18',
                ),
                coffee_tile(
                  coffeeimagepath: 'assets/pic2_min.jpg',
                  coffeename: 'Milk Coffee things',
                  coffeeprice: '4,68',
                ),
              ],
            )),
          ],
        ));
  }
}
