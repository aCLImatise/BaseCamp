class: CommandLineTool
id: maf_swap.cwl
inputs:
- id: in_move_nth_sequence
  doc: 'move the Nth sequence to the top (default: 2)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_my_alignments_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf-swap
