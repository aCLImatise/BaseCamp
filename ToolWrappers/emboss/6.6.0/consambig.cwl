class: CommandLineTool
id: consambig.cwl
inputs:
- id: in_name
  doc: string     Name of the consensus sequence (Any string)
  type: boolean?
  inputBinding:
    prefix: -name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- consambig
