docker-nexus3
=============

Base CentOS 7 + Nexus 3 (M1)

This image runs Nexus 3 (milestone 1) for testing purposes.
This work has shamefully stolen ideas from "jjethwa/nexus".
Sue me.

You can run it mounting the volumes to a host folder or onto
a volume container to preserve Nexus state. Suit yourself.

Try it out by running "runnexus.sh" and opening the URL:

* http://localhost:8081

Default admin password is "admin123".

Since there seems to be no documented way to run nexus on
foreground (as prefered on Docker), the supervisord trick
has been used.

### Useful scripts

* **build.sh** : builds the image locally (docker build)
* **runbash.sh** : convenient way to run commands on a new
container (fast-food, auto-destroy) or even to just
open a bash shell to play. You can sun supervisord manually,
of course.
* **runnexus.ah** : convenient way to run nexus container
from your shell.

