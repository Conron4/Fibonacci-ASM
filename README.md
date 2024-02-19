# ASM Fibonacci
This is a program that prints the fibonacci numbers.
This program runs using the printf and scanf C Standard Libary Functions.

# Run
To run simply do ```.\fibonacci.exe```
# Source Build
If you wish to build from source:
```nasm -f win32 fibonacci.asm```

Then link the .obj file I use golink but you can use any asm linker. **Don't forget msvcrt.dll, this is essential for the c function calls**

```golink /mix /entry _main fibonacci.obj msvcrt.dll /console```
