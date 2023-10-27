import 'package:flutter/material.dart';
import 'package:project_11/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.title, required this.icon, this.onPressed})
      : super(key: key);

  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
        CustomIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}












// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({required this.title, super.key, required this.icon});
//   final String title;
//   final IconData icon;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(
//           title,
//           style: TextStyle(fontSize: 30),
//         ),
//         Spacer(),
//         CustomSearchIcon(
//           icon: icon,
//         ),
//       ],
//     );
//   }
// }
