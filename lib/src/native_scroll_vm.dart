import 'package:flutter/widgets.dart';

class NativeScrollBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, ScrollController controller)
      builder;

  const NativeScrollBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  _NativeScrollBuilderState createState() => _NativeScrollBuilderState();
}

class _NativeScrollBuilderState extends State<NativeScrollBuilder> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _scrollController);
  }
}
