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
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            250,
                            140,
                          ),
                          const SizedBox(
                            width: 20,
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
                            140,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          _dataCard(
                            Center(
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
                              ),
                            ),
                            140,
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
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.red,
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
