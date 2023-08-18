import 'package:flutter/material.dart';

class FlightSeat extends StatefulWidget {
  const FlightSeat({super.key});

  @override
  State<FlightSeat> createState() => _FlightSeatState();
}

class _FlightSeatState extends State<FlightSeat> {
  List<bool> tapped = [false, true, true, false, true, false];
  List seats = ["A1", "A2", "B1", "B2", "C1", "C2"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 110,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: seats.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5, bottom: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor:
                        tapped[index] ? Colors.orange[200] : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12))),
                onPressed: () {
                  setState(() {
                    tapped[index] = !tapped[index];
                  });
                },
                child: Text(
                  seats[index],
                  style: TextStyle(color: Colors.black),
                )),
          );
        },
      ),
    );
  }
}
