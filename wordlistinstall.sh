#!/bin/bash
wordlistsd(){
echo -e "\n${BK}DOWNLOADING ALL THE WORDLISTS${RT}"
mkdir -p tools/wordlists
cd tools/wordlists

echo -e "\n- Downloading subdomains wordlists"
 wget -q https://raw.githubusercontent.com/pacho15/MyGithubDocks/main/keywords.txt -O keywords.txt
if [ -s /root/tools/wordlists/keywords.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi

echo -e "\n- Downloading subdomains wordlists"
 wget -q https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/DNS/deepmagic.com-prefixes-top50000.txt -O deepmagic-top50000.txt
if [ -s /root/tools/wordlists/deepmagic-top50000.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
    
echo -e "\n- Downloading resolvers files"
wget -q https://raw.githubusercontent.com/six2dez/resolvers_reconftw/main/resolvers.txt -O resolvers.txt
if [ -s /root/tools/wordlists/resolvers.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
    
echo -e "\n- Downloading Subjack fingerprint.json"
wget -q https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -O fuzz.txt
if [ -s /root/tools/wordlists/fuzz.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi

echo -e "\n- Downloading LFI payloads wordlists"
wget -q https://raw.githubusercontent.com/emadshanab/LFI-Payload-List/master/LFI%20payloads.txt -O LFI-payload.txt
if [ -s /root/tools/wordlists/LFI-payload.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi 

echo -e "\n- Downloading Open Redirect payload wordlists"
wget -q https://raw.githubusercontent.com/emadshanab/wordlists-2/main/Open%20Redirect%20Payload%20List -O openredirect-payload.txt
if [ -s /root/tools/wordlists/openredirect-payload.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi     

echo -e "\n- Downloading All.txt Subs"
#installing wordlists
wget -q "https://localdomain.pw/subdomain-bruteforce-list/all.txt.zip" && unzip all.txt.zip
if [ -s /root/tools/wordlists/all.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi

echo -e "\n- Downloading jhadix-all Subs"
#installing wordlists
wget -q https://gist.githubusercontent.com/jhaddix/f64c97d0863a78454e44c2f7119c2a6a/raw/96f4e51d96b2203f19f6381c8c545b278eaa0837/all.txt -O jhaddix-subsall.txt
if [ -s /root/tools/wordlists/jhaddix-subsall.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi


echo -e "\n- Downloading Subjack wordlists"
wget -q https://raw.githubusercontent.com/haccer/subjack/master/fingerprints.json -O /root/tools/fingerprints.json
if [ -s /root/tools/fingerprints.json ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi


echo -e "\n- Downloading jhadix-all Subs"
#installing wordlists
wget -q https://gist.githubusercontent.com/jhaddix/b80ea67d85c13206125806f0828f4d10/raw/c81a34fe84731430741e0463eb6076129c20c4c0/content_discovery_all.txt -O jhaddix-cdall.txt
if [ -s /root/tools/jhaddix-cdall.txt ]; then
    echo -e "${GR}SUCCESS${RT}"
else
    echo -e "${YW}FAILED${RT}"
fi
}

wordlistsd
