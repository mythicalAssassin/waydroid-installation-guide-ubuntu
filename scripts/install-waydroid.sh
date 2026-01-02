
---

## `scripts/install-waydroid.sh`

```bash
#!/bin/bash
set -e

sudo apt update && sudo apt upgrade -y
sudo apt install curl ca-certificates lsb-release -y
curl https://repo.waydro.id | sudo bash
sudo apt install waydroid -y

echo "Waydroid installed. Run 'sudo waydroid init' next."
