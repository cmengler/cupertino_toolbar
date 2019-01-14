# Cupertino Toolbar
[![pub package](https://img.shields.io/pub/v/cupertino_toolbar.svg)](https://pub.dartlang.org/packages/cupertino_toolbar) [![GPL-3.0 license](https://img.shields.io/badge/license-GPL--3-blue.svg)](https://github.com/cmengler/cupertino_toolbar/blob/master/LICENSE)

Flutter Cupertino Widget designed to replicate iOS UIToolbar component.

This package consists of two widgets, the `CupertinoToolbar` and `CupertinoToolbarItem`. The CupertinoToolbar is typically used as the `child` attribute of a `CupertinoPageScaffold` widget.

The CupertinoToolbarItem defines the `icon` and `onPressed` callback of the toolbar button.

## Usage

```dart
import 'package:cupertino_toolbar/cupertino_toolbar.dart';
```

```dart
CupertinoPageScaffold(
	navigationBar: CupertinoNavigationBar(
		middle: Text('Cupertino Toolbar')
	),
	child: CupertinoToolbar(
		items: <CupertinoToolbarItem>[
			CupertinoToolbarItem(
				icon: CupertinoIcons.plus_circled,
				onPressed: () {}
			),
			CupertinoToolbarItem(
				icon: CupertinoIcons.minus_circled,
				onPressed: () {}
			)
		],
		body: Center(
			child: Text('Hello World')
		)
	)
);
```
## Screenshot
![Cupertino Toolbar Demo](https://raw.githubusercontent.com/cmengler/cupertino_toolbar/master/img/screenshot_cupertino_toolbar.png)

## Contributing
Pull requests are always welcome, please use the `develop` branch for all PR.