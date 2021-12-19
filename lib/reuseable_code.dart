import 'package:flutter/Material.dart';

const activeCardColor = Color(0xFF14193B);
const BtnColor = Color(0XFFFF0067);
const inactiveCardColor = Color(0xFF111328);

const labelStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFFA2A3B4),
);

const valueStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);

class BoxContent extends StatelessWidget {
  BoxContent({this.icon, required this.Box_Text, this.weightVal});

  final IconData? icon;
  final String Box_Text;
  final String? weightVal;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(Box_Text, style: labelStyle),
      ],
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({required this.colour, this.icon_box});
  final Color colour;
  final Widget? icon_box;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: icon_box,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 3.1,
      onPressed: onPressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
