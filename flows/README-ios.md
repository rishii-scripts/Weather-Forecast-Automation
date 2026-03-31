# iOS Maestro Flow – Activity Test Suite

This flow runs a sequence of automated UI tests for the Activity Suggestions feature on iOS using Maestro.

## Included Steps

- Launches the app and handles iOS-specific permissions
- Validates autocomplete suggestions as you type
- Selects a city and triggers the API
- Verifies 7-day activity ranking results

## Flow File

**flows/activity-test-flow-ios.yaml**

```
- runFlow:
    file: ../components/app-launch-ios.yaml

- runFlow:
    file: ../components/activity/autocomplete-validation.yaml

- runFlow:
    file: ../components/activity/select-city-api-trigger.yaml

- runFlow:
    file: ../components/activity/verify-7day-results.yaml
```

## How to Run

1. Make sure you have [Maestro](https://maestro.mobile.dev/) installed and your iOS simulator running.
2. From your project root, run:

```
maestro test --app <path-to-app.ipa> flows/activity-test-flow-ios.yaml
```

Replace `<path-to-app.ipa>` with the path to your iOS build (must be built for simulator).

## Example Command

```
maestro test --app app-sim.ipa flows/activity-test-flow-ios.yaml
```

Replace `app-sim.ipa` with your actual iOS simulator build file name or path.

## Notes
- The appId is set to `com.weather.app` in the flow file.
- Ensure your simulator is running and unlocked before starting the test.
- All referenced component YAMLs must exist in the specified paths.

---

For troubleshooting and more Maestro commands, see the [Maestro documentation](https://maestro.mobile.dev/).