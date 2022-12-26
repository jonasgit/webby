# GOOS: https://github.com/golang/go/blob/master/src/go/build/syslist.go
# GOARCH: https://go.dev/doc/install/source#environment

del webby.exe
$Env:GOOS = "windows"
$Env:GOARCH = "amd64"
go build -o webby.exe -ldflags="-s -w" main.go

del webby32.exe
$Env:GOOS = "windows"
$Env:GOARCH = "386"
go build -o webby32.exe -ldflags="-s -w" main.go

del webby
$Env:GOOS = "linux"
$Env:GOARCH = "amd64"
go build -o webby -ldflags="-s -w" main.go

del webby32
$Env:GOOS = "linux"
$Env:GOARCH = "386"
go build -o webby32 -ldflags="-s -w" main.go
