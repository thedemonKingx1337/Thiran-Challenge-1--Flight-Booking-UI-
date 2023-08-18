import 'package:flutter/material.dart';
import 'package:flutter_application_001/selectseat.dart';
import 'package:flutter_application_001/utils/flightPersonCountButtonRaw.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:intl/intl.dart';

class FlightPersonCount extends StatelessWidget {
  const FlightPersonCount({super.key});

  @override
  Widget build(BuildContext context) {
    final appbar_Storage =
        AppBar(elevation: 0, backgroundColor: Colors.teal[900]);
    return Scaffold(
      appBar: appbar_Storage,
      backgroundColor: Colors.teal[900],
      body: Container(
        height: 800,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                        height: (MediaQuery.of(context).size.height -
                                appbar_Storage.preferredSize.height -
                                MediaQuery.of(context).padding.top) *
                            .3,
                        color: Colors.teal[900]),
                    Container(
                      height: (MediaQuery.of(context).size.height -
                              appbar_Storage.preferredSize.height -
                              MediaQuery.of(context).padding.top) *
                          .7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.grey[350],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 03,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 40),
                        child: Text(
                          "Let's Book Your\nFlight",
                          style: GoogleFonts.darkerGrotesque(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "One Way",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, right: 15),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Round Trip",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //First Containter CHLD DNY Start
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25, top: 25, right: 25, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 30, top: 25, right: 30, bottom: 15),
                                  child: Text(
                                    "Vocattion in Maldives",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30,
                                        top: 25,
                                        right: 30,
                                        bottom: 15),
                                    child: ListTile(
                                      leading: TextButton(
                                          onPressed: () {},
                                          child: Column(
                                            children: [
                                              Text(
                                                "CHILD",
                                                style: TextStyle(
                                                    color: Colors.orange),
                                              ),
                                              Text(
                                                "carriers",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )),
                                      title: Image.asset("assets/images/3.png",
                                          height: 55),
                                      trailing: TextButton(
                                          onPressed: () {},
                                          child: Column(
                                            children: [
                                              Text(
                                                "DNY",
                                                style: TextStyle(
                                                    color: Colors.teal),
                                              ),
                                              Text(
                                                "Downey",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          )),
                                    )),
                              ]),
                        ),
                      ),
                      //first button row start
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 10, right: 25, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              "Departure",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 180),
                            Text(
                              "Adults",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 0, right: 25, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                label: Text(
                                  DateFormat('dd/MM/yyyy')
                                      .format(DateTime.now()),
                                  style: TextStyle(color: Colors.orange),
                                ),
                                icon: Icon(Icons.calendar_today,
                                    color: Colors.orange),
                              ),
                            ),
                            Container(
                                height: 38,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 25),
                                        elevation: 0,
                                        padding: EdgeInsets.all(0),
                                        backgroundColor: Colors.orange,
                                        shape: CircleBorder(),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "-",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.person,
                                      size: 20,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(25, 25),
                                        elevation: 0,
                                        padding: EdgeInsets.all(0),
                                        backgroundColor: Colors.blueGrey,
                                        shape: CircleBorder(),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "+",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      //first button row end

                      //second button row
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 10, right: 25, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              "Children",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 180),
                            Text(
                              "Infants",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 35, top: 0, right: 25, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(25, 25),
                                      elevation: 0,
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: Colors.orange,
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "-",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.peopleGroup,
                                    size: 20,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(25, 25),
                                      elevation: 0,
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: Colors.blueGrey,
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "+",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(25, 25),
                                      elevation: 0,
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: Colors.orange,
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "-",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.baby,
                                    size: 20,
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(25, 25),
                                      elevation: 0,
                                      padding: EdgeInsets.all(0),
                                      backgroundColor: Colors.blueGrey,
                                      shape: CircleBorder(),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "+",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      //second button row end
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 35, top: 10, right: 25, bottom: 10),
                            child: Text(
                              "Cabin",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width,
                              child: CabinButtonRow())
                        ],
                      ),
                      //Cabin Button Row ends
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15)),
                                  backgroundColor: Colors.teal[700]),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => SeatSelect(),
                                ));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                    "              Search Flights            ",
                                    style: TextStyle(color: Colors.white)),
                              )),
                        ),
                      )
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
