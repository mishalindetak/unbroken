all: unbroken.html

clean:
	rm unbroken.html

unbroken.html: unbroken.m4
	m4 unbroken.m4 | sed -f cleanup.sed > unbroken.html
