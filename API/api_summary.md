# API Summary

## GitHub REST API
The GitHub REST API provides user information in JSON format.
I fetched my GitHub profile using curl and extracted selected fields using jq.

- HTTP Status: 200 OK
- Data: Name, public repositories, followers, account creation date

## JSONPlaceholder API
JSONPlaceholder is a free fake REST API used for testing.
I fetched posts using the GET request.

- HTTP Status: 200 OK
- Total posts received: 100

## Error Handling
A 404 status code means the requested resource was not found.

## jq
jq is a command-line JSON processor used to filter and extract specific fields from JSON data.
