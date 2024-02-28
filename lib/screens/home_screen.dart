import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(1, 176, 48, 1),
          Color.fromRGBO(0, 17, 152, 1),
        ],
      )),
      child: CustomPaint(
        painter: SplineDividerPainter(),
        size: Size.infinite,
        child: Row(
          children: [
            Expanded(
              flex: 1, // Takes 75% of the space
              child: Container(), // Empty container just to take up space
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Mangue ',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.blue,
                          fontFamily: 'YourCustomFontForMangue',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'WEB',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.red,
                          fontFamily: 'YourCustomFontForWEB',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 150,
                      ),
                      Container(
                        width: 50,
                      ),
                      Container(
                        color: Colors.red,
                        width: 200,
                        height: 150,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplineDividerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    var path = Path();

    // Start at the middle of the screen
    path.moveTo(size.width / 2, 0);

    // Define some points for the bezier curve
    // These points can be adjusted to create more complex curves
    var firstControlPoint = Offset(size.width * 0.56, size.height * 0.1);
    var firstEndPoint = Offset(size.width * 0.48, size.height * 0.3);
    var secondControlPoint = Offset(size.width * 0.44, size.height * 0.43);
    var secondEndPoint = Offset(size.width * 0.48, size.height * 0.54);
    var thirdControlPoint = Offset(size.width * 0.53, size.height * 0.67);
    var thirdEndPoint = Offset(size.width * 0.45, size.height * 0.77);
    var fourthControlPoint = Offset(size.width * 0.38, size.height * 0.88);
    var fourthEndPoint = Offset(size.width * 0.47, size.height);

    // Draw the bezier curve
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.quadraticBezierTo(fourthControlPoint.dx, fourthControlPoint.dy,
        fourthEndPoint.dx, fourthEndPoint.dy);

    // Draw a line to the bottom right corner and then to the top right corner
    // to complete the path for the right side of the screen
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    // Draw the path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
