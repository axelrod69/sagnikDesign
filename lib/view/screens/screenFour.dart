import 'package:flutter/material.dart';

//Parameter Passing for StatelessWidgets
class ScreenFour extends StatelessWidget {
  Map<String, dynamic> acceptedData;

  ScreenFour(this.acceptedData);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: acceptedData['dataSent'] == ''
            ? const Text('Data', style: TextStyle(color: Colors.white))
            : Text(acceptedData['dataSent'],
                style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}

//Argument Passing for Stateful Widgets
// import 'package:flutter/material.dart';

// class ScreenFour extends StatefulWidget {
//   Map<String, dynamic> acceptedData;

//   ScreenFour(this.acceptedData);


//   ScreenFourState createState() => ScreenFourState();
// }

// class ScreenFourState extends State<ScreenFour> {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: Center(
//         child: widget.acceptedData['dataSent'] == ''
//             ? const Text('Data', style: TextStyle(color: Colors.white))
//             : Text(widget.acceptedData['dataSent'],
//                 style: const TextStyle(color: Colors.white)),
//       ),
//     );
//   }
// }

