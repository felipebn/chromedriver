#!/bin/bash

/usr/bin/google-chrome \
    --disable-background-networking \
    --disable-client-side-phishing-detection \
    --disable-default-apps \
    --disable-gpu \
    --disable-hang-monitor \
    --disable-popup-blocking \
    --disable-prompt-on-repost \
    --disable-sync \
    --disable-web-resources \
    --enable-automation \
    --enable-logging \
    --force-fieldtrials=SiteIsolationExtensions/Control \
    --headless \
    --ignore-certificate-errors \
    --load-extension=/tmp/.org.chromium.Chromium.3mOQdD/internal \
    --log-level=0 \
    --metrics-recording-only \
    --no-first-run \
    --no-sandbox \
    --password-store=basic \
    --remote-debugging-port=9222 \
    --remote-debugging-address=0.0.0.0 \
    --test-type=webdriver \
    --use-mock-keychain \
    --user-data-dir=/tmp/.org.chromium.Chromium.60dQ4a data:, &

chromedriver --whitelisted-ips=
