import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'food_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'newDB.dart' as food;

/*
Working on corners:

look at lines 220-230
this is where the new fix is being implemented
*/

void main() {
  runApp(const MyApp());
}

Future<List<String>> complete(String product) async {
  return food.searchProduct(product);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<String> foodOptions = <String>[
    'Pizza',
    'Burger',
    'Pasta',
    'Hamborgor'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }
/*
  Future<void> _showWelcomeDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Welcome to Project Ambrosia'),
          content: Container(
            constraints: BoxConstraints(maxWidth: 480),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                print("hello world");
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Container(
                alignment: Alignment.center,
                height: 500,
                width: 400,
                /*
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cadu.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                */
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: _HomeContent(),
            ),
          ),
          const Visibility(
            visible: kIsWeb,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(14, 25, 0, 0),
                child: _GeminiButton(),
              ),
            ),
          ),
          const Visibility(
            visible: kIsWeb,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18, 29, 0, 0),
                child: _GeminiLogo(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> _launchUrl(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw Exception('Could not launch $url');
  }
}

class _HomeContent extends StatefulWidget {
  const _HomeContent();

  @override
  State<_HomeContent> createState() => __HomeContentState();
}

class __HomeContentState extends State<_HomeContent> {
  String searchText = '';
  bool showingSuggestions = false;
  double bRad = 35.0;
  double tRad = 35.0;
  bool clicked = false;
  List<String> filteredSuggestions = [];
  //var tempDebugger = "temporary - don't remove";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double maxWidth = constraints.maxWidth;
        double searchBarWidth = maxWidth > 630 ? 630 : maxWidth - 40;

        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: SizedBox(
                  width: 620,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(255, 133, 221, 233),
                          Color(0xFFfaf2e8),
                          Color(0xFFfdd5c8),
                          Color(0xFFf69f98),
                        ],
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: const Text(
                        'Project Ambrosia',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //DO NOT REMOVE - THIS IS TEMPORARY FOR DEBUGGING
              /*
              Center(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  //DO NOT REMOVE
                  tempDebugger,
                  style: TextStyle(color: Colors.white, fontSize: 16.00),
                ),
              )),
              */
              SizedBox(
                width: searchBarWidth,
                child: Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    final query = textEditingValue.text.toLowerCase();
                    return complete(query).then((suggestions) {
                      // Filter out suggestions that exactly match the query
                      filteredSuggestions = suggestions.where((String item) {
                        return item.toLowerCase() != query &&
                            item.toLowerCase().contains(query);
                      }).toList();

                      if (filteredSuggestions.length == 1 || filteredSuggestions.isEmpty) {
                        setState(() {
                          tRad = 35.0;
                          bRad = 35.0;
                        });
                      } else {
                        setState(() {
                          tRad = 35.0;
                          bRad = 0.0;
                        });
                      }

                      setState(() {
                        // Show suggestions if there are any left after filtering
                        showingSuggestions = filteredSuggestions.isNotEmpty;
                      });

                      return filteredSuggestions;
                    });
                  },
                  onSelected: (String item) {
                    setState(() {
                      searchText = item;
                      showingSuggestions = filteredSuggestions.isNotEmpty;
                    });
                  },
                  fieldViewBuilder: (
                    BuildContext context,
                    TextEditingController textEditingController,
                    FocusNode focusNode,
                    VoidCallback onFieldSubmitted,
                  ) {
                    return TextField(
                      onChanged: (value) {
                        if (value.length > 30) {
                          textEditingController.text = value.substring(0, 30);
                          textEditingController.selection =
                              TextSelection.fromPosition(
                            TextPosition(offset: 30),
                          );
                        }
                        setState(() {
                          showingSuggestions = filteredSuggestions.isNotEmpty;
                        });
                      },
                      //maxLength: 30,
                      controller: textEditingController,
                      focusNode: focusNode,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 29, 29, 29),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(tRad),
                            bottom: Radius.circular(bRad),
                          ),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 32, 32, 32),
                            width: 1,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35.0),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 32, 32, 32),
                            width: 1,
                          ),
                        ),
                        hintText: 'Search for food...',
                        hintStyle: const TextStyle(
                          fontSize: 16.0,
                          color: Color.fromARGB(141, 153, 153, 153),
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2499929009.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3531147474.
                                    FoodScreen(protein: 200.0,calories: 200.0,totalFats: 200.0,addedSugars: 200.0,sodium: 200.0,cholesterol: 200.0,foodName: "feces",thing: "feces",servingSize: "none",allergenNames: ["eww", "gross"]),
                              ),
                            );
                            
                            setState(() {
                              clicked = true;
                              searchText = textEditingController.text;
                            });
                          },
                          color: const Color.fromARGB(255, 129, 129, 129),
                        ),
                      ),
                    );
                  },
                  optionsViewBuilder: (
                    BuildContext context,
                    AutocompleteOnSelected<String> onSelected,
                    Iterable<String> options,
                  ) {
                    return SingleChildScrollView(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            width: searchBarWidth,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 32, 32, 32),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: filteredSuggestions.isEmpty
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 32, 32, 32),
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                  )
                                : ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    itemCount: options.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      final String option =
                                          options.elementAt(index);
                                      return Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              option,
                                              style: const TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                            onTap: () async {
                                              try {
                                                List<dynamic> stuff =
                                                    await food.getFacts(option);

                                                if (stuff.isNotEmpty &&
                                                    stuff[0] != 'error') {
                                              setState(() {
                                                      bRad = 35.0;
                                                      tRad = 35.0;
                                              });
                                                  /*
                                                  setState(() {
                                                    tempDebugger =
                                                        "successful... probably";
                                                  });
                                                  */

                                                  try {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            FoodScreen(
                                                          protein: double.parse(
                                                              stuff[0]),
                                                          calories:
                                                              double.parse(
                                                                  stuff[1]),
                                                          totalFats:
                                                              double.parse(
                                                                  stuff[2]),
                                                          cholesterol:
                                                              double.parse(
                                                                  stuff[3]),
                                                          sodium: double.parse(
                                                              stuff[4]),
                                                          addedSugars:
                                                              double.parse(
                                                                  stuff[5]),
                                                          foodName: option,
// Suggested code may be subject to a license. Learn more: ~LicenseLog:743736843.
                                                          thing: "searchText",
                                                          servingSize: stuff[6],
                                                          allergenNames: stuff[7]
                                                        ),
                                                      ),
                                                    );
                                                    
                                                  } catch (e) {
                                                    /*
                                                    setState(() {
                                                      //tempDebugger = "nope $e";
                                                    });
                                                    */
                                                  }
                                                } else {
                                                  /*
                                                  setState(() {
                                                    tempDebugger = stuff[0] +
                                                        " " +
                                                        stuff[1];
                                                  });
                                                  */
                                                }
                                              } catch (e) {
                                                /*
                                                setState(() {
                                                  tempDebugger =
                                                      "outer try block exception: $e";
                                                });
                                                */
                                              }

                                              setState(() {
                                                clicked = true;
                                              });

                                              showingSuggestions =
                                                  filteredSuggestions
                                                      .isNotEmpty;
                                              onSelected(option);
                                            },
                                          ),
                                          if (index < options.length - 1)
                                            Divider(
                                                color: Colors.grey.shade700,
                                                height: 1),
                                        ],
                                      );
                                    },
                                  ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _GeminiButton extends StatelessWidget {
  const _GeminiButton();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchUrl('https://gemini.google.com/app'),
      child: SizedBox(
        width: 180,
        height: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 32, 32, 32),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(35)),
            color: const Color.fromARGB(255, 29, 29, 29),
          ),
        ),
      ),
    );
  }
}

class _GeminiLogo extends StatelessWidget {
  const _GeminiLogo();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchUrl('https://gemini.google.com/app'),
      child: const SizedBox(
        height: 30,
        width: 161,
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/gemini.png'),
              width: 30,
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(7, 0, 0, 0),
              child: Text(
                "Powered by Gemini",
                style: TextStyle(
                  color: Color.fromARGB(255, 179, 179, 179),
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
