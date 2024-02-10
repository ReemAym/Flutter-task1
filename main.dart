import 'package:flutter/material.dart';

void main() {
  runApp(const BusniessCard());
}

class BusniessCard extends StatelessWidget {
 const BusniessCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Color(0xFFFFFFFF),
              radius: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(999)),
                child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('images/ibm.webp'),
                ),
              ),
            ),
            const Text('IBM Company',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: 'Pacifico',
                )),
            const Text('software company',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                )),
            const Divider(
              thickness: 2,
              color: Colors.grey,
              indent: 40,
              endIndent: 40,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: const ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF2B475E),
                ),
                title: Text('(+02)123456789',
                    style: TextStyle(
                      color: Color(0xFF2B475E),
                      fontSize: 20,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(children: [
                    Icon(
                      Icons.mail,
                      size: 32,
                      color: Color(0xFF2B475E),
                    ),
                    Spacer(flex: 1),
                    Text('ibm@gmail.com',
                        style: TextStyle(
                          color: Color(0xFF2B475E),
                          fontSize: 20,
                        )),
                    Spacer(flex: 3),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
