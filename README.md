# ksp-dmp
Containerized DarkMultiPlayer - a Kerbal Space Program multiplayer mod

# Start DMP Server on port 6702
`docker-compose run --service-ports server`

`/help` displays available commands.

## Start in background (no terminal)
`docker-compose up -d`

## Server status
`http://<server>:6703`

# Update DMP Server (requires server restart to take effect)
`docker exec <container> mono DMPUpdater.exe`
