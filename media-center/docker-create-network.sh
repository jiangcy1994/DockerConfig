# /bin/sh

docker network create \
  --driver=bridge \
  --subnet=172.20.1.0/24 \
  --ip-range=172.20.1.0/24 \
  --gateway=172.20.1.1 \
  --internal=false \
  --opt "com.docker.network.bridge.name"="br-media" \
  --opt "com.docker.network.bridge.enable_ip_masquerade"="true" \
  --opt "com.docker.network.bridge.enable_icc"="true" \
  --opt "com.docker.network.bridge.host_binding_ipv4"="0.0.0.0" \
  --opt "com.docker.network.driver.mtu"="1500" \
  media