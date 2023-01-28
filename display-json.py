#!/usr/bin/env python
"""To launch: ``$ python update.py > animals.rst``  """

import json

def headline(text, adorn='='):
    return text + '\n' + adorn*len(text)

def main():
    header = headline('Animals') + '\n\nAnimal info here.\n'
    footer = '\n.. End of document\n'
    mask = '* {name} -- {species}'

    with open('animals.json', 'r') as infile:
        data = json.load(infile)

    print(header)
    for beast in data['animals']:
        print(mask.format(**beast))
    print(footer)

if __name__ == '__main__':
    main()