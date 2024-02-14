import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //e.g 1 & 17
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment Soln',
      home: Scaffold(
        //e.g 3
        appBar: AppBar(
          title: Text('Assignment Soln'),
        ),
        body: SingleChildScrollView(
          //e.g 14
          child: Center(
            child: Padding(
              //e.g 4
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, //e.g 5
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Solution To My Assignment!',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        //e.g 6
                        color: Colors.redAccent,
                        width: 5,
                      ),
                    ),
                    child: MaterialButton(
                      //e.g 2
                      onPressed: () {
                        // Action to perform on button press
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.add), //e.g 15
                          SizedBox(width: 8),
                          Text('Add Item'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        //e.g 12
                        child: TextField(
                          //e.g 7
                          decoration: InputDecoration(
                            labelText: 'Enter your Username',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        //e.g 9
                        colors: [Colors.blue, Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    // Replace YourChildWidget with the widget you want to place on top of the gradient background
                  ),
                  ListView(
                    //e.g 10
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        title: Text('Go to Gym'),
                        subtitle: Text('Go to Gym at 6:00 AM'),
                      ),
                      ListTile(
                        title: Text('Go to Office'),
                        subtitle: Text('Go to Office at 8:00 AM'),
                      ),
                      ListTile(
                        title: Text('Attend Flutter Class'),
                        subtitle: Text('Join Code Anambra at 11:00 AM'),
                      ),
                      // Add more ListTiles as needed
                    ],
                  ),
                  SizedBox(height: 20),
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(//e.g 11
                        'https://avatars.githubusercontent.com/u/59323050?v=4'),
                  ),
                  SizedBox(height: 20),
                  MyStatefulWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  //e.g 8
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _selectedItem = 'Profile';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropdownButton<String>(
          value: _selectedItem,
          onChanged: (String? newValue) {
            setState(() {
              _selectedItem = newValue!;
            });
          },
          items: <String>['Profile', 'Settings', 'Logout']
              .map<DropdownMenuItem<String>>((String value) {
            //e.g 19
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(
          height: 5,
        ),
        GestureDetector(
          //e.g 20
          onTap: () {
            // Navigate to the next page when a menu item is selected
            Navigator.push(
              //e.g 13
              context,
              MaterialPageRoute(builder: (context) => NextPage()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.blue,
            child: Text(
              'Go to Next Page',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text(
          'This is the next page!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

/*

 1)  What is a widget in Flutter?? 
 Everything on the screen is a widget.
Flutter widgets are the UI elements that you see on the screen 
e.g. button, text, image, list, etc. Widgets can be either stateful or stateless.

Check the example 1 above

*/

/*

 2) How can you create a button in Flutter? 
Add a new widget called ElevatedButton or TextButton or OutlinedButton to where you want it. 
These are different types of buttons you can choose from depending on the style you want.
 For example, if you want a raised button, use ElevatedButton. 
 If you want a plain button with just text, use TextButton. 
 If you want an outlined button, use OutlinedButton.

Check the example 2 above

*/

/*

 3) What is the purpose of the Scaffold widget in Flutter? 
The Scaffold widget in Flutter serves as a layout structure for the majority of mobile applications.
It provides a framework for implementing the basic visual layout and structure of an app, 
including things like app bars, navigation drawers, bottom sheets, floating action buttons, and more.

Check the example 3 above

*/

/*

4) How can you add padding to a widget in Flutter? 
You can add padding to a widget using the Padding widget or 
by directly applying padding to certain widgets using their built-in 
padding properties. Many widgets in Flutter have built-in padding properties 
that allow you to add padding directly without using the Padding widget. 
For example, the Container widget has a padding property, and the Text widget has a padding property as well.

Check the example 4 above

*/

/*

5) What is the difference between mainAxisAlignment and crossAxisAlignment in a Row or Column widget? 
mainAxisAlignment and crossAxisAlignment are properties used in the Row and Column widgets to control 
how their children are positioned within them. Its alternate for both row and columns.

Check the example 5 above

*/

/*

6) How can you add a border to a container widget in Flutter?
To create a text input field in Flutter, you can use the TextField widget.

Check the example 6 above

*/

/*

7) How do you create a text input field in Flutter?
To create a text input field in Flutter, you can use the TextField widget.

Check the example 7 above

*/

/*

8) Explain the difference between Stateful and Stateless widgets in Flutter.
Stateless widgets are static and do not change over time, while Stateful widgets can maintain dynamic state and update their appearance accordingly. 
Check the example 8 above

*/

/*

9) How can you add a gradient background to a widget in Flutter?
You can add a gradient background to a widget in Flutter using the Container widget along with its decoration property, 
specifically using the BoxDecoration class.

Check the example 9 above

*/

/*

10) What is the purpose of the ListView widget in Flutter?
The ListView widget in Flutter is used to display a scrollable list of children widgets in a linear arrangement. 
Its main purpose is to efficiently display a large number of items that can be scrolled vertically or horizontally.

Check the example 10 above

*/

/*

11) How can you display images in Flutter?
To display images in Flutter, you can use the Image widget or the NetworkImage widget,
depending on whether the image is bundled with your app or fetched from a network.

Check the example 11 above

*/

/*

12) What is the purpose of the Expanded widget in Flutter?
The Expanded widget in Flutter is used to expand a child widget to fill the available space in a Row, Column, 
or Flex container. It is commonly used within these layout widgets to distribute available space among its children.

Check the example 12 above

*/

/*

13) How can you navigate between screens in Flutter?
you can navigate between screens using the Navigator class, which manages a stack of route objects representing screens in your app. 
There are several methods to perform navigation, but the most common approach is using the Navigator.push method to push a new route 
onto the stack and Navigator.pop to remove a route from the stack.

Check the example 13 above

*/

/*

14) What is the purpose of the SingleChildScrollView widget in Flutter?
The SingleChildScrollView widget in Flutter is used to make its child scrollable in a single direction. 
It is particularly useful when you have a layout that exceeds the available screen space, 
and you want to allow users to scroll through the content vertically or horizontally.

Check the example 14 above

*/

/*

15) How can you add icons to your Flutter app?
You can add icons to your app using the Icon widget. 
Flutter comes with a set of built-in icons from the Material Icons library, 
which includes popular icons like home, search, settings, etc.
You can also use custom icons from other icon packs or SVG files.

Check the example 15 above

*/

/*

16) Explain the concept of widget composition in Flutter.
Widget composition in Flutter refers to the practice of building complex user interfaces by combining and nesting simpler widgets together.
It follows the principle of breaking down the UI into smaller, reusable components, and then combining these components to create more sophisticated layouts and functionality.

Check the above as its adopted

*/

/*

17) How can you create a custom widget in Flutter?

Creating a custom widget in Flutter involves defining a new class that extends either StatelessWidget or StatefulWidget,
depending on whether your widget needs to maintain state.

Check the example 17 above

*/

/*

18) What is the purpose of the MediaQuery widget in Flutter?
The MediaQuery widget in Flutter provides information about the current app's UI, such as the size and orientation of the device's screen, 
as well as the pixel density and text scaling factor. It allows you to make your app responsive and adaptable to different screen sizes and device characteristics.

Check the example 18 above

*/

/*

19) How can you create a dropdown menu in Flutter?
you can create a dropdown menu using the DropdownButton widget along with the DropdownMenuItem widget. 
The DropdownButton widget provides a dropdown button, while DropdownMenuItem represents an item within the dropdown menu.

Check the example 19 above

*/

/*

20) Explain how to handle user input using GestureDetector in Flutter.
the GestureDetector widget is used to detect various user gestures, such as taps, drags, and scrolls, on its child widget. 
It allows you to add interactivity to your app by responding to user input. Here's how you can handle user input using GestureDetector:

a) Wrap Child Widget:
Wrap the widget that you want to make interactive with a GestureDetector. This widget can be any widget, such as Container, Image, or Text.

b) Define Gesture Callbacks:
Specify the callbacks for the gestures you want to handle using properties like onTap, onDoubleTap, onLongPress, onPanUpdate, onScaleUpdate, etc. These callbacks are triggered when the corresponding gesture is detected.

c)Implement Callback Logic:
Inside the callback methods, implement the logic to respond to the user's input. This can include updating UI elements, navigating to different screens, performing actions, or any other behavior you want your app to exhibit in response to the user's gesture.

Check the example 20 above

*/
