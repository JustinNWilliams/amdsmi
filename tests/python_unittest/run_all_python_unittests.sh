#!/bin/bash
# Script Name: test_script_functions.sh
# Description: A script that executes unit tests.
# Author: juan.castillo@amd.com
# Date: 2024-09-20
# Exit immediately if a command exits with a non-zero status.
set -e
# Function to run unit tests
function run_unit_tests() {
    echo "Running unit tests..."
    script_dir="$(dirname "$(realpath "$0")")"
    python3 "$script_dir/unit_tests.py" -v
    echo "Unit tests completed."
}
function run_integ_tests() {
    script_dir="$(dirname "$(realpath "$0")")"
    echo "Running integration tests..."
    python3 "$script_dir/integration_test.py" -v
}
# add main function
function run_all_tests() {
    run_unit_tests
    run_integ_tests
}
# Main function
function main() {
    run_all_tests
}
# Call main function
main