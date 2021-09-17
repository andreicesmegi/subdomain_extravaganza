#!/bin/bash
# This software was developed as part of course activity, proposed by DESEC SECURITY.
# I, Andrei Cesmegi, developed it entirely by my own, utilizing the class materials,
# google researches and logical reasoning.
# Whilst this is an open-source program, I would like to affirm that I use it for legal purposes only.
# And so should you! Any crime committed by you is your sole responsibility. Don`t do it!
# Otherwise, help yourself with this tool and learn. Become a pro and help others ethically!

echo "##########################################################################"
echo "|                       SUBDOMAIN EXTRAVAGANZA                           |"
echo "##########################################################################"

echo "Please, inform the domain below:"
read domain

if [$domain == ""]
then
	echo "Uso incorreto"
	echo "Informe o domínio"
	echo "Exemplo: google.com.br"

else
	echo "##########################################################################"
	echo "|                       SUBDOMAIN EXTRAVAGANZA                           |"
	echo "|                              HACKING!!!                                |"
	echo "##########################################################################"

for domain in $domain;
do
wget -q -O index.html $domain
done
fi

cat index.html | grep "href"| cut -d "/" -f3 | grep "\." | cut -d '"' -f1 | grep -v '<l' > address.txt;

	echo "##########################################################################"
	echo "|                       SUBDOMAIN EXTRAVAGANZA                           |"
	echo "|                        YOUR RESULTS BENEATH:                           |"
	echo "##########################################################################"


for url in $(cat address.txt);
do
host $url | grep "has address";
done

echo "##########################################################################"
echo "|                       SUBDOMAIN EXTRAVAGANZA                           |"
echo "|                        THANK YOU! GOOD LUCK!                           |"
echo "##########################################################################"

#echo "Would you like to try another one?"
#read domain
