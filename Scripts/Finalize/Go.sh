#!/bin/bash
if [ "$OSTYPE" = "cygwin" ]; then (set -o igncr) 2>/dev/null && set -o igncr; fi # Cygwin CRLF fix

sed -i '1s/^/export GOPATH=$HOME\/Workspaces\/go\n\n/' /home/tysont/.zshrc
sed -i '1s/^/export GOROOT=\/opt\/go\n/' /home/tysont/.zshrc
sed -i 's/export PATH=/export PATH=$GOPATH\/bin:/' /home/tysont/.zshrc

go get -u github.com/kardianos/govendor
pushd $GOPATH/src/github.com/kardianos/govendor
go build
popd