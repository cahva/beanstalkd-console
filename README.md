# beanstalkd-console

Admin console for Beanstalk queue server.

This is a fork of https://github.com/schickling/dockerfiles/tree/master/beanstalkd-console

Added the basic auth possibility (defaults to false). This will set the auth parameters in config.php based on the environment variables you set.


## Usage

```sh
$ docker run -d -p 11300:11300 --name beanstalkd schickling/beanstalkd
$ docker run -d -p 2080:2080 --link beanstalkd:beanstalkd -e "BEANSTALKD_AUTH=true" -e "BEANSTALKD_USER=user" -e "BEANSTALKD_PW=password" cahva/beanstalkd-console
```

`beanstalkd-console` automatically works when the Beanstalkd docker container is linked as `beanstalkd` since it populates the `BEANSTALK_SERVERS` environment variable with `$BEANSTALKD_PORT_11300_TCP_ADDR:11300`.

Environment values you can use to set the authentication variables:

```
BEANSTALKD_AUTH=true/false
BEANSTALKD_USER=user
BEANSTALKD_PW=yourpassword
```
