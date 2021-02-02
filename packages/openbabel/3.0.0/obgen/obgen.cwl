class: CommandLineTool
id: obgen.cwl
inputs:
- id: in_ff
  doc: select a forcefield
  type: boolean
  inputBinding:
    prefix: -ff
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- obgen
