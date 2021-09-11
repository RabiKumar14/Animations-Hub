import '../other_exports.dart';

final animatedSize = HomeItem(
    title: 'AnimatedSize Widget',
    subtitle: subtitle,
    action: () {
      Get.to(const AnimatedSizePage());
    });

class AnimatedSizePage extends StatefulWidget {
  const AnimatedSizePage({Key? key}) : super(key: key);

  @override
  _AnimatedSizePageState createState() => _AnimatedSizePageState();
}

class _AnimatedSizePageState extends State<AnimatedSizePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSize(
          vsync: this,
          duration: const Duration(seconds: 2),
          child: SizedBox(
            height: double.infinity,
            child: Image.asset(
              img1,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
