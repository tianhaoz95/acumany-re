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

The app server interface schema is an important decision to make since it affects the choice of both server and app.

> Note that with careful design, the server can support more than one interface schema.

### Things to consider

The interface schemas should be evaluated on:

* Flexibility: how easy is it to make an interface change
* Usability: how easy is it for server and app to use the interface
* Maintainability: how much effort is needed for server and app to keep in sync
* Stability: how reliable is it to communicate through the interface

### Candidates

#### GraphQL

GraphQL is a query language spec developed by Facebook whose biggest feature is pushing the capability of API from server to client. For example, the server may have only one API and the client will send over both the query content and a spec of data it wants. For more details, see the [official doc](https://graphql.org/).

Advantages:

* Flexible: features that don't change the fundamental data structure can be added without server change.

> For example, if the app requires a list of users instead of just a single user, it doesn't need a server change, but if the definition of a user is changed, server change is required.

* Universal: as of now, it's a common practice for services to expose GraphQL APIs to the public, so if we intent to integrate with 3rd party services through APIs, using GraphQL might save a shim layer.

Disadvantages:

* Higher integration cost: as Facebook is not a cloud service vendor, there is no cloud service that is natively integrated with GraphQL which requires a bit more tinkering to get it to work.
* Poor stability: as GraphQL encourages adding logic at the client side, developers are more prompted to perform sequential async operations on the client side which can easily turn into corrupted data if the client exit accidentally.
* Extra data conversion: as GraphQL presents data in the format of JSON, if the client and server are in different languages, extra data parsing and integrity checking are needed.

#### Protobuf + Firebase app calls

Protobuf is a typed language-neutral JSON replacement introduced by Google. For details, check the [docs](https://developers.google.com/protocol-buffers/).

Firebase app calls is part of Firebase SDK which abstracts authentication and data conversion in API calls. For details, see the [docs](https://firebase.google.com/docs/functions/callable).

Advantages:

* Easier migration to gRPC: since gRPC is based on Protobuf, this will make it eaiser to migrate to gRPC in the future if prefered.
* Google ecosystem friendly: since Protobuf is widely used in Google services, this will make integration with other Google cloud products easier.
* Less data conversion: Protobuf is language neutral so there will be one interface generated per language saving some effort to convert and check data.
* Maintainable: since the interface for both side comes from the same code, it's easier to catch mismatches in integration tests.

Disadvantages:

* Vendor lock-in: basically Firebase app calls only work within the Firebase ecosystem.
* Higher setup cost: setting up a Protobuf interface is a non-trivial work.
* Less flexible: since any interface change will require both server and app change.

#### Protobuf + gRPC

gRPC is a remote procedure call framework developed by Google. For details, see the [docs](https://grpc.io/).

It is different from GraphQL in that, instead of letting the client decide the query capability, the query capability is defined by a spec file that is outside server and client code.

Advantages:

* Simplicity: gRPC is a all-in-one solution that completely omits server code like GraphQL, but with all the benifits that comes with Protobuf since it uses Protobuf.

Disadvantages:

* No out-of-box service support: basically to use gRPC, the server has to be hosted on a basic VM, not microservices platforms.

#### JSON + REST

JSON + REST API is the most primative yet widely used schema.

Advantages:

* Flexible: JSON is just a string, so it can be customized.
* Universal: most REST API uses plain JSON

Disadvantages:

* Hard to change: to change interface, need to change parsing, checking and sync app and server.
* Plus all the problems other frameworks are trying to solve.

<!--
  @todo List the app requirement and decide which app server interface to use
  @body Now that all the candidates are listed, we need to choose one that fits the app's needs.
-->
