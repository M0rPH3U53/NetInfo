# <img width="1536" height="1024" alt="Designer" src="https://github.com/user-attachments/assets/2755d2b4-ab1c-4f56-88fc-00a08c8146c7" />


Récupère les info du réseau local de l’hôte

| Outils | URLs |  
| --- | --- |  
| <span style="color: #dddddd;">🌐</span> iproute2 | https://fr.wikipedia.org/wiki/Iproute2 |
| <span style="color: #dddddd;">⚙️</span> net-tools | https://net-tools.sourceforge.io |

## 🚀 Installation

```  
┌─[m0rph3u5@parrot]─[~]  
└──╼ $sudo apt install iproute2 net-tools
```
## 👁️ Demo

```
┌─[m0rph3u5@parrot]─[~/Scripts]
└──╼ $sudo ./NetInfo.sh

_______________________________________________
7     77     77      77  77     77     77     7
|  _  ||  ___!!__  __!|  ||  _  ||  ___!|  7  |
|  7  ||  __|_  7  7  |  ||  7  ||  __| |  |  |
|  |  ||     7  |  |  |  ||  |  ||  7   |  !  |
!__!__!!_____!  !__!  !__!!__!__!!__!   !_____!
                                                
by M0rPH3U53

[*] Hostname

parrot     
 
[*] Interfaces  
 
enp0s8 --> 10.0.3.0/24
enp0s3 --> 192.168.56.0/24

[*] Broadcast

10.0.3.15 --> 10.0.3.255
192.168.56.149 --> 192.168.56.255

[*] Ports  
 
udp:0.0.0.0:51875 --> users:(("avahi-daemon",pid=733,fd=14))
udp:0.0.0.0:5353 --> users:(("avahi-daemon",pid=733,fd=12))
udp:10.0.3.15:123 --> users:(("ntpd",pid=1011,fd=22))
udp:192.168.56.149:123 --> users:(("ntpd",pid=1011,fd=21))
udp:127.0.0.1:123 --> users:(("ntpd",pid=1011,fd=18))
udp:0.0.0.0:123 --> users:(("ntpd",pid=1011,fd=17))
tcp:0.0.0.0:22 --> users:(("sshd",pid=1032,fd=6))
 
[*] IP  
 
10.0.3.15
192.168.56.149
 
[*] DNS  
 
10.0.3.3
 
[*] Passerelle  
 
10.0.3.2
```
