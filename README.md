yang-extractor.pl
-----------------

Extract YANG modules from RFC text.

This script will extract YANG modules from RFC text files that are marked up like this:

```
<CODE BEGINS> file "filename.yang"
...
<CODE ENDS>
```

Usage
-----

```
% ./yang-extractor.pl
Usage:
  ./yang-extractor.pl <rfc-file>
```

```
% ./yang-extractor.pl draft-ietf-i2rs-yang-network-topo-02.txt
Saving 224 lines into ietf-network@2015-12-08.yang
Saving 312 lines into ietf-network-topology@2015-12-08.yang
```
