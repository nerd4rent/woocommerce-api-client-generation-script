# Kotlin Woocommerce API Client Generation Script

This is a helper script to generate a Kotlin Woocommerce API client with an openapi-generator-cli running on docker.
The script by default uses Spring Boot 3 WebClient as the default generator.

## Usage

Replace `<main package name>` with the name of the package you want to generate. For example, if you're producing an API client for a package named `com.myapp.api`, your command would look like `./generate.sh com.myapp.api`.

~~~bash
./generate.sh <main package name>
~~~

## Example

In this example, the `<main package name>` is replaced by `com.example.woocommerce`:

~~~bash
./generate.sh com.example.woocommerce
~~~