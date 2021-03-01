class: CommandLineTool
id: mafToBigMaf.cwl
inputs:
- id: in_referenced_b
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafToBigMaf
