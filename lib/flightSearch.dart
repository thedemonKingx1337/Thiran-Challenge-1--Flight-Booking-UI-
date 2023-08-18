import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_001/utils/flightscreen_buttonbar.dart';
import 'package:flutter_application_001/utils/flightsearch_flightlist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:google_fonts/google_fonts.dart';

import 'utils/flightscreen_sortbyButton.dart';

class FlightSearch extends StatelessWidget {
  const FlightSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              color: Colors.teal[900],
            ),
            Container(
              height: MediaQuery.of(context).size.height * .7,
              color: Colors.grey[300],
            ),
          ]),
          //elements coloum
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 40),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1580477667929-3ef27c684b7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                    ),
                  )
                ],
              ),
              //2nd element switchbar container
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 25, bottom: 25),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 5),
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child:
                                    FittedBox(child: Flightscreen_Buttonbar()),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 20, right: 20, bottom: 5),
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                                child: ListTile(
                                  leading: Image.asset(
                                    height: 30,
                                    "assets/images/1.png",
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    "From",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    "London,NCD",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, left: 20, right: 20, bottom: 5),
                              child: Container(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1.0,
                                  ),
                                ),
                                child: ListTile(
                                  leading: Image.asset(
                                    height: 30,
                                    "assets/images/5.png",
                                    fit: BoxFit.cover,
                                  ),
                                  title: Text(
                                    "From",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 15),
                                  ),
                                  subtitle: Text(
                                    "Barstow,BSW",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 220,
                          top: 122,
                          child: FloatingActionButton(
                            backgroundColor: Colors.orange[300],
                            onPressed: () {},
                            child: Icon(
                              FontAwesomeIcons.exchange,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sort By : ",
                    style: TextStyle(color: Colors.grey[800]),
                  ),
                  SizedBox(width: 5),
                  DropDownSortBy(),
                ],
              ),
              FlightList()
            ],
          )
        ]),
      ),
    );
  }
}
