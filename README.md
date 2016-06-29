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

Prerequisite
------------

The yang-extractor.pl script is written in Perl 6 which is available for most platforms.

#### MacOS

The easiest way to install Perl 6 in MacOS is by using Homebrew.

    brew install rakudo-star

#### Windows

Windows users can install the most recent 64 bit or 32 bit MSI of Rakudo Star from:

http://rakudo.org/downloads/star/

#### Linux

There are instructions for building from source on your favourite Linux distribution:

http://rakudo.org/how-to-get-rakudo/
