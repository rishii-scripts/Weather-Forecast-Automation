Feature: Activity Suggestions Based on City and Weather

  Scenario: Autocomplete suggestions appear as user types (Android & iOS)
    Given the user is on the activity search screen
    When the user starts typing a city or town name in the search field
    Then a list of autocomplete suggestions should appear below the search field
    And the suggestions should update dynamically as the user continues typing

  Scenario: Selecting an autocomplete suggestion triggers activity ranking (Android & iOS)
    Given the user sees autocomplete suggestions for their input
    When the user taps on a suggestion
    Then the app should fetch weather data for the selected location using the Open-Meteo API
    And the app should display a ranked list of activities for the next 7 days

  Scenario: Display of daily activity results (Android & iOS)
    Given the app has fetched weather data for the selected location

      | Date | Activity name | Rank (1–10) | Reasoning (e.g., “Clear skies & 22°C”) |
    And the activities should include Skiing, Surfing, Outdoor Sightseeing, and Indoor Sightseeing

  Scenario: Platform-specific keyboard and suggestion handling (Android)
    Given the user is typing in the search field on an Android device
    When the user selects a suggestion from the keyboard or suggestion list
    Then the keyboard should dismiss
    And the activity ranking results should be shown

  Scenario: Platform-specific keyboard and suggestion handling (iOS)
    Given the user is typing in the search field on an iOS device
    When the user taps a suggestion or presses "Search" on the keyboard
    Then the keyboard should dismiss
    And the activity ranking results should be shown

  Scenario: No results for invalid or unsupported location (Android & iOS)
    Given the user enters a city or town name that is not recognized
    When the user submits the query
    Then the app should display a message indicating no results were found
    And no activity ranking list should be shown