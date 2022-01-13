import 'package:flutter/material.dart';
import 'package:sd_app/models/datacard.dart';


class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height  = MediaQuery.of(context).size.height;
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
      ),
      child: Container(
        width: 380,
        height: 230,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: cardinfo[0].color,
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter
            ),
            boxShadow: [
              BoxShadow(
                color:Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: const Offset(0,3),
              )
            ],
            borderRadius: BorderRadius.circular(25)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(cardinfo[0].name,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
                    ),
                  ),

                  SizedBox(
                    width:width * 0.01 ,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(cardinfo[0].id,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
                    ),
                  ),

                  SizedBox(
                    width:width * 0.01 ,
                  ),
                ],
              ),

              SizedBox(
                height: height * 0.05,
              ),

              Container(
                  margin: const EdgeInsets.only(right: 180),
                  child: const Text("Redeem Points",style: TextStyle(color: Colors.white, fontSize: 21),)),
              SizedBox(
                  height: height * 0.01
              ),
              Row(
                  children: <Widget>[
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(cardinfo[0].points,style:const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26)),
                      ),
                    ),
                    //Text(cardinfo[i].points,style: const TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                    SizedBox(
                        width: width*0.01
                    ),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
