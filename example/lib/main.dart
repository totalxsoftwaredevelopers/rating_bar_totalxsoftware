import 'package:flutter/material.dart';
import 'package:rating_bar_totalxsoftware/rating_bar_totalxsoftware.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(
        title: 'Rating Bar Demo',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _ratingStar = 0;
  double _ratingStarLong = 0;
  double _ratingSmile = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Rating : $_ratingStar',
          ),
          const SizedBox(height: 8),
          RatingBarTotalxsoftware(
            onRatingChanged: (rating) => setState(() => _ratingStar = rating),
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
          ),
          const SizedBox(height: 32),
          const Text(
            'Read Only Rating : 3.5',
          ),
          const SizedBox(height: 8),
          RatingBarTotalxsoftware.readOnly(
            initialRating: 3.5,
            isHalfAllowed: true,
            halfFilledIcon: Icons.star_half,
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
          ),
          const SizedBox(height: 32),
          Text(
            'Rating : $_ratingStarLong',
          ),
          const SizedBox(height: 8),
          RatingBarTotalxsoftware(
            maxRating: 10,
            onRatingChanged: (rating) =>
                setState(() => _ratingStarLong = rating),
            filledIcon: Icons.star,
            emptyIcon: Icons.star_border,
            halfFilledIcon: Icons.star_half,
            isHalfAllowed: true,
            filledColor: Colors.amber,
            size: 36,
          ),
          const SizedBox(height: 32),
          Text(
            'Rating : $_ratingSmile',
          ),
          const SizedBox(height: 8),
          RatingBarTotalxsoftware(
            onRatingChanged: (rating) => setState(() => _ratingSmile = rating),
            filledIcon: Icons.sentiment_satisfied,
            emptyIcon: Icons.sentiment_dissatisfied,
            halfFilledIcon: Icons.sentiment_neutral,
            isHalfAllowed: true,
            filledColor: Colors.green,
            emptyColor: Colors.redAccent,
            halfFilledColor: Colors.amberAccent,
            size: 48,
          ),
        ],
      ),
    );
  }
}
