#!/usr/bin/env cwl-runner

baseCommand:
- fasta-splitter
class: CommandLineTool
cwlVersion: v1.0
id: fasta-splitter
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: '- Divide into <N> parts'
  id: n_parts
  inputBinding:
    prefix: --n-parts
  type: string
- doc: '- Divide into parts of size <N>'
  id: part_size
  inputBinding:
    prefix: --part-size
  type: string
- doc: (all|seq|count) - Specify whether all data, sequence length, or number of sequences
    is used for determining part sizes ('all' by default).
  id: measure
  inputBinding:
    prefix: --measure
  type: boolean
- doc: '- Set output sequence line length, 0 for single line (default: 60).'
  id: line_length
  inputBinding:
    prefix: --line-length
  type: boolean
- doc: (dos|mac|unix) - Choose end-of-line character ('unix' by default).
  id: eol
  inputBinding:
    prefix: --eol
  type: boolean
- doc: 'before part number in file names (def.: .part-)'
  id: part_num_prefix
  inputBinding:
    prefix: --part-num-prefix
  type: string
- doc: '- Specify output directory.'
  id: out_dir
  inputBinding:
    prefix: --out-dir
  type: boolean
- doc: "- Don't pad part numbers with 0."
  id: no_pad
  inputBinding:
    prefix: --nopad
  type: boolean
