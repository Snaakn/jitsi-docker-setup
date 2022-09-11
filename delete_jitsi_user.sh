#! /bin/bash
read -p "Enter username: " USER_NAME
read -p "Are you sure you want to delete the user $USER_NAME? (Y/N)" U_SURE

if [[ "$U_SURE" != "Y" || "$U_SURE" != "y" ]]; then
  exit 1
fi
echo "Deleting $USER_NAME..."
docker-compose exec -d prosodyctl --config /config/prosody.cfg.lua unregister $USER_NAME meet.jitsi
echo "$USER_NAME deleted."