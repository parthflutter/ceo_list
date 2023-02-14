import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List image=[
    "assets/images/2billgates.jpg",
    "assets/images/adobeceo.jpg",
    "assets/images/Bob.jpg",
    "assets/images/Daniel.jpg",
    "assets/images/jeff.jpg",
    "assets/images/krueger1.jpg",
    "assets/images/michae.jpg",
    "assets/images/mukesh-ambani.jpg",
    "assets/images/sundar.jpg",
    "assets/images/timcook.jpg",
  ];
  List name=[
    "Bill Gates",
    "Adobe Ceo",
    "Bob Swan",
    "Daniel Zhang",
    "Jeff",
    "Harald Kruger",
    "Michal Dell",
    "Mukesh Ambani",
    "Sundar",
    "Tim Cook",
  ];
  List com=[
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  List tcolor=[
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];
  List boxcolor=[
    Colors.green,
    Colors.blueGrey,
    Colors.red,
    Colors.purple,
    Colors.lightGreen,
    Colors.white,
    Colors.blue,
    Colors.yellow,
    Colors.pinkAccent,
    Colors.greenAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      appBar: AppBar(
        title: Text("CEO List"),
        centerTitle: true,
        backgroundColor:Colors.redAccent,
      ),
      body: Container(
        color: Colors.grey,

        child: ListView.builder(
          itemCount: image.length,
          padding: EdgeInsets.all(5),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.fromLTRB(5,4,5,4),
            child: Box(image[index],name[index],com[index],tcolor[index],boxcolor[index]),
          ),
        ),
      ),
    ),
    );

  }

  Widget Box(String image,String name,String com,Color tcolor,Color boxcolor) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: boxcolor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.blueGrey,
            backgroundImage:
            AssetImage(image,),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(color: tcolor),),
              Text(com,style: TextStyle(fontSize: 11,color: tcolor),),
            ],
          ),
          Expanded(
              child: SizedBox(
                width: 10,
              )),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: tcolor)
            ),
            alignment: Alignment.center,
            child: Icon(Icons.navigate_next,size: 20,color: tcolor),),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}

