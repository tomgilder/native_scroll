library native_scroll;

export 'src/native_scroll_vm.dart'
    if (dart.library.js) 'src/native_scroll_web.dart';
