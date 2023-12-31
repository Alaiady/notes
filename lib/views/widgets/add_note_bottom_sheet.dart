import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_11/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_11/cubits/notes_cubit/notes_cubit.dart';
import 'package:project_11/views/widgets/add_note_form.dart';
// import 'package:project_11/views/widgets/constants.dart';
// import 'package:project_11/views/widgets/custom_button.dart';
// import 'package:project_11/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}

          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoding ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}








// class AddNoteBottomSheet extends StatelessWidget {
//   AddNoteBottomSheet({super.key});
//   // bool isLoading = false;
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => AddNoteCubit(),
//       child: BlocConsumer<AddNoteCubit, AddNoteState>(
//         listener: (context, state) {
//           if (state is AddNoteFailure) {
//             if (state is AddNoteSuccess) {
//               // BlocProvider.of<NotesCubit>(context).fetchAllNotes();
//               Navigator.pop(context);
//             }
//           }
//         },
//         builder: (context, state) {
//           return AbsorbPointer(
//             absorbing: state is AddNoteLoding ? true : false,
//             child: Padding(
//               padding: EdgeInsets.only(
//                   left: 16,
//                   right: 16,
//                   bottom: MediaQuery.of(context).viewInsets.bottom),
//               child: const SingleChildScrollView(
//                 child: AddNoteForm(),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
