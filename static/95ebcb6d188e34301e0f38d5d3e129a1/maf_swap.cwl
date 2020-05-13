class: CommandLineTool
id: maf_swap.cwl
inputs:
- id: my_alignments_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: n
  doc: 'move the Nth sequence to the top (default: 2)'
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- maf-swap
