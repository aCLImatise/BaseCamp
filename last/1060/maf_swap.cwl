class: CommandLineTool
id: ../../../maf_swap.cwl
inputs:
- id: move_nth_sequence
  doc: 'move the Nth sequence to the top (default: 2)'
  type: string
  inputBinding:
    prefix: -n
- id: my_alignments_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-swap
