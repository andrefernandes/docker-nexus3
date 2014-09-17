ENVBASH=$1
ENVBASH=${ENVBASH:-"bash"}
docker run --rm -t -i -P \
   -v /opt/sonatype-work:/opt/sonatype-work \
   -v /opt/nexus/conf:/opt/nexus/conf \
   andrefernandes/docker-nexus3:latest $ENVBASH ${@:2}

