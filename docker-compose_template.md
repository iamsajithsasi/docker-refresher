## Angular

+docker-compose.yml:
```
version: "3.8"

services:
  frontend:
    build: .
    ports:
      - 4202:4200
    volumes:                // to refresh app on change
      - ./src:/app/src
```