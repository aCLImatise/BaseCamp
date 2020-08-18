class: CommandLineTool
id: ../../../faAlign.cwl
inputs:
- id: dna
  doc: '- use DNA scoring scheme'
  type: boolean
  inputBinding:
    prefix: -dna
- id: target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_do_tax_t
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- faAlign
