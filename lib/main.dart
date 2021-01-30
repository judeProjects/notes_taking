import 'package:flutter/material.dart';
import 'package:notes_taking/pages/home.dart';
import 'package:notes_taking/pages/loading.dart';
import 'package:notes_taking/pages/note_detail.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/notedetail': (context) => NoteDetail(),
  },
));
