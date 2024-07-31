import 'package:flutter/material.dart';
import 'package:countries_listview/widgets/country_widget.dart';
import 'package:countries_listview/models/countries.dart';
import 'package:countries_listview/data/countries.data.dart';

class Countries extends StatelessWidget {
  const Countries({super.key});

  // Getting the ciountry data
  final List<CountryModel> _countries = countriesData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 243, 243),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: _countries.length,
              itemBuilder: (context, index) {
                var country = _countries[index];
                return CountryWidget(
                  name: country.countryName,
                  flag: country.flag,
                  continent: country.continent,
                  language: country.language,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
