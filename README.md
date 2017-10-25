# kafka-cli-client
PhotonOS-based image containing kafka CLI (and its dependencies)

This image isn't meant for hosting a kafka cluster. Instead, it's
meant as a debugging tool where we can run the kafka CLI tools against
a kafka cluster run externally.

Image includes:
* `vim`
* `curl`
* `openjre`
* kafka distribution

NOTE: There are wrapper scripts to invoke common kafka commands
directly from the system path (`/usr/local/bin/`):
* `kafka-topics`
* `kafka-console-producer`
* `kafka-console-consumer`
* `zookeeper-shell`
