import 'package:flutter/material.dart';
import 'package:measurement_app/Data%20/measurement.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff134a71),
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 20,
            backgroundImage: AssetImage('images/back.png')
          ),
        ),
        backgroundColor: const Color(0xff0f4a56),
        title: const Text("পরিমাপ",style: TextStyle(color: Colors.orange,fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          side: BorderSide(color: Colors.orange),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: height/12,left: 10,right: 10),
        itemCount: measure.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: ListTile(
              tileColor: const Color(0xffce7e00),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              title: Text(measure[index],style: TextStyle(color: Color(0xff000e4b),fontSize: 17),),
              trailing: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => getPage[index]),
                      );
                    });
                  },
                  child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffd79732),
                      child: Icon(Icons.arrow_forward))),
            ),
          );
        },
      ),
    );
  }
}
