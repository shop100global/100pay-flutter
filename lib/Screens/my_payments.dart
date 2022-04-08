import 'package:flutter/material.dart';
import 'package:pay_sdk/Screens/sdk_home.dart';
import 'package:pay_sdk/Utils/colors.dart';

class MyPayments extends StatefulWidget {
  const MyPayments({Key? key}) : super(key: key);

  @override
  State<MyPayments> createState() => _MyPaymentsState();
}

class _MyPaymentsState extends State<MyPayments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        const Text(
          'My Payments',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ]),
    );
  }
}
