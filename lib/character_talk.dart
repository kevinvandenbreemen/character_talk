library character_talk;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

/// Provides a hovering rectangle with what your character says/some narration in it.
/// Useful for making video games or maybe visual story telling games a la RenPy.
class CharacterTalk {

  /// Generate rectangle bubble for showing some speech
  /// 
  /// [text] - Text to display in the box
  Widget getSpeechDisplay({BuildContext context, String text}) {

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150.0,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3.0
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        ),
        color: Colors.indigo,
      ),
      child: TyperAnimatedTextKit(
        duration: Duration(milliseconds: 500),
        isRepeatingAnimation: false,
        text: [text],
        textStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24
        ),
      ),
    );
  }

}