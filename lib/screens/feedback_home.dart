import 'package:flutter/material.dart';

class FeedbackHome extends StatefulWidget {
  @override
  _FeedbackHomeState createState() => _FeedbackHomeState();
}

class _FeedbackHomeState extends State<FeedbackHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            feedbackBody(),
            Positioned(
              top: MediaQuery.of(context).size.height/2-55,
              left: MediaQuery.of(context).size.width/2-50,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue[400],
                   shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.feedback,
                  color: Colors.white,
                  size: 35.0,
                ),
              )
            
            ),
          ],
        ),
      ),
    );
  }

  Widget feedbackBody() {
    return Column(
      children: [
        Container(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            height: MediaQuery.of(context).size.height / 2.1,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Center(
                    child: Text(
                      'Click to ask queries or to give feedback',
                      style: TextStyle(
                        fontSize: 14.0,
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: (){
                        print('Feedback');
                        Navigator.pushNamed(context, '/feedbackGiven');
                        },
                      child: feedbackColumnWidget('Feedback', 13),),
                    FlatButton(
                      onPressed: (){
                        print('queries');
                        Navigator.pushNamed(context, '/queries');
                      }, 
                      child: feedbackColumnWidget('Queries', 9),)
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: FlatButton(
                    child: Text('Frequently Asked Questions'),
                    color: Colors.grey[200],
                    onPressed: () {
                      print('FAQs');
                      Navigator.pushNamed(context, '/faqs');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    offset: new Offset(0.0, 7.0),
                    blurRadius: 50.0,
                  )
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children:[
                 Container(
                   margin: EdgeInsets.only(top:50),
                   child: Column(
                     children: [
                       Text('How was your experience with',
                       style: TextStyle(
                         fontSize: 16,
                         letterSpacing: 1.0,

                       ),
                       ),
                       SizedBox(height: 15.0,),
                        Text('TATHYA',
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w700
                        ),
                        )
                     ],
                   ),
                 ),
                 SizedBox(height: 40.0),
                 Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       InkWell(
                         child: Image.asset('images/reaction1.png'),
                         onTap: () {
                           print('Reaction 1');
                         },
                       ),
                       InkWell(
                         child: Image.asset('images/reaction2.png'),
                         onTap: () {
                           print('Reaction 2');
                         },
                       ),
                       SizedBox(width:4.0),
                       InkWell(
                         child: Image.asset('images/reaction3.png'),
                         onTap: () {
                           print('Reaction 3');
                         },
                       ),
                     ],
                   ),
                 )
               ]
             ),   
          ),
        ),
      ],
    );
  }

  Widget feedbackColumnWidget(String title, int counter) {
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.blue[400]),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w800),
            )
          ]),
    );
  }

  Widget appRating() {
    return Container(
      child: Column(
        children: [
          Text(
            'Rating',
            style: TextStyle(
              fontSize: 16.0,
              letterSpacing: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
