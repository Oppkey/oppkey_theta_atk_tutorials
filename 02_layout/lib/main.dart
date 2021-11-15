import 'package:flutter/material.dart';
// the thetaf package must be in your pubspec.yaml file for
// the import to work
import 'package:thetaf/thetaf.dart';

void main() {
  runApp(const ThetaApp());
}

class ThetaApp extends StatelessWidget {
  const ThetaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // ThetaWindow() is the root Widget of all
        // thetaf widgets.
        body: ThetaWindow(
          // a Column will arrange your app vertically with a
          // ResponseWindow on the top.
          child: Column(
            children: [
              // SizedBox is used to add spacing to the top of the screen
              // useful for some mobile phone screens to place the app
              // below the topbar overlay
              const SizedBox(
                height: 20,
              ),
              // use ResponseWindow from thetaf for text output
              // from the camera.  Example: InfoButton, StateButton
              const ResponseWindow(
                // flex is a size ratio.  The ResponseWindow and the
                // button section will be in a 5:5 ratio. The space
                // allocated to the buttons and the top window will be
                // equal
                flex: 5,
              ),
              Expanded(
                flex: 5,
                // ListView is scrollable
                child: ListView(
                  controller: ScrollController(),
                  children: const [
                    // begin button list
                    InfoButton(),
                    // SizedBox is used to add spacing between buttons
                    SizedBox(
                      height: 10,
                    ),

                    // add additional buttons here
                    // more information https://oppkey.github.io/oppkey_theta_atk/
                    // API docuementation, including list of buttons:
                    // https://oppkey.github.io/oppkey_thetaf/
                    //

                    StateButton(),
                    SizedBox(
                      height: 10,
                    ),
                    TakePictureButton(),
                    // end button list
                    // Do not put buttons below this line
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
