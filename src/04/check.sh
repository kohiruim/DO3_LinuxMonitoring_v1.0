. config
. ./../03/check.sh
. ./../03/set.sh
. ./../03/output.sh

function confCheck()
{
    if [[ $# -eq 0 ]]
    then
        BG1=$column1_background
        BG2=$column2_background
        F1=$column1_font_color
        F2=$column2_font_color
        
        if [[ -z $BG1 ]] || [[ -z $BG2 ]] || [[ -z $F1 ]] || [[ -z $F2 ]]
        then
            BG1=2; BG2=5; F1=4; F2=1;

            colorCheck $BG1 $F1 $BG2 $F2
            echo ""
            outputColor default
        else
            check $BG1 $F1 $BG2 $F2
            echo ""
            outputColor
        fi
    else
        echo "Не дб аргументов"
        exit 1
    fi
}
