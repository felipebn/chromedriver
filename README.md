# chromedriver

Docker container to enable browser testing with ChromeDriver 2.35+ and Chrome Beta 65+.

## Motivation

This image was built to support testing sites with self-signed certificates in a headless chrome.

## Exposed ports

This image exposes `9515` where `chromedriver` is listening to connections.

This image also exposes `9222` where you are able to connect via `http://localhost:9222` to Chrome Remote Debugger.

## Options

You can change the window size by setting the environment variable `WINDOW_SIZE`, the default value is `1270x720`.

## Usage with Nightwatch.js

The configuration below can be used as a starter for using this image with Nightwatch.js. We do not pass chrome arguments as they are bundled into the container so we can fix the port for remote debugging.

The `debuggerAddress` option tells chromedriver to which chrome browser it should connect.

```
        "default" : {
          "selenium_port"  : 9515,
          "selenium_host"  : "localhost",
          "default_path_prefix" : "",
    
          "desiredCapabilities": {
            "browserName": "chrome",
            "chromeOptions" : {
              "debuggerAddress": "127.0.0.1:9222"
            },
            "acceptInsecureCerts": true
          }
        }
```

## Standalone Usage

`docker run -p 9515:9515 -p 9222:9222 felipebn/chromedriver`

## Compose Usage

```
services:
    chromedriver:
        image: felipebn/chromedriver:latest
        ports:
            - 9515:9515
            - 9222:9222
```