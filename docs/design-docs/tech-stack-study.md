# Tech Stack Study

This design doc is the initial feasibility study to help decide the tech stack that we should use to build the app.

## Platform preference

<!--
  @todo Platform preference
  @body Decide if we should go with mobile first or web first.
-->

## Service vendor

<!--
  @todo Choose service vendor
  @body List our needs and avaiable frameworks, and choose the one that fits our needs.
-->

## App framework

### Requirements

<!--
  @todo List the requirements of the app
  @body List out the app's requirements when the high-level UI/UX design is available.
-->

### Candidates

#### React

React is a front-end JavaScript framework. For details, see the [docs](https://reactjs.org/).

Advantages:

* Flexible: can be used with many other frameworks.

Disadvantages:

* Hard to maintain since there is no single correct way of doing things.
* No support outside web.

#### React Native / Expo

React Native = React + Native UI components. For details, see the [docs](https://reactnative.dev/).

Expo is a second-level framework built on top of React Native to make it easier to use. For details, see the [docs](https://expo.io/).

Advantages:

* Flexible

Disadvantages:

* Hard to maintain since there is no single correct way of doing things.
* Performance issue: page rendering is pretty slow.

#### Ionic

Ionic is similar to React Native, except that it focuses on building reactive UI. For details, see the [docs](https://ionicframework.com/).

Advantages:

* Flexible, but less flexible than barebone React Native (works with React and Angular).
* Usable performance: slightly slower than native code.

Disadvantages:

* Limited support for tools like WebRTC and authentication services.

#### Flutter

Flutter is also a cross-platform framework that focuses on reactive UI. For details, see the [docs](https://flutter.dev/docs).

However, instead of using web technologies, Flutter decides to build everything from scratch and grow its own ecosystem which is not necessarily a bad thing since all the bad stuff from web development will not carry over.

Advantages:

* Native performance.
* Better integration with Google ecosystem.
* Best practices are well defined.

Disadvantages:

* One more language to learn: Flutter uses Dart, a less known language.
* Not so flexible since for most of the things, there is only one "best" approach.

### Final decision

<!--
  @todo Deciside which app framework to use
  @body Deciside which app framework aligns better with the UI/UX design and the functionalities.
-->

## Server framework

<!--
  @todo Choose server framework
  @body List our needs and avaiable frameworks, and choose the one that fits our needs.
-->

## App server interface schema

<!--
  @todo Choose app server interface schema
  @body List our needs and avaiable app server interface schema, and choose the one that fits our needs.
-->
