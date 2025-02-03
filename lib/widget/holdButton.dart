// import 'package:flutter/material.dart';
//
// class HoldToSendButton extends StatefulWidget {
//   final VoidCallback onCompleted;
//
//   const HoldToSendButton({super.key, required this.onCompleted});
//
//   @override
//   _HoldToSendButtonState createState() => _HoldToSendButtonState();
// }
//
// class _HoldToSendButtonState extends State<HoldToSendButton> {
//   double _progress = 0.0;
//   bool _isHolding = false;
//   static const Duration holdDuration = Duration(seconds: 2);
//
//   void _startProgress() {
//     setState(() {
//       _isHolding = true;
//     });
//
//     Future.delayed(holdDuration, () {
//       if (_isHolding) {
//         widget.onCompleted();
//         _showCompletionDialog();
//       }
//       setState(() {
//         _isHolding = false;
//         _progress = 0.0;
//       });
//     });
//
//     _updateProgress();
//   }
//
//   void _updateProgress() async {
//     while (_isHolding && _progress < 1.0) {
//       await Future.delayed(const Duration(milliseconds: 50));
//       if (_isHolding) {
//         setState(() {
//           _progress += 0.05;
//         });
//       }
//     }
//   }
//
//   void _cancelProgress() {
//     setState(() {
//       _isHolding = false;
//       _progress = 0.0;
//     });
//   }
//
//   void _showCompletionDialog() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           content: const Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(
//                 Icons.check_circle,
//                 color: Colors.green,
//                 size: 80,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Started',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.green,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onLongPressStart: (_) => _startProgress(),
//       onLongPressEnd: (_) => _cancelProgress(),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SizedBox(
//             width: 220,
//             height: 60,
//             child: LinearProgressIndicator(
//               borderRadius: BorderRadius.all(Radius.circular(25),),
//               value: _progress,
//               //backgroundColor: Colors.grey[300],
//               valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
//               //strokeWidth: 6,
//             ),
//           ),
//           Container(
//             //width: 200,
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.pink,
//               borderRadius: BorderRadius.all(Radius.circular(25),),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.pink.withOpacity(0.5),
//                   blurRadius: 10,
//                   offset: const Offset(0, 5),
//                 ),
//               ],
//             ),
//             child: const Center(
//               child: Text(
//                 "Start",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }














import 'package:flutter/material.dart';

import '../utils/styles.dart';

class HoldToSendButton extends StatefulWidget {
  final VoidCallback onCompleted;

  const HoldToSendButton({super.key, required this.onCompleted});

  @override
  _HoldToSendButtonState createState() => _HoldToSendButtonState();
}

class _HoldToSendButtonState extends State<HoldToSendButton> {
  double _progress = 0.0;
  bool _isHolding = false;
  static const Duration holdDuration = Duration(milliseconds: 1200);
  Color _buttonColor = Utils.secondaryColor;
  String actionButton = 'Start';

  void _startProgress() {
    setState(() {
      _isHolding = true;
      actionButton = 'Done';
    });

    Future.delayed(holdDuration, () {
      if (_isHolding) {
        widget.onCompleted();
        actionButton = 'Done';
        _showCompletionDialog();
      }
      setState(() {
        _isHolding = false;
        _progress = 0.0;
        //_buttonColor = Colors.pink;
      });
    });

    _updateProgress();
  }

  void _updateProgress() async {
    while (_isHolding && _progress < 1.0) {
      await Future.delayed(const Duration(milliseconds: 600));
      if (_isHolding) {
        setState(() {
          _progress += 0.05;
          _buttonColor = Color.lerp(Colors.blue, Colors.blue, _progress)!;
        });
      }
    }
  }

  void _cancelProgress() {
    setState(() {
      _isHolding = false;
      _progress = 0.0;
      _buttonColor = Utils.secondaryColor;
      actionButton = 'Start';
    });
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 80,
              ),
              SizedBox(height: 10),
              Text(
                'Started',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (_) => _startProgress(),
      onLongPressEnd: (_) => _cancelProgress(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipPath(
            clipper: ButtonClipper(),
            child: AnimatedContainer(
              curve: Curves.bounceIn,


              duration: const Duration(milliseconds: 600),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: _buttonColor,
              ),
            ),
          ),
          Center(
            child: Text(
              actionButton,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    Path path = Path();
    path.moveTo(0, 30);
    path.quadraticBezierTo(size.width / 2, -15, size.width, 30);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
