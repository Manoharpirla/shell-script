#!/bin/bash

# Get the current day of the week (e.g., Sunday, Monday, etc.)
day_of_week=$(date)

# Check if today is Sunday
if [ "$day_of_week" -ne "Sun" ]; then
    echo "Today is not holiday."
    exit 1
else
    echo "Today is a school day."
fi