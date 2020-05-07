class: CommandLineTool
id: centrifuge_inspect.cwl
inputs:
- id: a
  doc: '/--across <int>  Number of characters across in FASTA output (default: 60)'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: /--names         Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: /--summary       Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s
- id: e
  doc: /--bt2-ref       Reconstruct reference from .cf (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e
- id: conversion_table
  doc: conversion table
  type: string
  inputBinding:
    prefix: --conversion-table
- id: taxonomy_tree
  doc: Print taxonomy tree
  type: boolean
  inputBinding:
    prefix: --taxonomy-tree
- id: name_table
  doc: Print names corresponding to taxonomic IDs
  type: boolean
  inputBinding:
    prefix: --name-table
- id: size_table
  doc: Print the lengths of the sequences belonging to the same taxonomic ID
  type: boolean
  inputBinding:
    prefix: --size-table
- id: v
  doc: /--verbose       Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v
- id: help
  doc: print this usage message
  type: boolean
  inputBinding:
    prefix: --help
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-inspect
