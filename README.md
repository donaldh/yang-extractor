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
host% ./yang-extractor.pl
Usage:
  ./yang-extractor.pl <rfc-file>
```

Grab your favourite RFC file from the Interwebs and extract the YANG modules:
```
host% curl -O https://tools.ietf.org/id/draft-ietf-i2rs-yang-l3-topology-01.txt
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 56535  100 56535    0     0  36363      0  0:00:01  0:00:01 --:--:-- 36356
host% ./yang-extractor.pl draft-ietf-i2rs-yang-l3-topology-01.txt
Saving 443 lines into ietf-l3-unicast-igp-topology@2015-12-11.yang
Saving 327 lines into ietf-ospf-topology@2015-12-11.yang
Saving 273 lines into isis-topology@2015-12-11.yang
host%
```
