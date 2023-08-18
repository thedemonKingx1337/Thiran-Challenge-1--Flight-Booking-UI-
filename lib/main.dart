import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_001/flightSearch.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

// void main() {
//   runApp(
//     DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MaterialApp(
//               useInheritedMediaQuery: true,
//               home: Home(),
//             )),
//   );
// }

class Home extends StatelessWidget {
  // late SharedPreferences preference;
  // late bool newUserLog;

  // Future<void> checkUserAlreadyLogFn(BuildContext context) async {
  //   preference = await SharedPreferences.getInstance();
  //   newUserLog = preference.getBool("firstLogin") ?? true;
  //   if (!newUserLog) {
  //     Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (context) => FlightSearch()));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // checkUserAlreadyLogFn(context);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1517400508447-f8dd518b86db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                  fit: BoxFit.cover)),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
              child: Text(
                """Find And Book \nA Great Expirence""",
                style: GoogleFonts.darkerGrotesque(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Flying to the moon",
                style: GoogleFonts.darkerGrotesque(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                onPressed: () {
                  // preference.setBool("firstLogin", false);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FlightSearch()));
                },
                child: Text("Get Tickets"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ]),
        )
      ]),
    );
  }
}
