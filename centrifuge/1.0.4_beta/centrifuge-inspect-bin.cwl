#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge-inspect-bin
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge-inspect-bin
inputs:
- doc: '/--across <int>  Number of characters across in FASTA output (default: 60)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: /--names         Print reference sequence names only
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: /--summary       Print summary incl. ref names, lengths, index properties
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: /--bt2-ref       Reconstruct reference from .cf (slow, preserves colors)
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: conversion table
  id: conversion_table
  inputBinding:
    prefix: --conversion-table
  type: string
- doc: Print taxonomy tree
  id: taxonomy_tree
  inputBinding:
    prefix: --taxonomy-tree
  type: boolean
- doc: Print names corresponding to taxonomic IDs
  id: name_table
  inputBinding:
    prefix: --name-table
  type: boolean
- doc: Print the lengths of the sequences belonging to the same taxonomic ID
  id: size_table
  inputBinding:
    prefix: --size-table
  type: boolean
- doc: /--verbose       Verbose output (for debugging)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: print this usage message
  id: help
  inputBinding:
    prefix: --help
  type: boolean
