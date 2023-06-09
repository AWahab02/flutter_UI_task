import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task/Account_Setup/create_PIN.dart';
import 'package:task/Account_Setup/fingerprint.dart';
import 'package:task/color_constants.dart';
import 'package:task/final_booking/booking_page1.dart';
import 'package:task/icon_constants.dart';
import 'package:task/widgets/account_create_country.dart';
import 'package:task/widgets/account_create_field.dart';
import 'package:task/widgets/account_create_field_icon.dart';

class cleaning_booking extends StatefulWidget {
  const cleaning_booking({super.key});

  @override
  State<cleaning_booking> createState() => _cleaning_bookingState();
}

class _cleaning_bookingState extends State<cleaning_booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg_color,
        title: Text(
          "House Cleaning",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 24, right: 24),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Enter the number of items to be cleaned",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              cleaning_booking_tile(title: "Living Room"),
              cleaning_booking_tile(title: "Terrace"),
              cleaning_booking_tile(title: "Bedroom"),
              cleaning_booking_tile(title: "Bathroom"),
              cleaning_booking_tile(title: "Kitchen"),
              cleaning_booking_tile(title: "Dining Room"),
              cleaning_booking_tile(title: "Garage"),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => booking_1())),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: purple_color),
                  height: 58,
                  width: 380,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cleaning_booking_tile extends StatefulWidget {
  final String title;
  const cleaning_booking_tile({
    super.key,
    required this.title,
  });

  @override
  State<cleaning_booking_tile> createState() => _cleaning_booking_tileState();
}

class _cleaning_booking_tileState extends State<cleaning_booking_tile> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          color: textfield_color, borderRadius: BorderRadius.circular(20)),
      height: 72,
      width: 360,
      child: Row(
        children: [
          Container(
            width: 180,
            padding: EdgeInsets.only(left: 24),
            child: Text(
              widget.title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                if (num > 0) num--;
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.minimize,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                shape: CircleBorder(),
              ),
            ),
          ),
          Container(
            width: 20,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              num.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 10),
            ),
          ),
          Container(
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                if (num < 10) num++;
                setState(() {});
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
                shape: CircleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
