#ifndef META_H
#define META_H

#include "list.h"
#include "main.h"

typedef struct {
    char name[PATH_MAX];
    size_t size;
    size_t offset;
} file_t;

list_t *init_metadata(void);
int add_metadata(char *name, size_t size, size_t offset, list_t *metalist);
int write_metadata(list_t *metalist, char *dst);
void destroy_metadata(list_t *metalist);

#endif /* META_H */
