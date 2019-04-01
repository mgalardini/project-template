#!/usr/bin/env python


import argparse


def get_options():
    description = ''
    parser = argparse.ArgumentParser(description=description)

    parser.add_argument('name',
                        help='Name')

    return parser.parse_args()


if __name__ == "__main__":
    options = get_options()

