#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-build-bin
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-build-bin
inputs:
- doc: comma-separated list of files with ref sequences
  id: reference_in
  inputBinding:
    position: 0
  type: string
- doc: write cf data to files with this dir/basename
  id: centrifuge_index_base
  inputBinding:
    position: 1
  type: string
- doc: '/--offrate <int>      SA is sampled every 2^offRate BWT chars (default: 5)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--ftabchars <int>    # of chars consumed in initial lookup (default: 10)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: a table that converts any id to a taxonomy id
  id: conversion_table
  inputBinding:
    prefix: --conversion-table
  type: File
- doc: <file name>  taxonomy tree
  id: taxonomy_tree
  inputBinding:
    prefix: --taxonomy-tree
  type: boolean
- doc: <file name>  names corresponding to taxonomic IDs
  id: name_table
  inputBinding:
    prefix: --name-table
  type: boolean
- doc: <file name>  table of contig (or genome) sizes
  id: size_table
  inputBinding:
    prefix: --size-table
  type: boolean
- doc: seed for random number generator
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: /--quiet              verbose output (for debugging)
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: /--threads <int>      number of alignment threads to launch (1)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: k size for counting the number of distinct k-mer
  id: km_er_count
  inputBinding:
    prefix: --kmer-count
  type: long
