# macos kernel extensions



macOS uses kernel extensions (kexts) instead of Linux kernel modules. 

You can load kernel extensions using the kextload command.



## Build and load the kext

```

make

sudo kextload HelloKext.kext

```


```
sudo kextload /path/to/your.kext
```










```










```





## kmutil cli utility


```

man kmutil

kmutil is a multipurpose tool for managing kernel extensions (kexts) and kext collections on disk.  It takes a subcommand and a number of options, some of which are common to multiple commands.

kmutil interacts with the KernelManagement subsystem for loading, unloading, and diagnosing kexts.  It can also be used for inspecting the contents of a kext collection, interacting with the kernel to query load information, finding kexts and kext dependencies on disk, creating new collections of kexts, and displaying other diagnostic information.


```


## kextload cli utility


```
DESCRIPTION

The kextload program is used to explicitly load kernel extensions (kexts).  For most kexts, kextload must run as the superuser (root).  Kexts installed under /System/ with an OSBundleAllowUserLoad property set to true may be loaded via kextload by non-root users.

Notice: On Mac OS X 10.6 (Snow Leopard), the developer functionality of kextload has moved to the new program kextutil(8); all developer-related options have been removed from kextload and are no longer recognized.  On Mac OS X 10.6 (Snow Leopard), kextload simply forwards a load request to kextd(8), which performs all communication with
the kernel.

kextload is a formal interface for kext loading in all versions of Darwin OS and macOS.  Software and installers can rely on its presence and invoke it in order to load kexts.  Note that long options are present as of Mac OS X 10.6 (Snow Leopard).

Mac OS X 10.6 (Snow Leopard) introduces C functions for loading kexts: KextManagerLoadKextWithIdentifier() and KextManagerLoadKextWithURL(), which are described in Apple's developer documentation.

```

















