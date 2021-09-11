import '../other_exports.dart';

final tweenAnimationBuilder = HomeItem(
    title: 'TweenAnimationBuilder Widget',
    subtitle: subtitle,
    action: () {
      Get.to(const TweenAnimationBuilderPage());
    });

class TweenAnimationBuilderPage extends StatefulWidget {
  const TweenAnimationBuilderPage({Key? key}) : super(key: key);

  @override
  _TweenAnimationBuilderPageState createState() =>
      _TweenAnimationBuilderPageState();
}

class _TweenAnimationBuilderPageState extends State<TweenAnimationBuilderPage> {
  double value = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: value),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget? child) {
            return IconButton(
              iconSize: size,
              color: Colors.blue,
              icon: child!,
              onPressed: () {
                setState(() {
                  value = value == 24.0 ? 48.0 : 24.0;
                });
              },
            );
          },
          child: const Icon(Icons.aspect_ratio),
        ),
      ),
    );
  }
}
