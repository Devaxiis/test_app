import 'package:flutter/material.dart';

class IconButtonCustom extends StatelessWidget {
  final String variant;
  final bool istaped;
  final Function() onTab;
  final bool togri;
  final bool isDisabled;
  const IconButtonCustom({super.key, required this.istaped, required this.variant, required this.onTab, required this.togri, required this.isDisabled, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:isDisabled?null:onTab,
      child: Container(
        height: 60,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color:togri ? istaped?Colors.green:Colors.transparent:istaped?Colors.amber:Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            width: 1,
            color: Colors.amber
          ),
          ),
        child: Text(variant,style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w400,
          color:togri?istaped ?Colors.white :Colors.amber:istaped ?Colors.white :Colors.amber
        ),),
      ),
    );
  }
}
