# List untuk menyimpan data pengguna
users = []

# Fungsi untuk registrasi pengguna baru
def register():
    print("=== Registrasi ===")
    id = input("Masukkan ID: ")
    username = input("Masukkan Username: ")
    password = input("Masukkan Password: ")
    name = input("Masukkan Nama Lengkap: ")
    email = input("Masukkan Email: ")

    # Membuat dictionary untuk menyimpan data pengguna
    user = {
        'id': id,
        'username': username,
        'password': password,
        'name': name,
        'email': email
    }

    # Menambahkan pengguna ke dalam list
    users.append(user)
    print("Registrasi berhasil!\n")

# Fungsi untuk login pengguna
def login():
    print("=== Login ===")
    username = input("Masukkan Username: ")
    password = input("Masukkan Password: ")

    # Mencari pengguna berdasarkan username dan password
    for user in users:
        if user['username'] == username and user['password'] == password:
            print(f"Login berhasil! Selamat datang, {user['name']}!")
            return

    print("Username atau password salah.\n")

# Fungsi utama
def main():
    while True:
        print("1. Registrasi")
        print("2. Login")
        print("3. Keluar")
        choice = input("Pilih menu: ")

        if choice == '1':
            register()
        elif choice == '2':
            login()
        elif choice == '3':
            print("Terima kasih telah menggunakan program ini.")
            break
        else:
            print("Pilihan tidak valid. Silakan coba lagi.\n")

# Menjalankan program
if __name__ == "__main__":
    main()
