import 'package:flutter/material.dart';

// class DrawerPanel extends StatefulWidget {
//   @override
//   _DrawerPanelState createState() => _DrawerPanelState();
// }

// class _DrawerPanelState extends State<DrawerPanel> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(

//     );
//   }
// }
DrawerPanel() {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(child: Text("Drawer Header")),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: () {
            // Navigator.pushNamed(context, '/profile');
          },
        ),
        ListTile(
          leading: Icon(Icons.file_upload),
          title: Text("Project"),
          onTap: () {
            // Navigator.pushNamed(context, '/project');
          },
        )
      ],
    ),
  );
}
