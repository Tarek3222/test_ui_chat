import 'package:chat_ui/models/story_model.dart';
import 'package:chat_ui/widgets/build_custom_status.dart';
import 'package:flutter/material.dart';

class BuildStatusListView extends StatelessWidget {
  const BuildStatusListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BuildCustomStatus(
            story: stories[index],
          );
        },
        itemCount: stories.length,
      ),
    );
  }
}

List<UserModel> stories = [
  UserModel(
    image: 'images/abo_treka.jpeg',
    name: 'Abo Treka',
    message: 'في جماهير وابوتريكة هيلعب',
    time: '20:00 PM',
  ),
  UserModel(
    image: 'images/afsha.jpeg',
    name: 'Afsha',
    message: 'اي قذيفة جاءت يا باتشيكو',
    time: '10:00 PM',
  ),
  UserModel(
    image: 'images/de_br.jpeg',
    name: 'De Bruyne',
    message: 'Hello, Tarek',
    time: '8:00 PM',
  ),
  UserModel(
    image: 'images/messi.jpeg',
    name: 'Messi',
    message: 'Camera Wawa',
    time: '6:00 PM',
  ),
  UserModel(
    image: 'images/nymar.jpeg',
    name: 'Neymar',
    message: '',
    time: '4:00 PM',
  ),
  UserModel(
    image: 'images/palmer.jpeg',
    name: 'Palmer',
    message: 'King of the fantasy',
    time: '2:00 PM',
  ),
  UserModel(
    image: 'images/ronaldo.jpeg',
    name: 'Ronaldo',
    message: 'Siiiiiiiiiiii',
    time: '12:00 PM',
  ),
  UserModel(
    image: 'images/salah.jpeg',
    name: 'Salah',
    message: 'Mo Salah',
    time: '10:00 AM',
  ),
];
