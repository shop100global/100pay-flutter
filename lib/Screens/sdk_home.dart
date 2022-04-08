import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:pay_sdk/Provider/page_changer_provider.dart';
import 'package:pay_sdk/Screens/crypto_listing_page.dart';
import 'package:pay_sdk/Screens/listing_details_page.dart';
import 'package:pay_sdk/Screens/time_out_page.dart';
import 'package:pay_sdk/Utils/colors.dart';
import 'package:provider/provider.dart';

class SdkHome extends StatefulWidget {
  const SdkHome({Key? key}) : super(key: key);

  @override
  State<SdkHome> createState() => _SdkHomeState();
}

class _SdkHomeState extends State<SdkHome> {
  final _countDownController = CountDownController();

  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageChangerProvider()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('100pay'),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Consumer<PageChangerProvider>(
                    builder: (context, changer, child) {
                  return Column(
                    children: [
                      ///Top Header with timer
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (changer.page == 'home') {
                                  changer.setPage('payment');
                                } else {
                                  changer.setPage('home');
                                }
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                elevation: 8,
                                child: Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: blue,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    changer.page == 'home'
                                        ? '  MY PAYMENTS   '
                                        : '  BACK TO COINS  ',
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: CircularCountDownTimer(
                                duration: 20,
                                controller: _countDownController,
                                width: 80,
                                height: 80,
                                ringColor: Colors.grey[300]!,
                                ringGradient: null,
                                fillColor: blue,
                                fillGradient: null,
                                backgroundColor: black,
                                backgroundGradient: null,
                                isReverse: true,
                                isReverseAnimation: false,
                                strokeWidth: 10.0,
                                strokeCap: StrokeCap.round,
                                textStyle: TextStyle(
                                  fontSize: 20.0,
                                  color: blue,
                                ),
                                textFormat: CountdownTextFormat.MM_SS,
                                // autoStart: false,
                                onStart: () {
                                  debugPrint('Countdown Started');
                                },
                                onComplete: () {
                                  debugPrint('Countdown Ended');
                                  setState(() {
                                    _isActive = false;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),

                      _isActive == true
                          ? const CryptoListingPage()
                          : const TimeOutWidget(),
                      // const CryptoDetailsPage(),

                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Card(
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
                      ),
                    ],
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
