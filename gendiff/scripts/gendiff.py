"""Func parse args """
import argparse


def parse():
    """Func parse and return args."""
    parser = argparse.ArgumentParser(description='Generate diff')
    parser.add_argument('first_file', type=str)
    parser.add_argument('second_file', type=str)
    return parser.parse_args()
