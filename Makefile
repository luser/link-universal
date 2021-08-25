all: libuniversal.a

libuniversal.a: libhello-aarch64.a libhello-x86_64.a
	lipo -create -output $@ $^

libhello-%.a: hello-%.o
	ar -r $@ $^

hello-%.o: hello.c
	clang -target $*-apple-darwin -o $@ -c $^

