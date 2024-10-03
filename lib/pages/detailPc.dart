import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pc_project/models/navigasi.dart';

class DetailPc extends StatelessWidget {
  DetailPc({super.key});

  List<Navigasi> nav = [];

  void _getInitialInfo() {
    nav = Navigasi.getNavigasi();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: navigasi(),
      body: LayoutStart(),
    );
  }

  AppBar navigasi() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        GestureDetector(
            onTap: () {
              print("cek");
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 20, 30, 0),
              child: Icon(
                Icons.favorite_border,
                size: 30,
              ),
            ))
      ],
      leading: GestureDetector(
        onTap: () {
          print("aman");
        },
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 30),
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}

class LayoutStart extends StatelessWidget {
  const LayoutStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [PcSelectorAnimation()],
    );
  }
}

class PcSelectorAnimation extends StatefulWidget {
  const PcSelectorAnimation({
    super.key,
  });
  @override
  State<PcSelectorAnimation> createState() => _PcSelectorAnimationState();
}

class _PcSelectorAnimationState extends State<PcSelectorAnimation> {
  @override
  Widget build(BuildContext context) {
    return PcDetails();
  }
}

class PcDetails extends StatelessWidget {
  const PcDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          pcTittle(),
        ],
      ),
    );
  }

  Container pcTittle() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 15),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
                style: TextStyle(fontSize: 38, color: Colors.white),
                children: [
                  TextSpan(
                      text: "HIG END",
                      style: TextStyle(fontWeight: FontWeight.w200)),
                  TextSpan(
                      text: "\nAMD 7 7700X3D + RTX 4090",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                ]),
          ),
          RichText(text: TextSpan(style: TextStyle(
            fontSize: 16
          ), children: [

          ]))
        ],
      ),
    );
  }
}
