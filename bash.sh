**5. Start Script (scripts/start_servers.sh):**
```bash
#!/bin/bash

# Start web server
go run cmd/web/main.go &

# Start SSH server
go run cmd/ssh-server/main.go &

# Keep script running
wait