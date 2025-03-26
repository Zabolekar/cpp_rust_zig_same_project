.PHONY: run
run: main
	LD_LIBRARY_PATH=. ./$^

main: main.c libone.so libtwo.so
	cc $^ -o $@

libone.so: one.cpp
	c++ -fPIC -shared $^ -o $@

libtwo.so: two.rs
	rustc --crate-type=cdylib --edition=2024 $^

clean:
	rm -f *.so main
