echo -e "$by"Must Run in Root..."$bye"

apt-get install golang-go -y

echo -e "$by"Installing Subfinder..."$bye"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder

echo -e "$by"Installing gf..."$bye"
go get -u github.com/tomnomnom/gf

echo -e "$by"Installing waybackurls..."$bye"
go get github.com/tomnomnom/waybackurls

echo -e "$by"Installing kxss..."$bye"
go get github.com/Emoe/kxss


cd ~
mkdir .gf
echo -e "$by"Installing Gf-Patterns..."$bye"
git clone https://github.com/1ndianl33t/Gf-Patterns
mv ~/Gf-Patterns/*.json ~/.gf


cd ~
cd go
cd bin
cp waybackurls /usr/bin/
cp subfinder /usr/bin/
cp kxss /usr/bin/
cp gf /usr/bin/

