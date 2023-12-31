import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
// import 'package:project_11/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:project_11/cubits/notes_cubit/notes_cubit.dart';
import 'package:project_11/models/note_model.dart';
import 'package:project_11/simple_bloc_observer.dart';
import 'package:project_11/views/notes_views.dart';
import 'package:project_11/views/widgets/constants.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home: const NotesView(),
      ),
    );
  }
}
