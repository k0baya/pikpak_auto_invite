```
version: '3.3'
services:
    pikpak_auto_invite:
        restart: always
        environment:
            - INVITE_CODE='Your_invite_code'
#             - PROXY='http://localhost:7890'
#             - ADMIN='username'
#             - PASSWORD='password'
        port:
            - 8000:8000
        container_name: pikpak_auto_invite
        image: 'saika2077/pikpak_auto_invite:paas'
```