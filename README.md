
This repository contains resources and test flows for validating weather-related features in mobile applications (Android and iOS). It is organized to support automated testing and validation of weather activity suggestions, API responses, and UI flows.

## Project Structure

- **components/**: Contains reusable YAML components for various test scenarios, including:
  - `app-launch-android.yaml` / `app-launch-ios.yaml`: App launch steps for Android and iOS.
  - `activity/`: Activity-related test components, such as API failure handling, autocomplete validation, no results, city selection triggers, and 7-day results verification.

- **flows/**: Contains end-to-end test flow definitions for both Android and iOS platforms.
  - `activity-test-flow-android.yaml`: Test flow for Android activity scenarios.
  - `activity-test-flow-ios.yaml`: Test flow for iOS activity scenarios.
- **activity_suggestions.feature**: Feature file describing activity suggestion scenarios in Gherkin syntax.
- **README-android.md** / **README-ios.md**: Platform-specific documentation for Android and iOS test flows and setup.

## Getting Started

1. **Clone the repository:**
   ```sh
   git clone <repo-url>
   cd Weather-Assignment
   ```
2. **Review platform-specific instructions:**
   - See `README-android.md` for Android setup and usage.
   - See `README-ios.md` for iOS setup and usage.
3. **Explore test components and flows:**
   - Components are in the `components/` directory.
   - Test flows are in the `flows/` directory.

---

For more details on individual flows or components, refer to the respective YAML files and platform-specific READMEs.
