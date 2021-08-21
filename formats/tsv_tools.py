#!/usr/bin/env python3
"""Tools for parsing TSVs"""

from csv import reader as csv_reader
from pprint import pprint

def tsv_init(filename):
    tsv_file = open(filename)
    tsv_read = csv_reader(tsv_file, delimiter="\t")
    return tsv_file, tsv_read

def tsv_read_n_lines(filename, n_lines=1):
    tsv_file, tsv_read = tsv_init(filename)
    counter = 0
    for row in tsv_read:
        pprint(row)
        if counter >= n_lines - 1:
            break
        counter += 1

def tsv_parse(filename):
    tsv_file, tsv_read = tsv_init(filename)
    data = []
    for row in tsv_read:
        fields = row
        break
    for row in tsv_read:
        data_item = {}
        for i, value in enumerate(row):
            data_item[fields[i]] = value
        data.append(data_item)
    return data
