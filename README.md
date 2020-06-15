Official website : https://posativ.org/isso/  
  
# Usage :
    version: "3.7"
    services:
      isso:
        image: mihokookayami/isso
        container_name: isso
        volumes:
          - /my/conf/path/isso.conf:/conf/isso.conf:ro
          - /my/data/path:/data
        restart: unless-stopped
  
# isso.conf :
    [general]
    dbpath = /data/comments.db
    host = https://my-website.com
    [server]
    listen = http://0.0.0.0:8080
    [guard]
    enabled = true
    ratelimit = 2
    direct-reply = 3
    reply-to-self = false
    require-author = true
    require-email = true
    [moderation]
    enabled = false
    purge-after = 30d
    [admin]
    enabled = false
    password = strong-password
