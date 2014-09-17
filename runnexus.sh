docker run --rm -t -i \
   -p 8081:8081 \
   -v /opt/sonatype-work:/opt/sonatype-work \
   -v /opt/nexus/conf:/opt/nexus/conf \
   andrefernandes/docker-nexus3:latest

