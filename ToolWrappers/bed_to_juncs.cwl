class: CommandLineTool
id: bed_to_juncs.cwl
inputs:
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bed_to_juncs
