#!/bin/bash

string1="a = b"

if [ $string1 ]       # И снова, попробуем строку без ничего..
then
  echo "Строка \"string1\" не пустая."
else
  echo "Строка \"string1\" пустая."
fi
# Строка без кавычек дает неверный результат!

