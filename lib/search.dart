import 'package:flutter/material.dart';
import 'package:p1/XDDirections.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<search> {
  List<Map<String, dynamic>> foodList = [
    {
      "id": 1,
      "title": "Egg toast",
      "page": XDDirections(),
      "name": "Egg toast",
      "image": "assets/images/img7.jpg"
    },
    {
      "id": 2,
      "title": "Roselle juice",
      "page": XDDirections(),
      "name": "Roselle juice",
      "image": "assets/images/img8.jpg"
    },
    {
      "id": 3,
      "title": "creamy garlic butter tuscan salmon",
      "page": XDDirections(),
      "name": "creamy garlic butter tuscan salmon",
      "image": "assets/images/img9.jpg"
    },


    // 'Egg toast',
    // 'Roselle juice',
    // 'creamy garlic butter tuscan salmon',
  ];

  List<Map<String, dynamic>> _foodListSearch = [];

  // final FocusNode _textFocusNode = FocusNode();
  // TextEditingController? _textEditingController = TextEditingController();

  @override
  void initState() {
    _foodListSearch = foodList;// all
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = foodList;
    } else {
      results = foodList
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foodListSearch = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [ const SizedBox(
              height: 20,
            ),

           TextField(
             onChanged: (value) => _runFilter(value),
             decoration: const InputDecoration(
               labelText: 'Search', suffixIcon: Icon(Icons.search))
           ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foodListSearch.isNotEmpty
                  ? ListView.builder(
                itemCount: _foodListSearch.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foodListSearch[index]["id"]),
                  color: Colors.amberAccent,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),

                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context){
                              return Scaffold(
                                body: _foodListSearch[index]['page'],
                              );
                            }),
                      );
                    },
                    child: ListTile(

                      title: Text(_foodListSearch[index]['name']),

                      trailing: Image.asset(_foodListSearch[index]['image']),
                    ),
                  ),
                ),

              )

                  :const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              )
            )
          ],
        ),
      ),
    );
  }
}

