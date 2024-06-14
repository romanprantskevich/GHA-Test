# syntax=docker/dockerfile:1
FROM busybox:latest
COPY --chmod=755 <<EOF /app/run.sh
#!/bin/sh
while true; do
  echo -ne "The time in NSK is now (test-Jun 11 VI 2024 -5) $(date +%T)\\r"
  sleep 1
done
EOF


ENTRYPOINT /app/run.sh
