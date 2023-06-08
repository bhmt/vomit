# vomit

Make your python code somewhat unintelligible but still readable.
Change the utf8 encoding of class names, function names, function args, and name nodes with a fitting unicode representation.
Or switch those back from unicode to utf8.

## Installation

the package is available on pypi and can be installed using pip.
Activate a virtual environment and run

```

pip install py-vomit

```

## Usage

As a module run vomit with either encode or decode option

```shell

usage: python -m vomit [-h] (-e | -d) [-f FILE] [-o OUT]

options:
  -h, --help            show this help message and exit
  -e, --encode          indicate the file should be encoded
  -d, --decode          indicate the file should be decoded
  -f FILE, --file FILE  the file to encode or decode, default to stdin
  -o OUT, --out OUT     the output destination, default to stdout

```


or use vomit as a library

```py

from vomit import to_unicode
from vomit import to_utf8
from vomit import UNICODE_MAP

print(to_utf8('a'))
# 'a'
print(to_unicode('a'))
# '𝔞'

```