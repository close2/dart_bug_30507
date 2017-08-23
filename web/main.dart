// Copyright (c) 2017, cl. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:html';

import 'package:http/browser_client.dart';

Future main() async {
  var client = new BrowserClient();
  var resp = await client.get('https://api.holibri.com/holibri/v1/countries/list?alt=json');

  bool incorrect = resp.headers.containsKey('\ncontent-type');
  querySelector('#output').text = 'Content-type header was ${incorrect ? 'incorrectly' : 'correctly'} retrieved/parsed';
}
