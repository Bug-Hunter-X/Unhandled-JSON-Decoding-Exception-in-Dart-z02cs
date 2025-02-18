# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving the decoding of JSON responses from APIs. The original code lacks proper error handling for cases where the JSON structure is unexpected, resulting in runtime exceptions.  The solution includes more robust error checking and handling to prevent application crashes.

## Bug Description

The `fetchData` function attempts to access the `'results'` key from the decoded JSON data. If this key is missing or the JSON structure is different than anticipated, a runtime error will occur. The original code doesn't anticipate this possibility.

## Solution

The improved code adds checks to verify the existence of the `'results'` key before attempting to access it. It also provides more informative error messages and uses a more robust method for handling different types of JSON responses.