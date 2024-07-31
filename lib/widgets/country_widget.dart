import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  final String name;
  final String flag;
  final String continent;
  final String language;

  const CountryWidget({
    super.key,
    required this.name,
    required this.flag,
    required this.continent,
    required this.language,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
      child: Container(
        height: 120,
        decoration: const BoxDecoration(
          color: Color(0xffFDFDFD),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(218, 224, 228, 227),
              blurRadius: 0.4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    flag,
                    width: 140,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 101, 136, 163),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 3.0, bottom: 3.0, right: 8, left: 8),
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 18, color: Color(0xffFDFDFD)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      continent,
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xff737373)),
                    ),
                    Text(
                      language,
                      style: const TextStyle(
                          fontSize: 14, color: Color(0xff737373)),
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
