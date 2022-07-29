import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
    List servicelist = [
    {"id": 1, "logo": 'assets/logo/calendar.png', "text": 'Calendar'},
    {"id": 2, "logo": 'assets/logo/examresults.png', "text": 'Exam Result'},
    {"id": 3, "logo": 'assets/logo/fees.png', "text": 'Tution Fees'},
    {"id": 4, "logo": 'assets/logo/gallery.png', "text": 'Gallery'},
    {"id": 5, "logo": 'assets/logo/home-work.png', "text": 'Home Work'},
    {"id": 6, "logo": 'assets/logo/time-table.png', "text": ' Time Table'},
    {"id": 7, "logo": 'assets/logo/school-news.png', "text": 'School News'},
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
         title: Text("DASHBOARD"),), 
       
      body:
      SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
           
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
              itemBuilder: (BuildContext ctx, index) {
                return Container(
                  color: Colors.amber[100],
                  height: 300,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext context) => Services()));
                        },
                        child: Image.asset(
                          servicelist[index]["logo"],
                          cacheHeight: 150,
                          cacheWidth: 150,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(servicelist[index]["text"]),
                    ],
                  ),
                );
              },
              shrinkWrap: true,
              itemCount: servicelist.length,
            ),
          ),
        ]),
    ))
    ;
  }
}