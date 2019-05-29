#!/bin/bash

sudo mkdir -p /wind/
echo '' > /wind/wind.pid

sudo cat <<EOT >> /wind/service.sh
#!/bin/bash

$(cat /details.txt)
EOT

sudo chmod +x /wind/service.sh
sudo chmod +x /wind/wind.pid

sudo cat <<EOT >> /etc/systemd/system/wind.service
[Unit]
Description=Wind daemon
After=network.target

[Service]
User=root
Group=root
Type=forking
PIDFile=/wind/wind.pid
ExecStart=/wind/service.sh
KillMode=process
Restart=always
TimeoutSec=120
RestartSec=30
RemainAfterExit=no

[Install]
WantedBy=multi-user.target
EOT

sudo systemctl enable wind.service
systemctl daemon-reload
sudo systemctl restart wind
