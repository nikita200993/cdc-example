docker run --name pg -e POSTGRES_USER=user -e POSTGRES_PASSWORD=user -e POSTGRES_CDC_USER=cdc \
-v $(pwd)/db/data:/var/lib/postgresql/data -v $(pwd)/db/init:/docker-entrypoint-initdb.d -d postgres