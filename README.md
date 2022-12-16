# No-Fetch

A blazing 🚀 fast 🚀 fetch 🚀 program 🚀.

Most fetch programs are very bloated, but not no-fetch:

|Program|Time to complete, measured with time|
|-|-|
|neofetch|309ms|
|pfetch|65ms|
|uwufetch|169ms|
|nofetch|0ms|

At only 4312 bytes on a x86\_64, nofetch wont take up all of your disk.

## Why assembly?

While Rust is often claimed to be the fastest 🚀 language, ASM is actually a lot faster, and the standard library is not several MB in size.

This is required for the least bloated fetch. 

# Supported architectures

|Processor|Works|
|----|-|
|x86\_64|✅|
|i386|✅|
|aarch64| |

# Compiling

You will need ``nasm ld make`` installed, then you can run ``make``.

The binary will be at ``./nofetch``.

Run ``objdump -D ./nofetch`` to admire the simplicity of nofetch.
