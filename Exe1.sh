#!/bin/bash

echo "
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
echo "Invalid input! Please enter a valid integer."
exit 1
fi