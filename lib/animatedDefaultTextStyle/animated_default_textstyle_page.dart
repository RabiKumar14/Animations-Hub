import '../other_exports.dart';

final animatedDefaultTextStyle = HomeItem(
    title: 'AnimatedDefaultTextStyle Widget',
    subtitle: subtitle,
    action: () {
      Get.to(const AnimatedDefaultTextStylePage());
    });

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({Key? key}) : super(key: key);

  @override
  _AnimatedDefaultTextStylePageState createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  bool selected = true;
  TextStyle style1 = const TextStyle(fontSize: 30, color: Colors.blue);
  TextStyle style2 = const TextStyle(fontSize: 50, color: Colors.green);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected == true ? selected = false : selected = true;
          });
        },
        child: Center(
          child: AnimatedDefaultTextStyle(
            style: selected ? style1 : style2,
            duration: const Duration(seconds: 1),
            child: const Text('Animation'),
          ),
        ),
      ),
    );
  }
}
