class: CommandLineTool
id: NanoLyse.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: log_file
  doc: ''
  type: string
  inputBinding:
    prefix: --logfile
outputs: []
cwlVersion: v1.1
baseCommand:
- NanoLyse
