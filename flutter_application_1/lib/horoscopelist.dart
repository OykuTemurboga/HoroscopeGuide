import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/horoscope.dart';

import 'data/string.dart';
import 'horoscope_item.dart';

class HoroscopeList extends StatelessWidget {
  late List<Horoscope> allHoroscopes;
  HoroscopeList() {
    allHoroscopes = prepareTheDataSource();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burçlar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return HoroscopeItem(listedHoroscope: allHoroscopes[index]);
          },
          itemCount: allHoroscopes.length,
        ),
      ),
    );
  }

  List<Horoscope> prepareTheDataSource() {
    List<Horoscope> temporary = [];
    for (int i = 0; i < 12; i++) {
      var horoscopeName = Strings.HOROSCOPE_NAMES[i];
      var horoscopeDate = Strings.HOROSCOPE_DATE[i];
      var horoscopeDetail = Strings.HOROSCOPE_ATTRIBUTE[i];
      var smallPic = Strings.HOROSCOPE_NAMES[i].toLowerCase() + '${i + 1}.png';
      var bigPic =
          Strings.HOROSCOPE_NAMES[i].toLowerCase() + '_buyuk' + '${i + 1}.png';
      Horoscope addHoroscope = Horoscope(
          horoscopeName, horoscopeDate, horoscopeDetail, smallPic, bigPic);
      temporary.add(addHoroscope);
    }
    return temporary;
  }
}
