# tcp-udp-proxy

[![GitHub stars](https://img.shields.io/github/stars/codejamninja/tcp-udp-proxy.svg?style=social&label=Stars)](https://github.com/codejamninja/tcp-udp-proxy)

![](assets/tcp-udp-proxy.png)

> proxy and load balance tcp and udp

Please ★ this repo if you found it useful ★ ★ ★


## Features

* tcp
* udb
* proxy
* load balance


## Installation

```sh
docker run codejamninja/tcp-udp-proxy
```


## Dependencies

* [Docker](https://www.docker.com)


## Usage

| Environment       | Description                                   | Default Value    |
| -----------       | --------------------------------------------- | -------------    |
| `LISTEN`          | port server listens on                        | `6888`           |
| `PROTOCOL`        | `tcp` or `udp`                                | `tcp`            |
| `PROXY_RESPONSES` | number of datagrams expected from the proxied | not set          |
| `UPSTREAM`        | array of upstream backends                    | `example.com:22` |


## Example

You can run the example I have setup. Notice that the ssh session is being
proxied over this container

```
docker-compose up
ssh root@localhost -p 6888
```

password is `root`


## Support

Submit an [issue](https://github.com/codejamninja/tcp-udp-proxy/issues/new)


## Screenshots

[Contribute](https://github.com/codejamninja/tcp-udp-proxy/blob/master/CONTRIBUTING.md) a screenshot


## Contributing

Review the [guidelines for contributing](https://github.com/codejamninja/tcp-udp-proxy/blob/master/CONTRIBUTING.md)


## License

[MIT License](https://github.com/codejamninja/tcp-udp-proxy/blob/master/LICENSE)

[Jam Risser](https://codejam.ninja) © 2019


## Changelog

Review the [changelog](https://github.com/codejamninja/tcp-udp-proxy/blob/master/CHANGELOG.md)


## Credits

* [Jam Risser](https://codejam.ninja) - Author


## Support on Liberapay

A ridiculous amount of coffee ☕ ☕ ☕ was consumed in the process of building this project.

[Add some fuel](https://liberapay.com/codejamninja/donate) if you'd like to keep me going!

[![Liberapay receiving](https://img.shields.io/liberapay/receives/codejamninja.svg?style=flat-square)](https://liberapay.com/codejamninja/donate)
[![Liberapay patrons](https://img.shields.io/liberapay/patrons/codejamninja.svg?style=flat-square)](https://liberapay.com/codejamninja/donate)
