import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dish.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {

  @override
  Widget build(BuildContext context) {
   // var size = MediaQuery.of(context).size;

    return Scaffold(

      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 25,top:25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hey',
                      style: GoogleFonts.openSansCondensed(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Are you Craving for food',
                      style: GoogleFonts.openSansCondensed(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
                 Container(
                   margin: EdgeInsets.only(left: 25,right: 25,top: 20),
                   height: 40,
                   decoration: BoxDecoration(
                     color: Colors.yellow[300],
                     borderRadius: BorderRadius.all(Radius.circular(22.0)),



                   ),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Expanded(

                           child: TextFormField(

                         decoration: InputDecoration(
                           hintText: 'Search Your Favorite Food',
                           hintStyle: TextStyle(color: Colors.black),
                           icon: Icon(Icons.search,color: Colors.black),

                         ),

                       ),
                       ),

                     ],
                   ),

                 ),

              Container(
                margin: EdgeInsets.only(top: 40.0),
                height: 700.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                ),
                child:ListView(
                  primary:false,
                  padding: EdgeInsets.only(left: 25.0,right: 20.0),
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 45),
                      child: Container(
                        height:400,
                        child: ListView(
                          children: <Widget>[
                             myFood('https://www.thechunkychef.com/wp-content/uploads/2019/09/One-Pot-Spaghetti-feat.jpg', 'Spahagetti', 315),
                            myFood('https://i.pinimg.com/736x/39/a8/e4/39a8e41888d4a2db86cf56be5d40dd74.jpg', 'Lasagna', 350),
                            myFood('https://d3hne3c382ip58.cloudfront.net/files/uploads/bookmundi/resized/cmsfeatured/pasta-1509527885-785X440.jpg', 'Pazzta', 399),
                            myFood('https://diethood.com/wp-content/uploads/2018/02/Tortellini-Chicken-Bake-1-of-1-12.jpg', 'Tortellini', 399),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),

            ],
          ),

        ),
      ),

      


    );

  }
  Widget myFood(String imgpath,String foodName,double price)
  {
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0,bottom: 13.0),
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dish(tag:imgpath,foodName:foodName,foodPrice: price)));

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                      tag: imgpath,
                      child: Image(
                        image: NetworkImage(imgpath),
                        fit: BoxFit.cover,
                        height: 75.0,
                        width:75.0,
                      )),
                  SizedBox(width: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price.toString(),
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),

                      ),
                    ],
                  ),

                ],
              ),
            ),
            IconButton(
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: (){

                }),

          ],
        ),
      ),

    );

  }
}


