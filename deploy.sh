docker compose up -d --force-recreate --no-deps --build --remove-orphans
sleep 5
docker compose logs -f --tail 100