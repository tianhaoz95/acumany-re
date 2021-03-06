# Overview

## UI/UX

For now, UI/UX is going through a brainstorm session, see [here](design-docs/ui-ux-study).

## Tech stack

For now, the tech stack is going through a brainstorm session, see [here](design-docs/tech-stack-study).

<!--
  @todo Add details for tech stack
  @body After the tech stack is decided, add details here for new developers to get started.
-->

# Quick references

* [Design Docs](./design-docs/README)
* [Documentations](./documentation/README)
* [Personal Docs](./personal/README)

# Getting started

## App

The app is built with Flutter. To get started with Flutter, follow the ["Getting started" instructions](https://flutter.dev/docs/get-started/install).

<!-- tabs:start -->

### ** Install dependencies **

```bash
cd app
flutter pub get
```

### ** Run the app **

```bash
cd app
flutter pub get
flutter run
```

### ** Run unit tests **

```bash
cd app
flutter pub get
flutter test
```

### ** Format code **

```bash
cd app
flutter pub get
flutter format .
```

### ** Run static code analysis **

```bash
cd app
flutter pub get
flutter analyze
```

<!-- tabs:end -->

## Docs

### Public

#### Overview

For simplicity, we use [Docsify](https://docsify.js.org/) as the documentation tool for public information.

#### View docs

To view the docs online, check <http://tianhaoz.com/acumany-re> for the content on the `master` branch.

To view the docs in local repository, follow the [instructions](https://docsify.js.org/#/quickstart?id=quick-start) to install Docsify, and then run the command `docsify serve docs` in the repository root directory.

#### Modify docs

To modify the docs, simply create/remove/modify the `README` files in the `docs` directory and open a pull request to check in the code (no further actions are needed).

For more tricks on how to write beautiful docs, see the [tutorial](./documentation/docs-howto).

### Confidential

Confidential information is documented in the Wiki of the private repository, [`acumany-re-credential`](https://github.com/tianhaoz95/acumany-re-credential).

# Third-party tools

## Continuous integration

* GitHub Actions: GitHub's in-house CI/CD platform. For more details, see the [docs](https://docs.github.com/en/actions).

## Continuous deployment

* Release Drafter: a action to draft releases based on commits to the `master` branch. For details, see the [docs](https://probot.github.io/apps/release-drafter/).

## Code Quality

* Commitlint: a tool to check the format of commmit message. For details, see the [docs](https://github.com/z0al/commitlint-bot).

## Code review

* Semantic Pull Requests: a tool to make sure all pull requests have the required format. For details, see the [docs](https://probot.github.io/apps/semantic-pull-requests/).
