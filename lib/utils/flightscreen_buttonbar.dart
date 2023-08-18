import 'package:flutter/material.dart';

class Flightscreen_Buttonbar extends StatefulWidget {
  const Flightscreen_Buttonbar({super.key});

  @override
  State<Flightscreen_Buttonbar> createState() => _Flightscreen_ButtonbarState();
}

class _Flightscreen_ButtonbarState extends State<Flightscreen_Buttonbar> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 0,
                backgroundColor: oneSelected ? Colors.teal[300] : Colors.grey),
            onPressed: oneWayFn,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "  One way  ",
                style: TextStyle(color: Colors.white),
              ),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 0,
                backgroundColor:
                    roundSelected ? Colors.teal[300] : Colors.grey),
            onPressed: roundTripFn,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "Round Trip",
                style: TextStyle(color: Colors.white),
              ),
            )),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 0,
                backgroundColor:
                    multiSelected ? Colors.teal[300] : Colors.grey),
            onPressed: multiCityFn,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                "  Multi City   ",
                style: TextStyle(color: Colors.white),
              ),
            )),
      ],
    );
  }
}
