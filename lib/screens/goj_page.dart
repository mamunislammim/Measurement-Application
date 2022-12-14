import 'package:flutter/material.dart';

class GojCalculate extends StatefulWidget {
  const GojCalculate({super.key, required this.getGoj});

  final String getGoj;

  @override
  State<GojCalculate> createState() => _GojCalculateState();
}

class _GojCalculateState extends State<GojCalculate> {
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
          widget.getGoj,
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
                            " $_value ${widget.getGoj.split(" ").elementAt(0)} ????????????",
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
                        Text("${_value * 91.44}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ?????????????????????????????????",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 914.4}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ???????????????????????????",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value *  3}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ?????????",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value * 36}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ???????????????",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                      ],
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("${_value *  0.9144}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("=  ???????????????",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
                    '${widget.getGoj.split(" ").elementAt(0)} : ',
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
                        hintText: "??????????????? ??????????????? ?????????",
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