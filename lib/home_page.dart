import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test 12"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image.asset("assets/images/drapeau.jpg"),
            const Text(
              "Gestion de journée",
              style: TextStyle(
                fontSize: 42,
              ),
            ),
            const Text("Semaine 1 par 1.",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Padding(padding: EdgeInsets.all(10)),
            ElevatedButton(onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => EventPage()
                  )
              );
            },
              child: Text("Test"),)
          ],
        ),
      ),
    );
  }
}