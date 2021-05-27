import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_list/models/note.dart';

class NotesModify extends StatelessWidget {
  final Note note;

  NotesModify({this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(

          (note != null) ? "Edit Note" : "Add Note",
          style: TextStyle(
          color: Colors.black,
          letterSpacing: 5,
          fontSize: 20,
          fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller : TextEditingController(
                text: (note!=null) ? note.note_title : ""
              ),
                decoration: InputDecoration(
              hintText: "Note Title",
            )),
            Container(
              height: 8,
            ),
            TextField(
                controller : TextEditingController(
                    text: (note!=null) ? note.note_description : ""
                ),
                decoration: InputDecoration(
              hintText: "Note Description",
            )),
            Container(
              height: 16,
            ),
            SizedBox(
              width: double.infinity / 2,
              child: RaisedButton(
                child: Text(
                  (note!=null) ? "Edit" : "Add",
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ),
                color: Colors.amberAccent,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
