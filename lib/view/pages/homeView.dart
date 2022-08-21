import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_app/view/widgets/coffee_title.dart';

import '../widgets/coffee_type.dart';

 class HomeView extends GetResponsiveView{



   //////list of coffee types

   final List CoffeeTypes = [
     ["Cupertino" , true],
     ["Latte" , false],
     ["Otte" , false],
     ["Dotte" , false],
     ["GHotte" , false],
     ["Jotte" , false],
   ];


   void CoffeeTypeSelected(int index) {
      setState(){
        CoffeeTypes[index][1] = true;
      }
   }


   @override
   Widget build(BuildContext context)
   {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         elevation: 0,
         leading: Icon(Icons.menu),
         actions: [
           Padding(
             padding: const EdgeInsets.only(right: 20.0),
             child: Icon(Icons.person),
           )
         ],
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home) , label: ''),
           BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
           BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
         ],
       ),
       body: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: Text("Find The best coffee for you" , style: GoogleFonts.bebasNeue(
               fontSize: 50,
             )),
           ),
           SizedBox(height: 25,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20.0),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search),
                 hintText: "Find your coffee...",
                 focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey.shade600)
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: Colors.grey.shade600)
                 )
               ),
             ),
           ),
           SizedBox(height: 25,),



           /////horizontal list of categories

           Container(
             padding: const EdgeInsets.symmetric(horizontal: 25),
             height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CoffeeTypes.length,
                itemBuilder: (context , index) {
              return CoffeeType(
                  coffeeType: CoffeeTypes[index][0],
                  IsSelected: CoffeeTypes[index][1],
                  onTap:() {
                    CoffeeTypeSelected(index);
                  });
            }),
           ),


           /////horizontal list of coffee
           Expanded(child:
             ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 CoffeeTitle(),
                 CoffeeTitle()
               ],
             ),
             ),

         ],
       )
     );
   }
 }