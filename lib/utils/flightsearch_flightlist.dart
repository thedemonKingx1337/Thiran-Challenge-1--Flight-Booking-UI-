import 'package:flutter/material.dart';
import 'package:flutter_application_001/flightPersonCount.dart';
import 'package:flutter_application_001/storage/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlightList extends StatelessWidget {
  final iterated_details =
      flightDetails.map((iteratedFlightData) => iteratedFlightData);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: iterated_details.length,
      itemBuilder: (context, index) {
        return Container(
          height: 340,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35),
          ),
          margin: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 15),
          child: Stack(children: [
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 15),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              iterated_details.elementAt(index)["image"]))),
                ),
              ],
            ),
            Positioned(
              top: 25,
              left: 25,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black87),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 12, bottom: 12),
                  child: Text(
                    iterated_details.elementAt(index)["price"],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 30,
              child: Text(
                iterated_details.elementAt(index)["name"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
                top: 280,
                left: 200,
                child: TextButton.icon(
                  label: Text(
                    "Book Now",
                    style: TextStyle(color: Colors.orange),
                  ),
                  icon: Icon(
                    FontAwesomeIcons.arrowRight,
                    color: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FlightPersonCount(),
                    ));
                  },
                )),
          ]),
        );
      },
    ));
  }
}
