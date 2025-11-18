import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: CountriesView()),
  );
}

const List<String> seasonList = ['Winter', 'Spring', 'Summer', 'Autumn'];

const Map<String, String> seasonPics = {
  'Winter': 'assets/season-0.png',
  'Spring': 'assets/season-1.png',
  'Summer': 'assets/season-2.png',
  'Autumn': 'assets/season-3.png',
};

class CountriesView extends StatelessWidget {
  const CountriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "SEASONS",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SeasonCard(country: "FRANCE"),
                SizedBox(width: 18),
                SeasonCard(country: "CAMBODIA"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SeasonCard extends StatefulWidget {
  final String country;
  const SeasonCard({super.key, required this.country});

  @override
  State<SeasonCard> createState() => _SeasonCardState();
}

class _SeasonCardState extends State<SeasonCard> {
  int pos = 0;

  void updateSeason() {
    setState(() => pos = (pos + 1) % seasonList.length);
  }

  @override
  Widget build(BuildContext context) {
    final seasonName = seasonList[pos];
    final seasonImg = seasonPics[seasonName]!;

    return SizedBox(
      width: 170,
      child: ElevatedButton(
        onPressed: updateSeason,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Colors.black, width: 2),
          ),
        ),
        child: Column(
          children: [
            Image.asset(seasonImg, height: 120),
            const SizedBox(height: 12),
            Text(
              seasonName,
              style: const TextStyle(fontSize: 20,),
            ),
            Text(
              widget.country,
              style: const TextStyle(fontSize: 16, ),
            ),
          ],
        ),
      ),
    );
  }
}
