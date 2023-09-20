import 'package:flutter/material.dart';

import 'mo.dart';
import 'mohmm.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: rashed(),
  ));
}

class rashed extends StatelessWidget {
  const rashed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home"),
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.abc),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("asset/ras.jpg"),
                ),
                accountName: Text("rashed"),
                accountEmail: Text("rashed@gmail.com")),
            const Divider(
              color: Colors.blue,
              thickness: 12,
            ),
            rash(context, "home", Icons.home, mob()),
            rash(context, "call", Icons.call_end, mohemmed()),
          ],
        ),
      ),
    );
  }
}

Padding rash(BuildContext context, tx, icon, nav) {
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: ListTile(
        tileColor: Colors.cyanAccent,
        title: Text(tx),
        leading: Icon(icon),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => nav,
            ))),
  );
}
