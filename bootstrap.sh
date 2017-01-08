apt-get update
apt-get install git -y

cd /tmp
curl -O https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.7.4.linux-amd64.tar.gz

su vagrant <<'EOF'

export PATH=$PATH:/usr/local/go/bin
export GOPATH=/home/vagrant/dev

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export GOPATH=/home/vagrant/dev' >> ~/.profile

go get golang.org/x/tools/cmd/godoc
go get golang.org/x/tools/cmd/vet
go get github.com/golang/lint/golint
go get github.com/go-martini/martini

EOF
