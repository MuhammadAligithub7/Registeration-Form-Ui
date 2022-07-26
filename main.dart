import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyRegForm(),
    );
  }
}


class MyRegForm extends StatefulWidget {
  const MyRegForm({Key? key}) : super(key: key);

  @override
  State<MyRegForm> createState() => _MyRegFormState();
}

class _MyRegFormState extends State<MyRegForm> {
  int value = 1;

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.blue.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            margin: const EdgeInsets.all(4.0),
            child: Column(
              children:   [
                Form(
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Padding(
                        padding: EdgeInsets.only(top: 24.0),
                        child: Text('Personal Information',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),
                      const SizedBox(height: 2,),

                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'Age',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                contentPadding: const EdgeInsets.symmetric(vertical: 0,horizontal:8),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15,),
                          const Expanded(
                            child: Text('Gender',style: TextStyle(fontSize: 20)),
                          ),
                          Expanded(
                            child: DropdownButtonFormField(items: const [
                              DropdownMenuItem(value: 1,child: Text('Female'),
                              ),
                              DropdownMenuItem(value: 2,child: Text('Male'),
                              ),
                               ],
                              onChanged: (value) {
                                setState(() {
                                  value = value; });},
                               hint: const Text('Female'),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal:8),
                          ),
                          ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'CNIC',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Qualification',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Contact #',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),

                      const SizedBox(height: 2,),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),

                      const SizedBox(height: 2,),

                      Row(
                        children: [
                          const Expanded(child: Text(' Attach Image',style: TextStyle(fontSize: 15),)),
                          Expanded(child: ElevatedButton(onPressed: (){}, child: const Text('Upload'))),
                        ],
                      ),

                      const  Text('Professional Information',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                      const SizedBox(height: 2,),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Your preferable teaching area',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),
                      const SizedBox(height: 2,),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Classes you can teach',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),
                      const SizedBox(height: 2,),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Subjects you can teach',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),
                      const SizedBox(height: 2,),

                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Any experience of teaching',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 2,horizontal:8),
                        ),
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text(' Attach CV',style: TextStyle(fontSize: 15),)),
                          Expanded(child: ElevatedButton(onPressed: (){}, child: const Text('Upload'))),
                        ],
                      ),
                      Row(
                        children: [
                          const Expanded(child: Text(' Attach Doc',style: TextStyle(fontSize: 15),)),
                          Expanded(child: ElevatedButton(onPressed: (){}, child: const Text('Upload'))),
                        ],
                      ),

                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                            onPressed: (){}, child: const Text('Save')),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

