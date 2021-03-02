class: CommandLineTool
id: xtandem.cwl
inputs:
- id: in_tandem
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xtandem
