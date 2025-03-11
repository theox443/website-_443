package main

import (
        "html/template"
            "log"
                "net/http"
                    "github.com/gorilla/securecookie"
)

var cookieHandler = securecookie.New(
        securecookie.GenerateRandomKey(64),
            securecookie.GenerateRandomKey(32))

            type User struct {
                    Username string
                        Email    string
            }

            var sessions = make(map[string]User)

            func main() {
                    http.HandleFunc("/", indexHandler)
                        http.HandleFunc("/login", loginHandler)
                            http.HandleFunc("/logout", logoutHandler)
                                
                                    log.Println("Starting web server on :8080")
                                        log.Fatal(http.ListenAndServe(":8080", nil))
            }

            func indexHandler(w http.ResponseWriter, r *http.Request) {
                    tmpl := template.Must(template.ParseFiles("web/templates/base.html", "web/templates/index.html"))
                        tmpl.Execute(w, nil)
            }

            func loginHandler(w http.ResponseWriter, r *http.Request) {
                    if r.Method == "POST" {
                                username := r.FormValue("username")
                                        // In a real app, validate credentials
                                                value := map[string]string{
                                                                "username": username,
                                                }
                                                        if encoded, err := cookieHandler.Encode("session", value); err == nil {
                                                                        cookie := &http.Cookie{
                                                                                            Name:  "session",
                                                                                                            Value: encoded,
                                                                                                                            Path:  "/",
                                                                        }
                                                                                    http.SetCookie(w, cookie)
                                                        }
                                                                http.Redirect(w, r, "/", http.StatusFound)
                    } else {
                                tmpl := template.Must(template.ParseFiles("web/templates/base.html", "web/templates/login.html"))
                                        tmpl.Execute(w, nil)
                    }
            }

            func logoutHandler(w http.ResponseWriter, r *http.Request) {
                    cookie := &http.Cookie{
                                Name:   "session",
                                        Value:  "",
                                                Path:   "/",
                                                        MaxAge: -1,
                    }
                        http.SetCookie(w, cookie)
                            http.Redirect(w, r, "/", http.StatusFound)
            }
                    }
            }
                    }
                                                                        }
                                                        }
                                                }
                    }
            }
            }
            }
            }
)
)