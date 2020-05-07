class: CommandLineTool
id: fasta_splitter.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n_parts
  doc: '- Divide into <N> parts'
  type: string
  inputBinding:
    prefix: --n-parts
- id: part_size
  doc: '- Divide into parts of size <N>'
  type: string
  inputBinding:
    prefix: --part-size
- id: measure
  doc: (all|seq|count) - Specify whether all data, sequence length, or number of sequences
    is used for determining part sizes ('all' by default).
  type: boolean
  inputBinding:
    prefix: --measure
- id: line_length
  doc: '- Set output sequence line length, 0 for single line (default: 60).'
  type: boolean
  inputBinding:
    prefix: --line-length
- id: eol
  doc: (dos|mac|unix) - Choose end-of-line character ('unix' by default).
  type: boolean
  inputBinding:
    prefix: --eol
- id: part_num_prefix
  doc: 'before part number in file names (def.: .part-)'
  type: string
  inputBinding:
    prefix: --part-num-prefix
- id: out_dir
  doc: '- Specify output directory.'
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: no_pad
  doc: "- Don't pad part numbers with 0."
  type: boolean
  inputBinding:
    prefix: --nopad
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-splitter
