#include <mach/mach_types.h>
#include <stdio.h>

kern_return_t HelloKext_start(kmod_info_t * ki, void *d);
kern_return_t HelloKext_stop(kmod_info_t *ki, void *d);

kern_return_t HelloKext_start(kmod_info_t * ki, void *d)
{
    printf("HelloKext: Start\n");
    return KERN_SUCCESS;
}

kern_return_t HelloKext_stop(kmod_info_t *ki, void *d)
{
    printf("HelloKext: Stop\n");
    return KERN_SUCCESS;
}

extern kern_return_t _start(kmod_info_t * ki, void *d);
extern kern_return_t _stop(kmod_info_t *ki, void *d);

kern_return_t _start(kmod_info_t * ki, void *d)
{
    return HelloKext_start(ki, d);
}

kern_return_t _stop(kmod_info_t *ki, void *d)
{
    return HelloKext_stop(ki, d);
}

