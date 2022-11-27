

import 'package:flutter/material.dart';

class FootScreen extends StatefulWidget {
  const FootScreen({super.key, required this.getFoot});
  final String getFoot;

  @override
  State<FootScreen> createState() => _FootScreenState();
}

class _FootScreenState extends State<FootScreen> {
  final TextEditingController _controller1 = TextEditingController();
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          widget.getFoot,
          style: const TextStyle(
              color: Colors.orange, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
          side: BorderSide(color: Colors.orange),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Center(
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white, width: 5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black)),
                          child: Text(
                            " $_value ${widget.getFoot.split(" ").elementAt(0)} সমান",
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 30.48}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  সেন্টিমিটার",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 304.8}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  মিলিমিটার",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 0.3048}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  মিটার",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 12}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ইঞ্চি",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 0.333333}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  গজ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.getFoot.split(" ").elementAt(0)} : ',
                    style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          _value = double.parse(value);
                        });
                      },
                      controller: _controller1,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.black)),
                        hintText: "এখানে ইনপুট দিন",
                        hintStyle: TextStyle(
                            color: const Color(0xffFFFFFF).withOpacity(0.3),
                            fontSize: width / 22),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}