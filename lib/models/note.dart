import 'package:flutter/cupertino.dart';

class Note{

  String note_id;
  String note_title;
  String note_description;
  DateTime note_created;
  DateTime note_edited;
  Widget note_icon;

  Note(this.note_id , this.note_title, this.note_description, this.note_created,
      this.note_edited, this.note_icon);


}