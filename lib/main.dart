import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:note_list/sevices/notes_services.dart';
import 'package:note_list/views/note_list.dart';
import 'package:note_list/views/note_modify.dart';

void setupServiceLocator(){
  GetIt.instance.registerLazySingleton(() => NotesService());
  GetIt.instance<NotesService>();
}

void main() {
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NoteList(title: "Note List",),
//      home: NotesModify(title: "Add Note", action: "Add",),
      debugShowCheckedModeBanner: false,
    );
  }
}
