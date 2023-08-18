import 'package:flutter/material.dart';
import 'package:flutter_application_001/utils/flightseats.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'flightTicket.dart';

class SeatSelect extends StatelessWidget {
  bool tappattap = true;
  @override
  Widget build(BuildContext context) {
    final AppBar appbar_Storage = AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        "Checkout",
        style: GoogleFonts.darkerGrotesque(fontSize: 30, color: Colors.black),
      ),
    );
    return Scaffold(
      appBar: appbar_Storage,
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar_Storage.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  .8,
              decoration: BoxDecoration(color: Colors.grey[300]),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appbar_Storage.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  .2,
              decoration: BoxDecoration(color: Colors.teal[700]),
            ),
          ],
          //above background
        ),
        Padding(
          padding: const EdgeInsets.only(left: 33, top: 20, right: 33),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  margin: EdgeInsets.all(2),
                  padding: EdgeInsets.all(15),
                  child: Column(children: [
                    Text("Canada Airline"),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "IND",
                            style: TextStyle(color: Colors.teal),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 28),
                            child: Text(
                              ".",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.teal),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1),
                            child: Text(
                              "........................   1800KM   .............................",
                              style:
                                  TextStyle(fontSize: 10, color: Colors.teal),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 28),
                            child: Text(
                              ".",
                              style:
                                  TextStyle(fontSize: 50, color: Colors.orange),
                            ),
                          ),
                          Text(
                            "NYC",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Business"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal[400]),
                        ),
                        Text("\$350",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("Business Class"),
                ),
                SizedBox(height: 5),
                //grid view row
                SizedBox(
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlightSeat(),
                      FlightSeat(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("Economy"),
                ),
                SizedBox(
                  height: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlightSeat(),
                      FlightSeat(),
                    ],
                  ),
                ),
                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.circle,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Available",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.circleCheck,
                          color: Colors.orange,
                        ),
                        label: Text(
                          "Booked",
                          style: TextStyle(color: Colors.white),
                        )),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.circleCheck,
                          color: Colors.orange,
                        ),
                        label: Text(
                          "Selected",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.teal[300]),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => FlightTicket()));
                        },
                        child: Text("Proceed")))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
