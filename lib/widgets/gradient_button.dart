import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  const GradientButton({
    Key? key,
    required this.onPressed,
    this.height = 25,
    this.width,
    this.text = "Hello Flutter",
    this.icon,
    this.buttonColor,
    this.hoverElv,
    this.textColor,
    this.titleStyle,
    this.iconSize,
    this.iconColor,
    this.gradientColor1,
    this.gradientColor2,
    this.gradientColor3,
  }) : super(key: key);

  final GestureTapCallback? onPressed;
  final double? width;
  final double? height;
  final double? hoverElv;
  final double? iconSize;
  final String? text;
  final IconData? icon;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? textColor;
  final Color? gradientColor1;
  final Color? gradientColor2;
  final Color? gradientColor3;
  final TextStyle? titleStyle;

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        child: SizedBox(
          width: widget.width ?? MediaQuery.of(context).size.width * 0.90,
          height: widget.height,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(13.0)),
              gradient: LinearGradient(
                colors: [
                  widget.gradientColor1 ?? const Color(0xFFB84D9B),
                  widget.gradientColor2 ?? const Color(0xFFA060B0),
                  widget.gradientColor3 ?? const Color(0xFF8E6EC0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: MaterialButton(
              hoverElevation: widget.hoverElv,
              onPressed: widget.onPressed,
              color: widget.buttonColor,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Text(
                    '${widget.text}',
                    style: widget.titleStyle ??
                        TextStyle(
                          color: widget.textColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Icon(
                    widget.icon,
                    color: widget.iconColor,
                    size: widget.iconSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
