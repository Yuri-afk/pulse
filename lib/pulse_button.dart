import 'package:flutter/material.dart';

class PulseButton extends StatelessWidget {
  final double temperatura;

  const PulseButton(this.temperatura, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red),
          boxShadow: const [
            BoxShadow(
              color: Colors.red,
              blurRadius: 20,
              spreadRadius: 30,
            )
          ]),
      child: Center(
          child: Text(
        temperatura.toStringAsPrecision(2),
        style:
            Theme.of(context).textTheme.headline3?.copyWith(color: Colors.red),
      )),
    );
  }
}
