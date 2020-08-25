# App How-to

## Getting started

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

### ** Format code **

```bash
cd app
flutter pub get
flutter format .
```

<!-- tabs:end -->

## Testing

<!-- tabs:start -->

### ** Static analysis **

The static analysis catches code formatting issues and compiling issues.

```bash
flutter analyze
```

> [!Note]
> There is no dedicated CI to run static analysis. Instead, both unit testing and integration testing will run static analysis as a prerequisite. For details, see `.github/workflows/app-unit-tests.yml`.

### ** Unit & widget tests **

The unit & widget tests catches logic issues and some of the UI issues. For more details on Flutter unit testing, see [the official doc on Flutter unit & widget testing](https://flutter.dev/docs/testing#unit-tests).

```bash
flutter test
```

> [!Note]
> For details on how unit tests run in CI, see `.github/workflows/app-unit-tests.yml`.

### ** Integration tests **

Integration tests catches UI issues and platform specific issues. For details, see [the official doc on Flutter integration testing](https://flutter.dev/docs/testing#integration-tests).

```bash
flutter drive --target=test_driver/mock.dart
```

> [!Note]
> For details on how integration tests run in CI, see `.github/workflows/app-integration-tests-iphone.yml`, `.github/workflows/app-integration-tests-ipad.yml` and `.github/workflows/app-integration-tests-android.yml`.

### ** Build tests **

Build tests catches compiling issue and developer credential issues in code signing.

```bash
flutter build ios --release --no-codesign
flutter build apk --split-per-abi
flutter build appbundle
flutter build web
flutter build macos
flutter build linux
```

> [!Note]
> For details on how unit tests run in CI, see `.github/workflows/app-build-tests.yml`.

<!-- tabs:end -->