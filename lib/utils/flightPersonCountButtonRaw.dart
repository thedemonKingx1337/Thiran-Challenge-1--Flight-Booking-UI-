import 'package:flutter/material.dart';

class CabinButtonRow extends StatefulWidget {
  @override
  State<CabinButtonRow> createState() => _CabinButtonRowState();
}

class _CabinButtonRowState extends State<CabinButtonRow> {
  bool oneSelected = false;
  bool roundSelected = false;
  bool multiSelected = false;
  void oneWayFn() {
    setState(() {
      oneSelected = !oneSelected;
      if (roundSelected) roundSelected = false;
      if (multiSelected) multiSelected = false;
    });
  }

  void roundTripFn() {
    setState(() {
      roundSelected = !roundSelected;
      if (oneSelected) oneSelected = false;
      if (multiSelected) multiSelected = false;
    });
  }

  void multiCityFn() {
    setState(() {
      multiSelected = !multiSelected;
      if (oneSelected) oneSelected = false;
      if (roundSelected) roundSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 15, right: 15),
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 0,
                  backgroundColor:
                      oneSelected ? Colors.green[900] : Colors.grey),
              onPressed: oneWayFn,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Economy",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(20, 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 0,
                  backgroundColor:
                      roundSelected ? Colors.green[900] : Colors.grey),
              onPressed: roundTripFn,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "Business",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  elevation: 0,
                  backgroundColor:
                      multiSelected ? Colors.green[900] : Colors.grey),
              onPressed: multiCityFn,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  "First class",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ],
    );
  }
}
