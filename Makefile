.PHONY: clean default

howto-go-with-cpp: libfoo.a
	go build .

libfoo.a: foo.o cfoo.o
	ar r libfoo.a foo.o cfoo.o

cfoo.o: cfoo.cpp
	g++ -fPIC -O2 -o cfoo.o -c cfoo.cpp

foo.o: foo.cpp
	g++ -fPIC -O2 -o foo.o -c foo.cpp

clean:
	rm -f *.o *.so *.a howto-go-with-cpp
