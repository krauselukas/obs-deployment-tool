# obs-deployment-tool

[![CircleCI](https://circleci.com/gh/openSUSE/obs-deployment-tool.svg?style=svg)](https://app.circleci.com/pipelines/github/openSUSE/obs-deployment-tool)
[![codebeat badge](https://codebeat.co/badges/a739bfce-3e90-4d09-8e4e-85e3653e2444)](https://codebeat.co/projects/github-com-opensuse-obs-deployment-tool-main)

This repository contains the [mina]("https://github.com/mina/mina-deploy") script to deploy our reference server

### Features

- Check which package is available to be installed
- Check which was the last deployed commit
- Check if there is pending migrations
- View pending migrations
- View diff of pending changes
- Deploy with pending migrations
- Deploy without pending migrations

### How to use it

Since mina is a [rake Application](https://docs.ruby-lang.org/en/2.2.0/Rake/Application.html), it behaves exactly like rake, so to see all available tasks:

```$ mina -T```

Passing environment variables:

```$ PACKAGE_NAME=obs-api-test mina obs:package:available```

### How to install it

```$ git clone https://github.com/openSUSE/obs-deployment-tool.git```

```$ bundle install ```

```$ mina -T```

# How to run it in development

```rake dev:build```

```docker-compose up```

```docker-compose exec client bash```

In the client:

```ssh root@server```

The development tree can be found on the client container
`/obs-deployment-tool`, so it's possible to do:


```cd /obs-deployment-tool```

```bundle install```

```mina -T```


### How to contribute with code

Fork the repository and send a pull request with your changes.
