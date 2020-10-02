class: CommandLineTool
id: faAlign.cwl
inputs:
- id: in_dna
  doc: '- use DNA scoring scheme'
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_target_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_query_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- faAlign
