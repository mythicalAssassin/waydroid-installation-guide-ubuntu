# Fix: Download Speed 0.0 kbps

This is caused by **captive portal detection and blocked DNS**.

## Disable captive portal

Run the following commands to disable captive-portal detection inside Waydroid and restart the container:

```bash
# Enter the Waydroid container shell
sudo waydroid shell

# Inside the Waydroid shell, run:
settings put global captive_portal_mode 0
settings put global captive_portal_detection_enabled 0

# Exit the Waydroid shell
exit

# Back on the host, restart Waydroid
sudo systemctl restart waydroid-container
```

## Notes

- Setting `captive_portal_mode` to `0` disables captive-portal checks.
- If you still see network problems after this, check DNS on the host and inside Waydroid — switching to a public DNS like 1.1.1.1 or 8.8.8.8 can help.
