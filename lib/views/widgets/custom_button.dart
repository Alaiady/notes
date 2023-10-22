import 'package:flutter/material.dart';
import 'package:project_11/views/widgets/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
      width: MediaQuery.of(context).size.width,
      height: 55,
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
        ),
      ),
    );
  }
}