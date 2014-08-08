ASTYLE=../src/astyle-r2
ASTYLE_FLAGS=-A2 --indent=tab --align-pointer=name --align-reference=name -xd -U
ASTYLE_FLAGS+=--max-code-length=78 -I -Z --lineend=linux
all:
	$(ASTYLE) $(ASTYLE_FLAGS) < main.c | sed -e 's/ *,/,/g' | tee main.c.new
	diff -ru main.c.ok main.c.new
	rm -f main.c.new
