import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'main.dart';

class FlightTicket extends StatelessWidget {
  const FlightTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  color: Colors.teal[900],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .7,
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
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.height * 1,
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 1,
                  width: MediaQuery.of(context).size.height * 1,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 70),
                          child: Center(
                            child: Text(
                              "Board Pass",
                              style: GoogleFonts.darkerGrotesque(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                          )),
                      Container(
                        height: 600,
                        width: 800,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/6.png"))),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child:
                                Image.asset(height: 120, "assets/images/1.png"),
                          ),
                          Text("Amarican Airline Flight MLI-18"),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 65, top: 25, right: 65, bottom: 15),
                              child: SizedBox(
                                width: 300,
                                child: ListTile(
                                  leading: TextButton(
                                      onPressed: () {},
                                      child: Column(
                                        children: [
                                          Text(
                                            "CHILD",
                                            style:
                                                TextStyle(color: Colors.orange),
                                          ),
                                          Text(
                                            "carriers",
                                            style:
                                                TextStyle(color: Colors.grey),
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
                                            style:
                                                TextStyle(color: Colors.teal),
                                          ),
                                          Text(
                                            "Downey",
                                            style:
                                                TextStyle(color: Colors.grey),
                                          )
                                        ],
                                      )),
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.calendar_month,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Time",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          "10.00 - 12.00",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ]),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.black)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.history_rounded,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Date",
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          "June 30 2022",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ]),
                                ),
                              )
                            ],
                          ),
                        ]),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.teal[400]),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Home(),
                            ));
                          },
                          child:
                              Text("            Download Ticket             "))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
