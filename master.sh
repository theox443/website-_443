# website-_443
---

**2. master.sh** (Script utama Bash):
```bash
#!/bin/bash

# Logging setup
LOG_FILE="user_activity.log"
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$(whoami)] $1" >> $LOG_FILE
}

# Main execution
log "Memulai proses automasi"

# Bagian Python - Koneksi SSH
log "Menjalankan script SSH Python"
python3 ssh_connect.py

# Bagian Go - Kompilasi dan run
log "Kompilasi program Go"
go build -o hello_go hello.go
./hello_go

# Bagian C - Kompilasi dengan Clang
log "Kompilasi program C"
clang -o hello_c hello.c
./hello_c

log "Proses selesai"
echo "Lihat log di $LOG_FILE"
import paramiko
import getpass
from datetime import datetime

def ssh_connection():
    print("=== SSH Client ===")
    host = input("Masukkan host: ")
    port = int(input("Masukkan port: "))
    username = input("Masukkan username: ")
    password = getpass.getpass("Password: ")

    try:
        client = paramiko.SSHClient()
        client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
        client.connect(host, port=port, username=username, password=password)
        
        with open("user_activity.log", "a") as log:
            log.write(f"[{datetime.now()}] [{username}] SSH connection to {host}:{port}\n")
        
        print("Koneksi berhasil!")
        client.close()
    except Exception as e:
        print(f"Error: {str(e)}")

if __name__ == "__main__":
    ssh_connection()

    package main

import "fmt"

func main() {
    fmt.Println("Hello dari Go!")
}
#include <stdio.h>

int main() {
    printf("Hello dari C!\n");
    return 0;
}


