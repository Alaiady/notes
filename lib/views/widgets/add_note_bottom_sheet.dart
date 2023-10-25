import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:project_11/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_11/views/widgets/add_note_form.dart';
import 'package:project_11/views/widgets/constants.dart';
import 'package:project_11/views/widgets/custom_button.dart';
import 'package:project_11/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  AddNoteBottomSheet({super.key});
  // bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed${state.errMessage}');
              if (state is AddNoteSuccess) {
                Navigator.pop(context);
              }
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoding ? true : false,
                child: const SingleChildScrollView(
                  child: AddNoteForm(),
                ));
          },
        ),
      ),
    );
  }
}
