$CURRENT_DIR = Get-Location
$SCRIPT_DIR = Split-Path -Parent $PSScriptRoot
$PROJ_ROOT = Split-Path -Parent $SCRIPT_DIR
$APP_ROOT = "$PROJ_ROOT\app"

Write-Output "Use $PROJ_ROOT as the project root directory."

$FIREBASE_ROOT = "$PROJ_ROOT\vendor\firebase"

Write-Output "Use $FIREBASE_ROOT as the Firebase root directory."

Set-Location -Path "$APP_ROOT"

flutter build web

dartdoc --exclude `
  'dart:async,dart:collection,dart:convert,dart:core,dart:developer,`
  dart:io,dart:isolate,dart:math,dart:typed_data,dart:ui,dart:ffi,`
  dart:html,dart:js,dart:js_util'

If (Test-Path "$FIREBASE_ROOT\tmp" -PathType Container) {
  Write-Output "$FIREBASE_ROOT\tmp exist. Remove first."
  Remove-Item -Path "$FIREBASE_ROOT\tmp" -Force -Recurse
}

Copy-Item "$PROJ_ROOT\app\build\web" -Destination "$FIREBASE_ROOT\tmp\web_app" -Recurse

Copy-Item "$PROJ_ROOT\app\doc\api" -Destination "$FIREBASE_ROOT\tmp\app_docs" -Recurse

Set-Location -Path "$FIREBASE_ROOT"

firebase deploy --only hosting

Set-Location -Path "$CURRENT_DIR"
