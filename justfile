up:
    just run-server up
down:
    just run-server down
chat:
    podman exec -i minecraft-fusion rcon-cli
run-server arg:
    podman-compose -f compose.yml {{arg}}
