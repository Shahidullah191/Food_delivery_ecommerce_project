import 'package:flutter/material.dart';

class LabelPaint extends StatelessWidget {
  const LabelPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Label Paint'),
      ),
      body: Center(
        child: CustomPaint(
         // child: Container(
         //   width: 81,
         //   height: 25,
         //   color: Colors.red,
         // ),
      size: const Size(81, 25),
      painter: RPSCustomPainter(),
    ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.5,size.height*0.3585714);
    path_0.lineTo(size.width*0.5,size.height*0.3571429);
    path_0.lineTo(size.width*0.5,size.height*0.3900000);
    path_0.lineTo(size.width*0.6875000,size.height*0.4271429);
    path_0.lineTo(size.width*0.5000000,size.height*0.4285714);
    path_0.lineTo(size.width*0.5000000,size.height*0.3585714);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);


    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paintStroke0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
