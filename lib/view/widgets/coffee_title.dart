import 'package:flutter/material.dart';


class CoffeeTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 25.0 , bottom: 25),
      child: Container(
        padding : const EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //coffee image
            ClipRRect(
              child : Image.asset('assets/images/coffee2.JPG'),
              borderRadius : BorderRadius.circular(12)
            ),


            // coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("late" , style: TextStyle(fontSize: 20),),
                  SizedBox(height: 4,),
                  Text("With a lot of Milk" , style: TextStyle(color: Colors.grey),),
                ],
              ),
            ),

//////////////////price
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4.00"),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Icon(Icons.add) , decoration:
                  BoxDecoration(color: Colors.orange,
                  borderRadius: BorderRadius.circular(6)),),
              ],
            ),
          ),



          ],
        ),
      ),

    );
  }

}