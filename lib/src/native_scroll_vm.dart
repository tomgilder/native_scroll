import 'package:flutter/widgets.dart';

class NativeScrollBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, ScrollController controller)
      builder;

  const NativeScrollBuilder({
    Key? key,
    this.controller,
    required this.builder,
  }) : super(key: key);
  ScrollController? controller;

  @override
  _NativeScrollBuilderState createState() => _NativeScrollBuilderState();
}

class _NativeScrollBuilderState extends State<NativeScrollBuilder> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _scrollController = widget.controller!;
    } else {
      _scrollController = ScrollController();
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _scrollController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _scrollController);
  }
}
