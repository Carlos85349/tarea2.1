import 'package:flutter/material.dart';
import 'package:myapp/custom_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched = false;
  bool isSwitched2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.lightGreen[300],
                backgroundImage: const AssetImage('assets/images/foto.jpg'),
              ),
              const Text(
                "Coffeestories",
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "mark.brock@icloud.com",
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 12, color: Colors.blueGrey),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Edit profile")),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Inventories"),
                    CustomListTile(
                        title: "My stores",
                        leadingIcon: Icons.store,
                        onTap: () {}),
                    CustomListTile(
                        title: "Support",
                        leadingIcon: Icons.support,
                        onTap: () {}),
                    const Text("Preferences"),
                    CustomListTile(
                      title: "Push notifications",
                      leadingIcon: Icons.notifications,
                      trailing: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          }),
                    ),
                    CustomListTile(
                      title: "Face ID",
                      leadingIcon: Icons.face,
                      trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          }),
                    ),
                    CustomListTile(title: "PIN Code", leadingIcon: Icons.pin, onTap: () {},),
                    CustomListTile(title: "Logout",
                    textColor: Colors.red,
                    leadingIcon: Icons.logout, 
                    leadingColor: Colors.red, 
                    onTap: () {}, 
                    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.red,),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
