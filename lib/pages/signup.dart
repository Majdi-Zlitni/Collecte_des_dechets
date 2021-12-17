import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _value1 = false;
  bool _value2 = false;
  String dropdownValue = 'Gender';

  @override
  Widget build(BuildContext context) {
    return ListView(
     children: [
       Container(
         padding: const EdgeInsets.all(20.0),
         decoration: const BoxDecoration(
             image: DecorationImage(
               image: AssetImage('assets/background.jpg'),
               fit: BoxFit.cover,
             )),
         child: Column(
           children: [
             Stack(
               children: <Widget>[
                 SingleChildScrollView(
                   padding: const EdgeInsets.all(20.0),
                   physics: const BouncingScrollPhysics(),
                   scrollDirection: Axis.vertical,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.end,
                     mainAxisSize: MainAxisSize.max,
                     children: <Widget>[
                       const SizedBox(
                         height: 20.0,
                       ),
                       const Center(
                         child: Text(
                           "Collecte déchets",
                           style: TextStyle(
                             fontSize: 28.0,
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 40.0,
                       ),
                       TextField(
                         decoration: InputDecoration(
                           hintText: "NOM",
                           contentPadding:
                           const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 10.0,
                       ),
                       TextField(
                         decoration: InputDecoration(
                           hintText: "PRENOM",
                           contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 10.0,
                       ),
                       TextField(
                         decoration: InputDecoration(
                           hintText: "ADRESSE",
                           contentPadding:
                           const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(50.0),
                           ),
                         ),
                       ),
                       const SizedBox(
                         height: 10.0,
                       ),
                       TextField(
                         obscureText: true,
                         decoration: InputDecoration(
                           hintText: "Password",
                           contentPadding:
                           const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(32.0)),
                         ),
                       ),
                       CheckboxListTile(
                         title: const Text(
                           "Collect",
                         ),
                         onChanged: (bool? value) {
                           setState(() {
                             _value1 = !_value1;
                           });
                         },
                         value: _value1,
                       ),
                       CheckboxListTile(
                         title: const Text(
                           "Dépôt",
                         ),
                         onChanged: (bool? value) {
                           setState(() {
                             _value2 = !_value2;
                           });
                         },
                         value: _value2,
                       ),

                       DropdownButton<String>(
                         isExpanded:true,
                         value: dropdownValue,
                         icon: const Icon(Icons.arrow_downward,color: Colors.white,),
                         style: const TextStyle(color: Colors.green),
                         underline: Container(
                           height: 2,
                           color: Colors.green,
                         ),
                         onChanged: (String? newValue) {
                           setState(() {
                             dropdownValue = newValue!;
                           });
                         },
                         items: <String>['Gender', 'Male', 'Female']
                             .map<DropdownMenuItem<String>>((String value) {
                           return DropdownMenuItem<String>(
                             value: value,
                             child: Text(value),
                           );
                         }).toList(),
                       ),

                       const SizedBox(
                         height: 40.0,
                       ),
                       SizedBox(
                         width: double.infinity,
                         child: RaisedButton(
                           color: Colors.blue,
                           child: Text(
                             "sign up".toUpperCase(),
                             style: const TextStyle(color: Colors.white),
                           ),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(24),
                           ),
                           onPressed: () {},
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ],

         ),
       ),
     ],
    );
  }
}
