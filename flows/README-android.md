# Android Maestro Flow – Activity Test Suite

This flow runs a sequence of automated UI tests for the Activity Suggestions feature on Android using Maestro.

## Included Steps

- Launches the app and handles Android-specific permissions
- Validates autocomplete suggestions as you type
- Selects a city and triggers the API
- Verifies 7-day activity ranking results

## Flow File

**flows/activity-test-flow-android.yaml**

```
- runFlow:
    file: ../components/app-launch-android.yaml

- runFlow:
    file: ../components/activity/autocomplete-validation.yaml

- runFlow:
    file: ../components/activity/select-city-api-trigger.yaml

- runFlow:
    file: ../components/activity/verify-7day-results.yaml
```

## How to Run

1. Make sure you have [Maestro](https://maestro.mobile.dev/) installed and your Android emulator running.
2. From your project root, run:

```
maestro test --app <path-to-app.apk> flows/activity-test-flow-android.yaml
```

Replace `<path-to-app.apk>` with the path to your Android build (APK file).

## Example Command

```
maestro test --app app-debug.apk flows/activity-test-flow-android.yaml
```

Replace `app-debug.apk` with your actual APK file name or path.

## Notes
- The appId is set to `com.weather.app` in the flow file.
- Ensure your emulator is running and unlocked before starting the test.
- All referenced component YAMLs must exist in the specified paths.
- The --app flag is always required to specify which APK to install and test, even if your emulator is already running.
- Your APK build file (e.g., app-debug.apk) should be present in your project root or specify the correct path in the Maestro command.

---

For troubleshooting and more Maestro commands, see the [Maestro documentation](https://maestro.mobile.dev/).