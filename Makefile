C_FLAGS = -Wall -Wextra -fsanitize=address -g
CC = gcc

generic_tree_src_path := $(or $(TREE_INTERFACE_ROOT), .)

bst.c = $(generic_tree_src_path)/src/bst/bst.c
rbt.c = $(generic_tree_src_path)/src/rbt/rbt.c
btree.c = $(generic_tree_src_path)/src/btree/btree.c
tree_operations.c = $(generic_tree_src_path)/src/common/tree_operations.c

all: bst.o rbt.o btree.o tree_operations.o

bst.o: $(bst.c)
	$(CC) $(C_FLAGS) -c $(bst.c)

rbt.o: $(rbt.c)
	$(CC) $(C_FLAGS) -c $(rbt.c)

btree.o: $(btree.c)
	$(CC) $(C_FLAGS) -c $(btree.c)

tree_operations.o: $(tree_operations.c)
	$(CC) $(C_FLAGS) -c $(tree_operations.c)

tree_interface_clean:
	rm bst.o rbt.o btree.o tree_operations.o

clean: tree_interface_clean
