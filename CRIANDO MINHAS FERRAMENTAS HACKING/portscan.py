import socket

print("""          ------------
         |    ----     )     ______       ______  
         |   |     |   |    /       \    /       \ 
         |   |     |   |   |   ___   |  |   ___   |
         |    ----     )   |  |   |  |  |  |   |  |
         |     |-------    |  |___|  |  |  |___|  | 
         |     |           |         |  |         |
         |     |            \______ /    \ _____ /
         |_____|
      
                                     by thxny""")                   
    
domain = input("Domain: ")
opens = []
ports = [20, 21, 22, 23, 25, 80, 443, 445, 3306, 8080 ]
for port in ports:

    client = socket.socket(socket.AF_INET, socket.SOCK_STREAM) 
    client.settimeout(0.5)
    code = client.connect_ex((domain, port)) 

    if code == 0:
        opens.append(port) 

print('Ports: ')
for open in opens:
    print(f"[+] {open} Open ")
