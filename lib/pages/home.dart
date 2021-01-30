import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List notesData = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
            'List Of Notes',
            style: TextStyle(
              color: Colors.yellow[300]
            )
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: notesData.length,
        itemBuilder: (context, index) {
          return Padding (
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/notedetail', arguments: notesData[index]);
                },
                title: Text(notesData[index]["title"]),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/stickynote.jpg'),
                ),
              ),
            )
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
          tooltip: 'Refresh List',
          child: Icon(Icons.refresh),
      ),
    );
  }
}

