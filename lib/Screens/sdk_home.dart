import 'package:flutter/material.dart';
import 'package:pay_sdk/Utils/colors.dart';

class SdkHome extends StatefulWidget {
  const SdkHome({Key? key}) : super(key: key);

  @override
  State<SdkHome> createState() => _SdkHomeState();
}

class _SdkHomeState extends State<SdkHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('100pay'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  ///Top Header with timer
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          elevation: 8,
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Text(
                              '  MY PAYMENTS   ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 40,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    child: Column(children: [
                      const Text(
                        'TIME OUT : NO Payment Detected',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
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
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        elevation: 8,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: blue,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            ' RETRY ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        elevation: 8,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(14),
                          decoration: BoxDecoration(
                              color: grey,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.clear, color: Colors.black),
                              Text(
                                ' CANCEL PAYMENT ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
