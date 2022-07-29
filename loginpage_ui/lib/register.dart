import 'package:flutter/material.dart';
import 'package:loginpage_ui/dashboard.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            color: Colors.green,
            alignment: Alignment.center,
            child: CircleAvatar(
              maxRadius: 60,
              child: Icon(
                Icons.school_outlined,
                size: 60,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Full Name", icon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Address ", icon: Icon(Icons.location_on)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "District ", icon: Icon(Icons.streetview)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "PIN number", icon: Icon(Icons.numbers)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Father Name", icon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Mother Name", icon: Icon(Icons.person)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Class", icon: Icon(Icons.class_)),
                ),
              ),
            ],
          )),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              child: Text('Submit'))
        ],
      ),
    );
  }
}
