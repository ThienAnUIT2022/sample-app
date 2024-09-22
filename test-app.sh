#!/bin/bash

APP_URL="http://localhost:5050/"

RESPONSE=$(curl -s $APP_URL)

if [[ $RESPONSE == *"expected_success_indicator"* ]]; then
  echo "The application works normally."
  exit 0
else
  echo " The application does not work as expected."
  exit 1
fi
