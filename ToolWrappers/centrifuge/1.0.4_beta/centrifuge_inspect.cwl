class: CommandLineTool
id: centrifuge_inspect.cwl
inputs:
- id: in_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long?
  inputBinding:
    prefix: --across
- id: in_names
  doc: Print reference sequence names only
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_bt_two_ref
  doc: Reconstruct reference from .cf (slow, preserves colors)
  type: boolean?
  inputBinding:
    prefix: --bt2-ref
- id: in_conversion_table
  doc: conversion table
  type: string?
  inputBinding:
    prefix: --conversion-table
- id: in_taxonomy_tree
  doc: Print taxonomy tree
  type: boolean?
  inputBinding:
    prefix: --taxonomy-tree
- id: in_name_table
  doc: Print names corresponding to taxonomic IDs
  type: boolean?
  inputBinding:
    prefix: --name-table
- id: in_size_table
  doc: Print the lengths of the sequences belonging to the same taxonomic ID
  type: boolean?
  inputBinding:
    prefix: --size-table
- id: in_verbose
  doc: Verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- centrifuge-inspect
