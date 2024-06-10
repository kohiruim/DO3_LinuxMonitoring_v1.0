. config
. check.sh

function outputColor()
{
    color $F1 F1;
    color $F2 F2;
    color $BG2 BG2;
    color $BG1 BG1;

    if [[ $1 == "default" ]]
    then
        column1_background=default
        column1_font_color=default
        column2_background=default
        column2_font_color=default
    fi
    
    echo "Column 1 background = $column1_background ($BG1)"
    echo "Column 1 font color = $column1_font_color ($F1)"
    echo "Column 2 background = $column2_background ($BG2)"
    echo "Column 2 font color = $column2_font_color ($F2)"
}

function color()
{
    if [[ $1 == "\033[97m" ]] || [[ $1 == "\033[107m" ]]
    then
    eval "$2='white'"
    elif [[ $1 == "\033[31m" ]] || [[ $1 == "\033[41m" ]]
    then
    eval "$2='red'"
    elif [[ $1 == "\033[32m" ]] || [[ $1 == "\033[42m" ]]
    then
    eval "$2='green'"
    elif [[ $1 == "\033[30m" ]] || [[ $1 == "\033[44m" ]]
    then
    eval "$2='blue'"
    elif [[ $1 == "\033[35m" ]] || [[ $1 == "\033[45m" ]]
    then
    eval "$2='purple'"
    elif [[ $1 == "\033[30m" ]] || [[ $1 == "\033[40m" ]]
    then
    eval "$2='black'"
    fi
}
