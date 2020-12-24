import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final bttype;
  final fontcolor;
  final color;
  final onpressed;

  MyButton({this.bttype, this.color, this.fontcolor, this.onpressed});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final squareSideLength = width / 5;
    final buttonSize = Size(squareSideLength, squareSideLength);
    return SizedBox(
      height: buttonSize.height,
      width: buttonSize.width,
      child: GestureDetector(
        onTap: onpressed,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: color,
            ),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: Text(
              bttype,
              style: TextStyle(color: fontcolor, fontSize: 28.0),
            ),
          )
        ]),
      ),
    );
  }
}
