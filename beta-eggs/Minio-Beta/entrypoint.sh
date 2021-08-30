# Download minio binary (Wont download if exists)
wget -N https://dl.min.io/server/minio/release/linux-amd64/minio

# Change minio binary permission
chmod +x minio

# Run the server!
MINIO_ROOT_USER={{MINIO_ROOT_USER}} MINIO_ROOT_PASSWORD={{MINIO_ROOT_PASSWORD}} ./minio server /home/container --console-address "{{MINIO_PORT}}"