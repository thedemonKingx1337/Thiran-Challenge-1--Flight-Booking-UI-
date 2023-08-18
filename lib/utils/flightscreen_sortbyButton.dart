import 'package:flutter/material.dart';

class DropDownSortBy extends StatefulWidget {
  @override
  State<DropDownSortBy> createState() => _DropDownSortByState();
}

class _DropDownSortByState extends State<DropDownSortBy> {
  String selectedOption = 'Highest price';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: DropdownButton(
          underline: Container(),
          value: selectedOption,
          items: [
            DropdownMenuItem(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Highest price"),
                ),
                value: 'Highest price'),
            DropdownMenuItem(
                child: Text("Highest rating"), value: 'Highest rating'),
            DropdownMenuItem(
                child: Text("Lowest price"), value: 'Lowest price'),
          ],
          onChanged: (value) {
            setState(() {
              selectedOption = value.toString();
            });
          },
        ),
      ),
    );
  }
}
