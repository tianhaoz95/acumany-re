# CI How-to

## Overview

## CIs for app

<!-- tabs:start -->

### ** Build tests **

```bash
.github/workflows/app-build-tests.yml
```

### ** Android integration tests **

```bash
.github/workflows/app-integration-tests-android.yml
```

### ** iPad integration tests **

```bash
.github/workflows/app-integration-tests-ipad.yml
```

### ** iPhone integration tests **

```bash
.github/workflows/app-integration-tests-iphone.yml
```

### ** Web integration tests **

> [!WARNING]
> Still work in progress

### ** Unit tests **

```bash
.github/workflows/app-unit-tests.yml
```

<!-- tabs:end -->

## Generic CIs

<!-- tabs:start -->

### ** Release drafter **

Release drafter is a workflow to update the draft for the next release by analyzing the incoming pull requests into the main branch.

```bash
.github/workflows/release-drafter.yml
```

```bash
.github/release-drafter.yml
```

<!-- tabs:end -->
