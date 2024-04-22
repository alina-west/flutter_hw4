import 'package:flutter/material.dart';

final List<String> users = ['Tom', 'Bob', 'Sam', 'Mike'];
final List<String> companies = ['Google', 'Microsoft', 'Apple', 'JetBrains'];

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('METANIT.COM', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: BodyListView(),
    ),
  ));
}

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: users.length,
      separatorBuilder: (BuildContext context, int index) => Divider(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(users[index], style: TextStyle(fontSize: 22)),
          leading: Icon(Icons.face),
          trailing: Icon(Icons.phone),
          subtitle: Text('Works in ${companies[index]}'),
        );
      },
    );
  }
}

//Alina's NOTE----
// shrinkWrap: true,
// scrollDirection: Axis.horizontal, егер де temExtent дегенди осы horizontal мен жазатын болсак ол листтин ширинасы болады
// itemExtent: 300, ал егер де озин гана жазатын болсак\ ол уже высотасын есептеп кетеди
// reverse: true, осы значение аркылы листти страницанын сонынан басталатындай кыла аламыз
