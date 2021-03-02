class: CommandLineTool
id: timescorealn.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_program
  doc: ''
  type: string?
  inputBinding:
    prefix: -program
- id: in_ref
  doc: ''
  type: string?
  inputBinding:
    prefix: -ref
- id: in_test
  doc: ''
  type: string?
  inputBinding:
    prefix: -test
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- timescorealn
