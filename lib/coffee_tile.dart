import "package:flutter/material.dart";

class coffee_tile extends StatelessWidget {
  final String coffeeimagepath;
  final String coffeename;
  final String coffeeprice;
  const coffee_tile(
      {required this.coffeeimagepath,
      required this.coffeename,
      required this.coffeeprice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        width: 150,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black54),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                coffeeimagepath,
                height: 175,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffeename,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text('With a Almond Milk  '),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("  \$" + coffeeprice),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(6)),
                    child: Icon(Icons.add),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
