#! /bin/bash
read -p "Enter username" USER_NAME
read -p"Enter password for user $USER_NAME" PASSWORD

echo "Creating user $USER_NAME with password $PASSWORD..."
docker-compose exec -d prosody prosodyctl --config /config/prosody.cfg.lua register $USER_NAME -- meet.jitsi $PASSWORD
echo "User $USER_NAME was created."
