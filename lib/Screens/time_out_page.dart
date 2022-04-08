import 'package:flutter/material.dart';
import 'package:pay_sdk/Screens/sdk_home.dart';
import 'package:pay_sdk/Utils/colors.dart';

class TimeOutWidget extends StatefulWidget {
  const TimeOutWidget({Key? key}) : super(key: key);

  @override
  State<TimeOutWidget> createState() => _TimeOutWidgetState();
}

class _TimeOutWidgetState extends State<TimeOutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        const Text(
          'TIME OUT : NO Payment Detected',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        const Text(
          "\nWe're constantly monitoring the network and didn't detect a payment. If you have already paid, please contact the merchant at",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        const Text(
          "\n\nYour order code is:\n",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        const Text(
          'TFcy0Uq3REHe6OkG',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            // Navigator.pushReplacement(
            //     context, MaterialPageRoute(builder: (_) => const SdkHome()));
            Navigator.pop(context);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 8,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: blue, borderRadius: BorderRadius.circular(5)),
              child: const Text(
                ' RETRY ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
