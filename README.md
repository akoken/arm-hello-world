# ARM64 Hello World for Apple Silicon
Explore ARM64 assembly with this compact and fun Hello World app tailored for Apple Silicon

## How to run locally
Assemble your assembly to object files:
```shell
as hello.s -o hello.o
```
Create an executable by using the linker:
```shell
ld hello.o -o hello -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
```