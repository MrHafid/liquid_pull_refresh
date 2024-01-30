# <div align="center">Liquid Pull Refresh</div>
<div align="center"><p>A beautiful and custom refresh indicator with image in loader or widget.</p></div><br>

<div align="center">
	<a href="https://flutter.io">
    <img src="https://img.shields.io/badge/Platform-Flutter-yellow.svg"
      alt="Platform" />
  </a>
  	<a href="https://pub.dartlang.org/packages/liquid_pull_refresh">
    <img src="https://img.shields.io/pub/v/liquid_pull_refresh.svg"
      alt="Pub Package" />
  </a>
<!--   </a>
  	<a href="https://pub.dartlang.org/packages/liquid_pull_refresh">
    <img src="https://mrhafid.my.id/theme/mrhafidPC/img/ic_logo.png"
      alt="My Profolio" />
  </a> -->
  
</div><br>

# Installing

### 1. Depend on it
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  liquid_pull_refresh: ^0.0.1
```

### 2. Install it

You can install packages from the command line:

with `pub`:

```css
$ pub get
```

with `Flutter`:

```css
$ flutter packages get
```

### 3. Import it

Now in your `Dart` code, you can use: 

```dart
import 'package:liquid_pull_refresh/liquid_pull_refresh.dart';
```


# Usage

For adding this custom refresh indicator in your flutter app, you have to simply wrap *ListView*  or *GridView* inside `LiquidPullRefresh`. Also you have provide the value of `onRefresh` parameter which is a refresh callback. 

**Note -** `LiquidPullRefresh` can only be used with a vertical scroll view.

For example:

```dart
LiquidPullRefresh(
        backgroundColor: widget.loaderColor,
        // animSpeedFactor: 2.0,
        color: widget.backgroundColor,
        heightLoader: 150,
        // showDroplet: true,
        loaderWidget: widget.loaderWidget,
        springAnimationDurationInMilliseconds: 400,
        showChildOpacityTransition: false,
        key: widget.refreshIndicatorLiquidKey, // key if you want to add
        onRefresh: widget.onRefresh, // refresh callback
        child: widget.childAdapter, // scroll view
      );
```

If you do not want the opacity transition of child then set `showChildOpacityTransition: false`.  Preview regarding the both form of this widget is follows :-
<div align="center">
<table>
<thead>
<tr>
<th style="text-align:center"><code>showChildOpacityTransition: true</code></th>
<th style="text-align:center"><code>showChildOpacityTransition: false</code></th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:center"><img src="https://github.com/aagarwal1012/Liquid-Pull-To-Refresh/blob/master/display/liquid.gif?raw=true" height = "500px"/></td>
<td style="text-align:center"><img src="https://github.com/aagarwal1012/Liquid-Pull-To-Refresh/blob/master/display/liquid_false.gif?raw=true" height = "500px"/></td>
</tr>
</tbody>
</table>
</div>

# Documentation

### LiquidPullToRefresh Class

| Dart attribute                        | Datatype        | Description                                                                                            |     Default Value     |
| :------------------------------------ | :-------------- | :----------------------------------------------------------------------------------------------------- | :-------------------: |
| child                                 | ScrollView      | The widget below this widget in the tree.                                                              |       @required       |
| onRefresh                             | RefreshCallback | A function that's called when the refreshing of page takes place.                                      |       @required       |
| height                                | double          | The distance from the child's top or bottom edge to where the box will settle after the spring effect. |         100.0         |
| springAnimationDurationInMilliseconds | int             | Duration in milliseconds of springy effect that occurs when we leave dragging after full drag.         |         1000          |
| borderWidth                           | double          | Border width of progressing circle in Progressing Indicator.                                           |          2.0          |
| showChildOpacityTransition            | bool            | Whether to show child opacity transition or not.                                                       |         true          |
| color                                 | Color           | The progress indicator's foreground color.                                                             | ColorScheme.secondary |
| backgroundColor                       | Color           | The progress indicator's background color.                                                             | ThemeData.canvasColor |
| animSpeedFactor                       | double          | Controls the speed of the animation after refresh. Used to fasten the ending animation.                |          1.0          |
| heightLoader                          | double          | Height loader.                                                                                         |          100.0        |
| showDroplet                           | bool            | Show drop like water, default true                                                                     |          true         |
| loaderWidget                          | Widget          | Show add widget inside loader for image or other widget.                                               |       Container()     |

For help on editing package code, view the [flutter documentation](https://flutter.io/developing-packages/).

# License
Liquid-Pull-To-Refresh is licensed under `MIT license`. View [license](https://go.mrhafid.my.id/liquidpullrefresh).
