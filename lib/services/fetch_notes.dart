import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:mongo_dart/mongo_dart.dart';

Future<List<Map>> getNotesDetails() async{
    List<Map> noteDetails;
    try {
      // CONNECT TO DATABASE
      final dataBase = await Db.create('mongodb+srv://judegwapo:test12345@node.eqiod.mongodb.net/notes-db?retryWrites=true&w=majority');
      await dataBase.open();

      // FETCH THE COLLECTION
      final collect = dataBase.collection('webnotes');
      //print(collect.runtimeType);
      noteDetails = await collect.find().toList();
    }
    catch (err) {
      print('ERROR CONNECTING TO DATABASE: $err');
    }
    return noteDetails;
}


