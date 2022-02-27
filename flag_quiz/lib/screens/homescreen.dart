import 'package:flag_quiz/Utilities/constants.dart';
import 'package:flag_quiz/models/continent.dart';
import 'package:flag_quiz/screens/continentCardWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ContinentModel> xxy = <ContinentModel>[
    ContinentModel(1, "Amerika", "amerikaKita.png", Color(0xffCB2D3E),
        Color(0xffEF473A), 15),
    ContinentModel(
        2, "Avrupa", "avrupa.png", Color(0xff0083B0), Color(0xff00B4DB), 14),
    ContinentModel(
        3, "Asya", "asya.png", Color(0xffF2994A), Color(0xffF2C94C), 13),
    ContinentModel(
        4, "Afrika", "afrika.png", Color(0xff0F2027), Color(0xff2C5364), 18),
    ContinentModel(5, "Avustralya", "avustralyaKita.png", Color(0xff11998E),
        Color(0xff38EF7D), 25),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Hoşgeldiniz.",
                style: kheaderTextStyle,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Kategori Seçiniz.",
                style: ksubHeaderTextStyle,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 1,
                crossAxisSpacing: 10,
                childAspectRatio: 2,
                mainAxisSpacing: 10,
                children: xxy
                    .map((item) => GestureDetector(
                          onTap: () {},
                          child: ContinentCardWidget(
                              color1: item.color1,
                              color2: item.color2,
                              cardChild: Row(
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        item.name,
                                        style: kCardHeaderTextStyle,
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        "En Yüksek Skor: ${item.score}",
                                        style: kCardScoreTextStyle,
                                        textAlign: TextAlign.start,
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Image(
                                      image: AssetImage("assets/${item.image}"))
                                ],
                              )),
                        ))
                    .toList(),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
