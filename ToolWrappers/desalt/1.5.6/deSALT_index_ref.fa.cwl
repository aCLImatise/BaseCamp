class: CommandLineTool
id: ../../../deSALT_index_ref.fa.cwl
inputs:
- id: in_de_bga
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_index_route
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deSALT
- index
- ref.fa
