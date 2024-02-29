import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromRGBO(251, 251, 251, 1),
      child: Row(
        children: [
          Container(
            width: 220,
            height: Size.infinite.height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 19, 150, 1),
                    Color.fromRGBO(90, 106, 213, 1),
                  ],
                )),
            child: Column(
              children: [
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 80,
                  child: Image.asset(
                    'images/navbar_logo.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    width: 188,
                    height: 36,
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Home", // Your text here
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(110, 119, 180, 1)),
                  width: 188,
                  height: 36,
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.show_chart,
                          color: Colors.white,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Live", // Your text here
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrl(
                        Uri.parse(
                            'https://drive.google.com/drive/folders/1Of6QtYG45qOHRD09pXSU_bf4ZBzcHf9y'),
                        webOnlyWindowName: '_blank');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent),
                    width: 188,
                    height: 36,
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.storage,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Backup", // Your text here
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: Size.infinite.height,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          _dataCard(
                            const Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Temperaturas", // Your text here
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto',
                                      color: Color.fromRGBO(130, 130, 130, 1),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 0, 16, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "54 °C", // Your text here
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color:
                                                  Color.fromRGBO(5, 24, 154, 1),
                                            ),
                                          ),
                                          Text(
                                            "Motor", // Your text here
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color: Color.fromRGBO(
                                                  130, 130, 130, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 0, 16, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "102 °C", // Your text here
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color:
                                                  Color.fromRGBO(5, 24, 154, 1),
                                            ),
                                          ),
                                          Text(
                                            "CVT", // Your text here
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color: Color.fromRGBO(
                                                  130, 130, 130, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                            300,
                            140,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          _dataCard(
                            const Center(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Text(
                                    "Bateria", // Your text here
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto',
                                      color: Color.fromRGBO(130, 130, 130, 1),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(40, 0, 16, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "80%", // Your text here
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color:
                                                  Color.fromRGBO(5, 24, 154, 1),
                                            ),
                                          ),
                                          Text(
                                            "SoC", // Your text here
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color: Color.fromRGBO(
                                                  130, 130, 130, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(64, 0, 64, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "11,6 V", // Your text here
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color:
                                                  Color.fromRGBO(5, 24, 154, 1),
                                            ),
                                          ),
                                          Text(
                                            "Tensão", // Your text here
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color: Color.fromRGBO(
                                                  130, 130, 130, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(16, 0, 16, 0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "800 mA", // Your text here
                                            style: TextStyle(
                                              fontSize: 32,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color:
                                                  Color.fromRGBO(5, 24, 154, 1),
                                            ),
                                          ),
                                          Text(
                                            "Corrente", // Your text here
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Roboto',
                                              color: Color.fromRGBO(
                                                  130, 130, 130, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                            520,
                            140,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            "Velocidade e Rotação", // Your text here
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          _dataCard(
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: LineChart(LineChartData(
                                  lineTouchData: const LineTouchData(
                                      touchTooltipData: LineTouchTooltipData(
                                          tooltipBgColor: Colors.white)),
                                  titlesData: const FlTitlesData(
                                    show: true,
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 24,
                                        interval: 1,
                                        getTitlesWidget: bottomTitleWidgets,
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        interval: 1,
                                        reservedSize: 20,
                                        getTitlesWidget: leftTitleWidgets,
                                      ),
                                    ),
                                  ),
                                  borderData: FlBorderData(
                                    show: false,
                                    border: Border.all(color: Colors.grey),
                                  ),
                                  minX: 0,
                                  maxX: 11,
                                  minY: 0,
                                  maxY: 6,
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: const [
                                        FlSpot(0, 3),
                                        FlSpot(2.6, 2),
                                        FlSpot(4.9, 5),
                                        FlSpot(6.8, 3.1),
                                        FlSpot(8, 4),
                                        FlSpot(9.5, 3),
                                        FlSpot(11, 4),
                                      ],
                                      isCurved: true,
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromRGBO(0, 106, 213, 1),
                                          Color.fromRGBO(0, 19, 150, 1),
                                        ],
                                      ),
                                      barWidth: 3,
                                      isStrokeCapRound: true,
                                      dotData: const FlDotData(
                                        show: false,
                                      ),
                                      belowBarData: BarAreaData(
                                        show: false,
                                        gradient: LinearGradient(
                                          colors: const [
                                            Color.fromRGBO(90, 106, 213, 1),
                                            Color.fromRGBO(0, 19, 150, 1),
                                          ]
                                              .map((color) =>
                                                  color.withOpacity(0.3))
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ),
                            410,
                            280,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          _dataCard(
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            410,
                            280,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                        child: Center(
                          child: Text(
                            "Acelerações", // Your text here
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto',
                              color: Color.fromRGBO(130, 130, 130, 1),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          _dataCard(
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            270,
                            200,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          _dataCard(
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            270,
                            200,
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          _dataCard(
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            270,
                            200,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      _dataCard(
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.red,
                          ),
                        ),
                        400,
                        400,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      _dataCard(
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.red,
                          ),
                        ),
                        400,
                        285,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Container _dataCard(Widget child, double width, double height) {
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(154, 170, 207, 0.15),
          blurRadius: 40,
          offset: Offset(0, 16),
        )
      ],
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
    ),
    child: child,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );

  Text text = Text(value.toString(), style: style, textAlign: TextAlign.left);

  return text;
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.bold,
    fontSize: 12,
  );
  Widget text = Text(value.toString(), style: style);

  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}
