# Font Processor
Generate font formats from ttf into woff and woff2.

## Overview
```
for TTF in $(ls ./static/fonts/{Bebas_Neue,Source_Sans_Pro}/*.ttf); do
	docker run --rm -v ${PWD}:/build ghcr.io/uitsmijter/font-processor ${TTF};
done
```


## Installation

Pull the latest docker image from the registry: 
```shell
docker pull ghcr.io/uitsmijter/font-processor:latest
```

## Support
For help with the font-processor please visit our [discourse](https://discourse.uitsmijter.io) server.

## Contribution

In the interest of fostering an open and welcoming environment, we as contributors and 
maintainers pledge to making participation in our project and our community a 
harassment-free experience for everyone, regardless of age, body size, disability, 
ethnicity, gender identity and expression, level of experience, nationality, personal 
appearance, race, religion, or sexual identity and orientation.

Please read our [Code of Conduct](https://docs.uitsmijter.io/contribution/codeofconduct/)
