class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/centrifuge_inspect_bin.cwl
inputs:
- id: a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
- id: s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: e_slash_bt_two_ref
  doc: Reconstruct reference from .cf (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e/--bt2-ref
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
- id: v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: centrifuge_inspect
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge-inspect-bin
