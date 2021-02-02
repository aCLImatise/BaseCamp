class: CommandLineTool
id: deBGA_index.cwl
inputs:
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_index_route
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
- deBGA
- index
