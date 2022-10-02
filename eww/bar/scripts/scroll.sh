SCROLL_DIR=$1
CURR_WORKSPACE=$2
NEXT_WORKSPACE=0
if [ $SCROLL_DIR = "up" ]
then
    NEXT_WORKSPACE=$(($((CURR_WORKSPACE + 1)) % 6))
    if [ $NEXT_WORKSPACE -eq 0 ]
    then
        NEXT_WORKSPACE=1
    fi
    echo $NEXT_WORKSPACE
else
    NEXT_WORKSPACE=$(($((CURR_WORKSPACE - 1)) % 6))
    if [ $NEXT_WORKSPACE -eq 0 ]
    then
        NEXT_WORKSPACE=5
    fi
    echo $NEXT_WORKSPACE
fi