

import 'dart:math';

import 'package:flutter/material.dart';

class Peintre extends CustomPainter {
  final double percentage;

  Peintre(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.transparent
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - paint.strokeWidth / 2;

    canvas.drawCircle(center, radius, paint);

    final arcPaint = Paint()
      ..color = const Color.fromARGB(255, 103, 80, 160)
      ..strokeWidth = 10.0
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final sweepAngle = 2 * pi * percentage;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        sweepAngle, false, arcPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
