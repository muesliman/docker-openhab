Overview
========

Docker image for Openhab (1.8.3). Included is JRE 1.8.45.


Official DEMO Included
========

If you do not have a openHAB configuration yet, you can start this Docker without one. The official openHAB DEMO will be started. 

PULL
=======
```docker pull tdeckers/openhab```

Building
========

```docker build -t <username>/openhab .```

Running
=======

* The image exposes openHAB ports 8080, 8443, 5555 and 9001 (supervisord).


