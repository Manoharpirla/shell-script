#!/bin/bash

# Get the current day of the week (e.g., Sunday, Monday, etc.)
day_of_week=$(date +%A)

# Check if today is Sunday
if [ "$day_of_week" = "Sunday" ]; then
    echo "Today is a holiday."
else
    echo "Today is a school day."
fi