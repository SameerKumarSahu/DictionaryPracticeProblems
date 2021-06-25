#!/bin/bash -x

declare -A faceValue

FACE_ONE=1;
FACE_TWO=2;
FACE_THREE=3;
FACE_FOUR=4;
FACE_FIVE=5;
FACE_SIX=6;
read -p "please enter to roll the dic "
#counter=1
#x="one"
for i in {1..10}
do
	
         roll=$(( RANDOM%6 + 1 ))
         case $roll in
                $FACE_ONE)
                        face="One"
                        ;;
                $FACE_TWO)
                        face="Two"
                        ;;
                $FACE_THREE)
                        face="Three"
                        ;;
                $FACE_FOUE)
                        face="Four"
                        ;;
                $FACE_FIVE)
                        face="Five"
                        ;;
                $FACE_SIX)
                        face="Six"
                        ;;

         esac
         faceValue[$face]=$roll
		

done



echo "${faceValue[@]}"
