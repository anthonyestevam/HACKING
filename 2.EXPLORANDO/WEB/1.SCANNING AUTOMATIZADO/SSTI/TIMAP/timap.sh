#!/bin/bash

echo "   
          __________  ___ ___      ___   ______   ______
         |___    __| |  | |  |    |   | |  __  | |  _   |
             |  |    |  | |   |  |    | | |__| | | |_|  |
             |  |    |  | | |\ \/ /|  | |  __  | |  ____|
             |__|    |__| |_| \_ / |__| |_|  |_| |__|

                                         by thxny

    "
echo "Write the Domain: "
read -r domain
subfinder -d "$domain" --silent | waybackurls | uro | gf ssti > targets.txt;

for target in $(cat targets.txt);
do
        TInjA url -u "$target" --csti
done
