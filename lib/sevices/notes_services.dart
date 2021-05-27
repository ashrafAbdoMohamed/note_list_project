
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_list/models/note.dart';

class NotesService{

  List<Note> getNotesList(){
    return [

      new Note(
          "1",
          "Note 1",
          "Description 1",
          DateTime.utc(2021),
          DateTime.now(),
          Icon(
            Icons.looks_one,
            color: Colors.amberAccent,
            size: 24,
          )),
      new Note(
          "2",
          "Note 2",
          "Description 2",
          DateTime.utc(2021),
          DateTime.now(),
          Icon(
            Icons.looks_two,
            color: Colors.amberAccent,
            size: 24,
          )),
      new Note(
          "3",
          "Note 3",
          "Description 3",
          DateTime.utc(2021),
          DateTime.now(),
          Icon(
            Icons.threed_rotation,
            color: Colors.amberAccent,
            size: 24,
          )),
      new Note(
          "4",
          "Note 4",
          "Description 4",
          DateTime.utc(2021),
          DateTime.now(),
          Icon(
            Icons.four_k,
            color: Colors.amberAccent,
            size: 24,
          )),

    ];
  }



}