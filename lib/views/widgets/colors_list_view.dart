import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_11/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_11/cubits/notes_cubit/notes_cubit.dart';
import 'package:project_11/views/widgets/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;

  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}








// class ColorItem extends StatelessWidget {
//   const ColorItem({super.key, required this.isActive, required this.color});
//   final bool isActive;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return isActive
//         ? CircleAvatar(
//             radius: 38,
//             backgroundColor: Colors.white,
//             child: CircleAvatar(
//               radius: 34,
//               backgroundColor: color,
//             ),
//           )
//         : CircleAvatar(
//             radius: 38,
//             backgroundColor: color,
//           );
//   }
// }

// class ColorListView extends StatefulWidget {
//   const ColorListView({
//     super.key,
//   });

//   @override
//   State<ColorListView> createState() => _ColorListViewState();
// }

// class _ColorListViewState extends State<ColorListView> {
//   int currentIndex = 0;

//   List<Color> colors = const [
//     Color(0XFF2D2D34),
//     Color(0XFFB97375),
//     Color(0XFFC6CA53),
//     Color(0XFF74226C),
//     Color(0XFFCEB1BE),
//     Color(0XFF7B7263),
//     Color(0XFF4B2142),
//     Color(0XFF816E94),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 40 * 2,
//       child: ListView.builder(
//         itemCount: colors.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 5),
//             child: GestureDetector(
//               onTap: () {
//                 currentIndex = index;
//                 BlocProvider.of<AddNoteCubit>(context).color = colors[index];
//                 setState(() {});
//               },
//               child: ColorItem(
//                 color: colors[index],
//                 isActive: currentIndex == index,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
