class: CommandLineTool
id: alleyoop_numbers.cwl
inputs:
- id: in_alley_oop
  doc: ''
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
- alleyoop
- numbers
