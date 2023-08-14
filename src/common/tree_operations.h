#ifndef _TREE_OPERATIONS_
#define _TREE_OPERARIONS_

typedef struct tree_operations tree_operations;
struct tree_operations {
  int (*compare_key) (void *,void*);
  void (*free_data) (void *);
  void (*swap_keys) (void **,void **);
  void (*print_key) (void *);
};

tree_operations *create_environment(int (*compare_key) (void *,void*),
                                    void (*free_data) (void *),
                                    void (*print_key) (void *));

void binary_in_order_visit(void *root);
void binary_pre_order_visit(void *root);
#endif // _TREE_OPERATIONS_
