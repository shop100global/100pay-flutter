import 'package:flutter/material.dart';

class CryptoListingPage extends StatefulWidget {
  const CryptoListingPage({Key? key}) : super(key: key);

  @override
  State<CryptoListingPage> createState() => _CryptoListingPageState();
}

class _CryptoListingPageState extends State<CryptoListingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ///Search filed
        TextFormField(
          decoration: const InputDecoration(
              labelText: 'searchcoins. ex: BTC or bitcoin'),
        ),
        const SizedBox(height: 15),

        ///listings
        ...List.generate(1, (index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            child:  ListTile(
              onTap: () {
                ///
              },
              contentPadding: EdgeInsets.zero,
              title: Text('Bitcoin', style: TextStyle(fontSize: 18)),
              trailing: Icon(Icons.arrow_forward_ios, size: 14),
              leading: CircleAvatar(),
            ),
          );
        }),
        ...List.generate(2, (index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: ExpansionTile(
                tilePadding: EdgeInsets.zero,
                leading: CircleAvatar(),
                title: Text(
                  'Tether Usdt',
                  style: TextStyle(fontSize: 18),
                ),
                children: List.generate(3, (index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const ListTile(
                      contentPadding: EdgeInsets.only(left: 40),
                      title: Text('Algorand network',
                          style: TextStyle(fontSize: 18)),
                      leading: CircleAvatar(),
                    ),
                  );
                })),
          );
        })
      ],
    ));
  }
}
