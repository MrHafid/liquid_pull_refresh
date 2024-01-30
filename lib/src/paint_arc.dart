import 'dart:math';
import 'package:flutter/material.dart';

class PaintArc extends CustomPainter {
  /// start angle  ( start * pi / 16 )
  final double start;

  /// sweep angle (  sweep * pi / 16 )
  final double sweep;

  ///  Colors
  final Color color;

  PaintArc(
      {required this.start, required this.sweep, this.color = Colors.cyan});

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;
    paint1.strokeCap = StrokeCap.round;
    // draw arc

    canvas.drawArc(
        Rect.fromCircle(center: const Offset(0, 0), radius: 50),
        start * pi / 16, //radians
        sweep * pi / 16, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
