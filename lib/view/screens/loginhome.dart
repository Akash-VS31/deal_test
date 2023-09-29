import 'package:flutter/material.dart';
class Loginhome extends StatefulWidget {
  const Loginhome({super.key});

  @override
  State<Loginhome> createState() => _LoginhomeState();
}

class _LoginhomeState extends State<Loginhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Image(image: AssetImage('assets/images/applogo.png')),
        elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand ,
        children: [
          Container(
            color: Colors.white,
          ),
           Column(
           children: [
             const Expanded(flex:2,
                 child:Column(
                   children: [
                    Padding(
                      padding: EdgeInsets.only(top: 90),
                      child: Image(image: AssetImage('assets/images/toppng 1.png')),
                    ),

                   ],
                 ) ),
             Expanded(
               flex: 1,
                 child:Column(
                   children: [
                     const Padding(
                       padding: EdgeInsets.only(left: 30),
                       child: Text(
                         "Catch All Deal Is \nEasier With One Tap",
                         style: TextStyle(
                           fontFamily: 'Oswald-Bold',
                             color: Color(0xFF4A4A5F),
                           fontSize: 30,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                     Padding(padding: EdgeInsets.only(top:30),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(
                           width: 133,
                           height: 46,
                           child: ElevatedButton(
                               style: const ButtonStyle(
                                 backgroundColor: MaterialStatePropertyAll(Color(0xFF5529A4)),
                               ),
                               onPressed: () {},
                               child:const Text("Sign In",
                                 style:TextStyle(fontFamily: 'Oswald-Bold'))
                           ),
                         ),
                         SizedBox(width: 16),
                         SizedBox(width: 133,
                           height: 46,
                           child: ElevatedButton(
                               style: const ButtonStyle(
                                 backgroundColor:
                                   MaterialStatePropertyAll(Color(0xFF5529A4)),
                               ),
                               onPressed:() {

                               },  child:const Text("Register",style: TextStyle(
                               fontFamily:'Oswald-Bold' ),) ),
                         ),
                       ],
                     ),
                     )
                   ],
                 ),
             ),
           ],
          )
        ],
      ),
    );
  }
}
