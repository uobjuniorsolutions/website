import 'package:flutter/material.dart';

class backmain2 extends StatefulWidget {
  final Widget child;
  const backmain2({Key? key, required this.child}) : super(key: key);

  @override
  State<backmain2> createState() => _backmain2State();
}

class _backmain2State extends State<backmain2> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(

        height:5200,
        width: size.width,
        child: Stack(


          children: [

            Positioned(

                top : 170,
                left: 0,


                child: Container(
                  height: 550,
                  width: size.width,
                  color:Color(0xfff7fbfd),
                )),

            Positioned(

                top : 1250,
                left: 0,


                child: Container(
                  height: 2000,
                  width: size.width,
                  color:Color(0xfff7fbfd),
                )),

            Positioned(

                top : 3250,
                left: 0,


                child: Container(
                  height: 2000,
                  width: size.width,
                  color:Color(0xff81b0d0),
                )),

            Positioned(
              top : 140,
              left: -250,
              child:  Container(
                width: 550,
                height: 550,

                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xfff3f6f8)),
              ),),


            widget.child,



          ],



        ),










      ),
    );

  }
}
