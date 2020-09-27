class: CommandLineTool
id: centrifuge_inspect_bin.cwl
inputs:
- id: in_a_slash_across
  doc: 'Number of characters across in FASTA output (default: 60)'
  type: long
  inputBinding:
    prefix: -a/--across
- id: in_n_slash_names
  doc: Print reference sequence names only
  type: boolean
  inputBinding:
    prefix: -n/--names
- id: in_s_slash_summary
  doc: Print summary incl. ref names, lengths, index properties
  type: boolean
  inputBinding:
    prefix: -s/--summary
- id: in_e_slash_bt_two_ref
  doc: Reconstruct reference from .cf (slow, preserves colors)
  type: boolean
  inputBinding:
    prefix: -e/--bt2-ref
- id: in_conversion_table
  doc: conversion table
  type: string
  inputBinding:
    prefix: --conversion-table
- id: in_taxonomy_tree
  doc: Print taxonomy tree
  type: boolean
  inputBinding:
    prefix: --taxonomy-tree
- id: in_name_table
  doc: Print names corresponding to taxonomic IDs
  type: boolean
  inputBinding:
    prefix: --name-table
- id: in_size_table
  doc: Print the lengths of the sequences belonging to the same taxonomic ID
  type: boolean
  inputBinding:
    prefix: --size-table
- id: in_v_slash_verbose
  doc: Verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_h_slash_help
  doc: print detailed description of tool and its options
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_centrifuge_inspect
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- centrifuge-inspect-bin
