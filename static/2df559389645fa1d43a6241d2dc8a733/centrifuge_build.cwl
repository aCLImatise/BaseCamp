class: CommandLineTool
id: centrifuge_build.cwl
inputs:
- id: reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: centrifuge_index_base
  doc: write cf data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '/--offrate <int>      SA is sampled every 2^offRate BWT chars (default: 5)'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '/--ftabchars <int>    # of chars consumed in initial lookup (default: 10)'
  type: boolean
  inputBinding:
    prefix: -t
- id: conversion_table
  doc: a table that converts any id to a taxonomy id
  type: File
  inputBinding:
    prefix: --conversion-table
- id: taxonomy_tree
  doc: <file name>  taxonomy tree
  type: boolean
  inputBinding:
    prefix: --taxonomy-tree
- id: name_table
  doc: <file name>  names corresponding to taxonomic IDs
  type: boolean
  inputBinding:
    prefix: --name-table
- id: size_table
  doc: <file name>  table of contig (or genome) sizes
  type: boolean
  inputBinding:
    prefix: --size-table
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: q
  doc: /--quiet              verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -q
- id: p
  doc: /--threads <int>      number of alignment threads to launch (1)
  type: boolean
  inputBinding:
    prefix: -p
- id: km_er_count
  doc: k size for counting the number of distinct k-mer
  type: long
  inputBinding:
    prefix: --kmer-count
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-build
