
ESC="\033[38;5;117m"
RESET="\033[0m"


echo -e "${ESC}  _   _  _    _                 ____                _   "
echo -e " | | | || |_ | |_  _ __ __  __ / ___|   ___   _ __ | |_ "
echo -e " | |_| || __|| __|| '_ \\ \/ / \___ \  / _ \ | '__|| __|"
echo -e " |  _  || |_ | |_ | |_) |>  <   ___) || (_) || |   | |_ "
echo -e " |_| |_| \__| \__|| .__//_/\_\ |____/  \___/ |_|    \__|"
echo -e "                  |_|                                   ${RESET}"
echo "                                                    @whalebone7"

if [ "$#" -ne 2 ] || [ "$1" != "-l" ] || [[ "$2" != *.txt ]]; then
    echo ""
    echo "Invalid arguments."
    echo "Usage: ./hs.sh or hs -l \"path/to/subs.txt\""
    echo ""
    exit 1
fi

subs_file="$2"
if [ ! -f "$subs_file" ]; then
    echo "File '$subs_file' not found."
    exit 1
fi

mkdir -p .whalebone


cat "$subs_file" | httpx -silent -nc -sc > .whalebone/sc.txt


cat .whalebone/sc.txt | cut -d " " -f2 | cut -d " " -f2 | sort | uniq | tr -d "[]"> .whalebone/status.txt


mkdir -p sorted
while read -r S; do
    cat .whalebone/sc.txt | grep "$S" | cut -d " " -f1 > "sorted/$S.txt"
done < .whalebone/status.txt

echo "Sorted and stored in /sorted/"

rm -rf .whalebone
cd sorted && ls -1 
