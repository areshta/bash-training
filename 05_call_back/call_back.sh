#!/bin/bash

TIMELIMIT=1 
TICK=0

myTimer()
{
  while true
  do
    echo "timer"
    sleep $TIMELIMIT && kill -s 18 $$
    # Ждать , после чего выдать SIGCONT сценарию.
  done
}

IntSigcont()
{
  echo "$TICK"
  let "TICK+=1"  
}

trap IntSigcont 18   # переназначить процедуру обработки прерывания от таймера (18)

myTimer

exit 0
