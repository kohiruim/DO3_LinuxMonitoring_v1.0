. topDir.sh
. topFile.sh
. topExe.sh

function output()
{
    time=$(date +%s)
    dir=$(find $1 -type d |wc -l)
    echo "Total number of folders (including all nested ones) = $(($dir-1))"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"; topDir $1
    echo Total number of files = $(find $1 -type f|wc -l)

    echo Number of:  
    echo "Configuration files (with the .conf extension) = $(find $1 -name "*.conf" | wc -l)"
    echo "Text files = $(find $1 -name "*.txt" | wc -l)"
    echo "Executable files = $(find $1 -type f -executable | wc -l)"
    echo "Log files (with the extension .log) = $(find $1 -name "*.log" | wc -l)"
    echo "Archive files = $(find $1 -name "*.tar"| wc -l)"
    echo "SYMB_FLS = $(find "$1" -type l | wc -l)"

    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"; topFile $1
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"; topExe $1

    echo "Script execution time (in seconds) = $(($(date +%s)-$time))"
}
