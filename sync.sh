#!/usr/bin/env bash
# --------------------------------------------------------------
# Sync Minecraft mods & config from this (master) PC to the server.
# --------------------------------------------------------------

# ---------- USER‑CONFIGURATION ---------------------------------
MASTER_DIR=""               # local Minecraft folder
SERVER_USER=""                     # SSH user on the server
SERVER_HOST=""                  # LAN IP or hostname of server
SERVER_DIR=""     # destination on server
# --------------------------------------------------------------

# rsync options:
#   -a   archive (preserve perms, timestamps, owners, etc.)
#   -v   verbose
#   -z   compress during transfer (good for Wi‑Fi)
#   --delete   remove files on server that no longer exist locally
RSYNC_OPTS="-avz --delete"

# Sync the two sub‑folders we care about
rsync $RSYNC_OPTS "$MASTER_DIR/mods/"   "$SERVER_USER@$SERVER_HOST:$SERVER_DIR/mods/"
rsync $RSYNC_OPTS "$MASTER_DIR/config/" "$SERVER_USER@$SERVER_HOST:$SERVER_DIR/config/"

echo "✅ Minecraft sync finished at $(date)"

