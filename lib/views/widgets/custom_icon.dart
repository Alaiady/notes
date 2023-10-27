import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}













// class CustomSearchIcon extends StatelessWidget {
//   const CustomSearchIcon({required this.icon, super.key});
//   final IconData icon;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 45,
//       width: 45,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(16),
//           color: Colors.white.withOpacity(.05)),
//       child: IconButton(
//         child: Icon(
           
//           icon,
//           size: 30,
//         ),
//       ),
//     );
//   }
// }
