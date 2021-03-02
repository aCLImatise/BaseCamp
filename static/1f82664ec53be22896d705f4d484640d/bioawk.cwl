class: CommandLineTool
id: bioawk.cwl
inputs:
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bioawk
