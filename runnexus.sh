docker run --rm -t -i \
   -p 8081:8081 \
   -v /opt/sonatype-work:/opt/sonatype-work \
   -v /opt/nexus/conf:/opt/nexus/conf \
   -e VIRTUAL_HOST=nexus.localdomain \
   andrefernandes/docker-nexus3:latest

