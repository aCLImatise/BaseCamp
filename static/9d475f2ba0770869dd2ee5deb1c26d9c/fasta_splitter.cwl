class: CommandLineTool
id: fasta_splitter.cwl
inputs:
- id: in_n_parts
  doc: '- Divide into <N> parts'
  type: string?
  inputBinding:
    prefix: --n-parts
- id: in_part_size
  doc: '- Divide into parts of size <N>'
  type: long?
  inputBinding:
    prefix: --part-size
- id: in_measure
  doc: "(all|seq|count) - Specify whether all data, sequence length, or\nnumber of\
    \ sequences is used for determining part\nsizes ('all' by default)."
  type: boolean?
  inputBinding:
    prefix: --measure
- id: in_line_length
  doc: "- Set output sequence line length, 0 for single line\n(default: 60)."
  type: boolean?
  inputBinding:
    prefix: --line-length
- id: in_eol
  doc: (dos|mac|unix) - Choose end-of-line character ('unix' by default).
  type: boolean?
  inputBinding:
    prefix: --eol
- id: in_part_num_prefix
  doc: '- Put T before part number in file names (def.: .part-)'
  type: long?
  inputBinding:
    prefix: --part-num-prefix
- id: in_out_dir
  doc: '- Specify output directory.'
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_no_pad
  doc: "- Don't pad part numbers with 0."
  type: boolean?
  inputBinding:
    prefix: --nopad
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: '- Specify output directory.'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- fasta-splitter
