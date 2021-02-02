class: CommandLineTool
id: printafm.cwl
inputs:
- id: in_fontname
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- printafm
