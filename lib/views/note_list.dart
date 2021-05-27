import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:note_list/models/note.dart';
import 'package:note_list/sevices/notes_services.dart';
import 'package:note_list/views/note_delete_alert.dart';
import 'package:note_list/views/note_modify.dart';

class NoteList extends StatefulWidget {
  NoteList({this.title});

  final String title;

  @override
  _NoteListState createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {

  // we will use service locator package
  // to avoid using this line in multiple pages and places all around the project.
  //TODO: final service = NotesService();

  // now, the package/GetIt Library knows that NoteService in our own service.
  NotesService get service => GetIt.I<NotesService>();
  List<Note> notes = [];

  @override
  void initState() {
    notes = service.getNotesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    int a = 10;
    a = null;
    print("a = $a");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: Icon(
          Icons.add,
          color: Colors.black45,
          size: 28,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (c) => NotesModify()));
        },
      ),
      appBar: AppBar(
        title: Center(
            child: Text(
          widget.title,
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Colors.black87, letterSpacing: 7, fontSize: 25),
        )),
        backgroundColor: Colors.amber,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => Dismissible(
            key: ValueKey(notes[index].note_id),
                direction: DismissDirection.startToEnd,
                onDismissed: (direction) {},
                confirmDismiss: (direction) async{
                  final result = await showDialog(context: context, builder: (c) => NoteDelete());
                  print(result);
                  return result;
                },
                child: ListTile(
                  title: Text(notes[index].note_title),
                  subtitle: Text(notes[index].note_description),
                  leading: notes[index].note_icon,
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => NotesModify(
                              note: notes[index],
                            )));
                  },
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                height: 1,
                color: Colors.black38,
              ),
          itemCount: notes.length),
    );
  }
}
