import 'package:flutter/material.dart';

import 'package:flutter_application_1/model/horoscope.dart';

import 'horoscope_detail.dart';

class HoroscopeItem extends StatelessWidget {
  final Horoscope listedHoroscope;

  const HoroscopeItem({required this.listedHoroscope, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      HoroscopeDetail(chosenHoroscope: listedHoroscope),
                ),
              );
            },
            leading: Image.asset(
              "images/" + listedHoroscope.smallPic,
            ),
            title: Text(listedHoroscope.horoscopeName,
                style: myTextStyle.headlineMedium),
            subtitle: Text(listedHoroscope.horoscopeDate,
                style: myTextStyle.bodySmall),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
