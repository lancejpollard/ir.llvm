
# https://docs.oracle.com/cd/E36784_01/html/E36859/eoiyg.html
# https://sourceware.org/binutils/docs/as/CFI-directives.html
all:
	clang -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk -emit-llvm -S test.c -o test.ll
	llc --filetype asm -o test.x86.asm --x86-asm-syntax=intel test.ll
	llc -march=aarch64 test.ll -o test.arm.s
	# -asm-show-inst
.PHONY: all

