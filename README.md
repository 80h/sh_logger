<br />
<div align="center">
  <h3 align="center">sh_logger</h3>
 
  <p align="center">
    Simple wrapper of logger for writing output (stdout and stderr) of script to systemd journal.
  </p>
</div>

### Prerequisites
* logger (util-linux)

### Installation
```
$ sudo mkdir /opt/scripts && chown $(whoami).$(whoami) /opt/scripts
$ git clone https://github.com/80h/sh_logger.git /opt/scripts/sh_logger
$ sudo ln -s /opt/scripts/sh_logger/sh_logger.sh /usr/local/sbin/sh_logger
$ chmod ug+x /opt/scripts/sh_logger/sh_logger.sh
```

### Usage

> **sh_logger** [ *logger_tag* ] [ *execute_string* ]

### Demo

```
$ crontab -l | tail -1
* * * * * /usr/local/sbin/sh_logger demo_script "/usr/bin/python3 /tmp/main.py"
```
```
$ journalctl -t demo_script | tail -4
May 10 20:29:01 main demo_script[19702]: Good message!
May 10 20:29:01 main demo_script[19703]: Erorr message!
May 10 20:30:01 main demo_script[19762]: Good message!
May 10 20:30:01 main demo_script[19763]: Erorr message!
```
