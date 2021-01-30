import 'package:flutter/material.dart';
import 'package:notes_taking/services/fetch_notes.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void notesDetails() async{
    List<Map> notes = await getNotesDetails();
    //print("NOTES_DETAILS: ${notes}");
    Navigator.pushReplacementNamed(context, '/home', arguments: notes);
  }

  @override
  void initState() {
    super.initState();
    notesDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
          child: SpinKitFoldingCube(
            color: Colors.white,
            size: 50.0,
          )
      ),
    );
  }
}