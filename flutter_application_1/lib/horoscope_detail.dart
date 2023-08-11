import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/horoscope.dart';
import 'package:palette_generator/palette_generator.dart';

class HoroscopeDetail extends StatefulWidget {
  final Horoscope chosenHoroscope;
  const HoroscopeDetail({required this.chosenHoroscope, Key? key})
      : super(key: key);

  @override
  State<HoroscopeDetail> createState() => _HoroscopeDetailState();
}

class _HoroscopeDetailState extends State<HoroscopeDetail> {
  Color appbarColor = Colors.transparent;
  late PaletteGenerator _generator;
  @override
  void initState() {
    super.initState();
    findAppbarColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: appbarColor,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.chosenHoroscope.horoscopeName +
                " " +
                "Burcu Ve Özellikleri"),
            centerTitle: true,
            background: Image.asset(
              'images/' + widget.chosenHoroscope.bigPic,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: SingleChildScrollView(
                child: Text(
              widget.chosenHoroscope.horoscopeDetail,
              style: Theme.of(context).textTheme.bodyLarge,
            )),
          ),
        )
      ]),
    );
  }

  void findAppbarColor() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('images/${widget.chosenHoroscope.bigPic}'));
    appbarColor = _generator.dominantColor!.color;
    setState(() {});
    print(appbarColor);
  }
}
