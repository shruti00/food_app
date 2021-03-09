import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';


class Dish extends StatefulWidget {
  final tag;
  final foodName;
  final foodPrice;


  Dish({this.tag,this.foodName,this.foodPrice});

  @override
  _DishState createState() => _DishState();
}

class _DishState extends State<Dish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.yellow,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,

          ),
          onPressed: (){
         Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Color(0xFFFDCD01),
        child: Column(

          children: <Widget>[

              Image.network(
                  'https://thumbs.dreamstime.com/b/italian-spaghetti-yellow-plate-italian-spaghetti-yellow-plate-shot-above-yellow-background-121615597.jpg',
                   height: 280.0,
                   width: 410,

              ),

            Expanded(

              child: Container(

                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sphagetti',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'PlayBall'

                              ),
                            ),
                            Row(
                              children: [
                                SmoothStarRating(
                                  color: Colors.amber,
                                  borderColor: Colors.amber,
                                  rating: 4,
                                ),
                                SizedBox(width: 10.0,),
                                Text(
                                  '24 reviews',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width:100.0,
                        ),
                        Container(

                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          height: 65,
                          width: 65,
                          color: Colors.amber,
                          child: Text(
                            'Rs.315',
                            style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text('Sphagetti is a long, thin, cylindrical noodle pasta.It is a staple food of  Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water also sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.',
                     style: TextStyle(
                       fontSize: 14.0,
                       color: Colors.grey,
                       letterSpacing: 1.0,
                     ),
                    ),
                    SizedBox(height: 22.0,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add_shopping_cart,
                            color: Colors.white,
                          ) ,
                          Text('Order Now',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                           ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}


