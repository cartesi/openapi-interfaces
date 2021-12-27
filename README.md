> :warning: The Cartesi team keeps working internally on the next version of this repository, following its regular development roadmap. Whenever there's a new version ready or important fix, these are published to the public source tree as new releases.

# Cartesi OpenAPI Interfaces

HTTP interfaces specified with OpenAPI.

## Getting Started

Download the [swagger-codegen](https://github.com/swagger-api/swagger-codegen/tree/v3.0.30) cli tool with the following command.

```
wget https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.30/swagger-codegen-cli-3.0.30.jar -O swagger-codegen-cli.jar
```

Then, run the following command to generate the documentation page.

```
java -jar swagger-codegen-cli.jar generate -l html2 -i dapp.yaml
```

## License

The grpc-interfaces repository and all contributions are licensed under [APACHE 2.0](https://www.apache.org/licenses/LICENSE-2.0). Please review our [LICENSE](LICENSE) file.
