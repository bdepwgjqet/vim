#!/usr/bin/env python
# -*- coding: utf-8 -*-"

# Add utf-8 encode

import sys
import json
import codecs

def main():
    if len(sys.argv) == 1:
        infile = sys.stdin
        outfile = sys.stdout
    elif len(sys.argv) == 2:
        infile = open(sys.argv[1], 'rb')
        outfile = sys.stdout
    elif len(sys.argv) == 3:
        infile = open(sys.argv[1], 'rb')
        outfile = open(sys.argv[2], 'wb')
    else:
        raise SystemExit(sys.argv[0] + " [infile [outfile]]")
    with infile:
        try:
            obj = json.load(infile)
        except ValueError, e:
            raise SystemExit(e)
    with outfile:
        outfile.write(codecs.encode(json.dumps(obj, sort_keys=True,
                  indent=4, separators=(',', ': '), ensure_ascii=False),'utf-8') + '\n')

if __name__ == '__main__':
    main()
