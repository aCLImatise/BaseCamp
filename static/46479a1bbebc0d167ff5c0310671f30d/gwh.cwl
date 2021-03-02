class: CommandLineTool
id: gwh.cwl
inputs:
- id: in_unit
  doc: '1 Error on OPEN: prmtop'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gwh
