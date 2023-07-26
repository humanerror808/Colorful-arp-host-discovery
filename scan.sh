	g='\033[92m' 
	c='\033[96m' 
	y='\033[97m' 
	r='\033[0m' 
	arp-scan --localnet --resolve -F '${name}\t${ip}\t${mac}\t${vendor}' | awk -v g="$g" -v c="$c" -v y="$y" -v r="$r" 'NR > 2 {print g $1 r " ==> " y $2 r " " c $3 r " " substr($0, index($0, $4))}' | grep "192"
