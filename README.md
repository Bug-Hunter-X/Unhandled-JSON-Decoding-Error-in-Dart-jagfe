# Unhandled JSON Decoding Error in Dart

This repository demonstrates a common error in Dart applications involving JSON decoding: attempting to access a non-existent key in a JSON response without proper error handling.  The `bug.dart` file contains the buggy code. The `bugSolution.dart` file shows how to improve the error handling.

The original code lacks robust error checking, making it prone to crashes when encountering unexpected JSON structures. The solution demonstrates how to check for the key's existence before accessing it to prevent exceptions.