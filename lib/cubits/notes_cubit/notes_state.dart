part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNoteLoding extends NotesState {}

final class AddNoteSuccess extends NotesState {
  final List<NoteModel> notes;

  AddNoteSuccess(this.notes);
}

final class AddNoteFailure extends NotesState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
