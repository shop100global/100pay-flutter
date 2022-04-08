import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:pay_sdk/Utils/colors.dart';

class CryptoDetailsPage extends StatefulWidget {
  const CryptoDetailsPage({Key? key}) : super(key: key);

  @override
  State<CryptoDetailsPage> createState() => _CryptoDetailsPageState();
}

class _CryptoDetailsPageState extends State<CryptoDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(children: [
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text('ETH', style: TextStyle(fontSize: 18)),
            subtitle: Text('0.006161003700084089'),
            leading: CircleAvatar(),
          ),
        ),

        ///Qrcode widget
        Container(
          alignment: Alignment.topLeft,
          child: BarcodeWidget(
            data: '0x5448FE89612D9351e3De9dBbed83B8Cc1426f0db',
            barcode: Barcode.qrCode(),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        const Text(
          'To make a payment, send only BTC on network to the address below. Or scan the QR code above.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
        const Text(
          "\nif you don't have enough BTC, you can make multiple payments with other crypto currencies. Once you send up to 20 USD worth of cryptos, your order will be marked as completed. You can always access all your payments by clicking ony my payments button.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 50),

        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Address', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 25),
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'Amount', border: OutlineInputBorder()),
        ),
        const SizedBox(height: 15),
      ]),
    );
  }
}
