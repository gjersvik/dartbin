import 'dart:html';

import 'package:ace/ace.dart' as ace;
import 'package:ace/proxy.dart';

void main() {
  ace.implementation = ACE_PROXY_IMPLEMENTATION;
  ace.Editor editor = ace.edit(querySelector("#editor"));
  editor.theme = new ace.Theme.named(ace.Theme.ECLIPSE);
  editor.session.mode = new ace.Mode.named(ace.Mode.DART);
}
