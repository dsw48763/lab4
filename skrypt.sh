#!/bin/bash

if [ "$1" == "--date" ]; then
  echo $(date)
elif [ "$1" == "--logs" ]; then
  if [ "$2" == "" ]; then
    for i in {1..100}
    do
      echo "log$i.txt skrypt.sh $(date)" >> log$i.txt
    done
  else
    for i in $(seq 1 $2)
    do
      echo "log$i.txt skrypt.sh $(date)" >> log$i.txt
    done
  fi
elif [ "$1" == "--help" ]; then
  echo "Dostępne opcje:"
  echo "--date - wyświetla dzisiejszą datę"
  echo "--logs - tworzy automatycznie 100 plików logx.txt z datą"
  echo "--logs N - tworzy automatycznie N plików logx.txt z datą"
else
  echo "Nieznana opcja. Wywołaj skrypt z parametrem --help, aby poznać dostępne opcje."
fi
