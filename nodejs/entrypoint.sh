#!/usr/bin/env bash

sudo chmod a+rw -R .
sudo service nginx start

echo ""
echo ""
echo "========================================"
echo ""
echo "CONTAINER STARTED SUCCESSFULLY!"
echo ""
echo "Press Ctrl + C to exit from container logs"
echo ""
echo "========================================"
echo ""
echo ""

exec "$@"

/bin/bash