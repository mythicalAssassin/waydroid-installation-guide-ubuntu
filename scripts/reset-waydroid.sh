#!/bin/bash

sudo systemctl stop waydroid-container
sudo waydroid init --force
sudo systemctl start waydroid-container
