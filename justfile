start:
        just run-server 'up -d'
down:
        just run-server down
run-server arg:
        podman-compose -f compose.yml {{arg}}
