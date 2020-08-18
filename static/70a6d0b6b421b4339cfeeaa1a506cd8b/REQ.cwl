class: CommandLineTool
id: ../../../REQ.cwl
inputs:
- id: verbose_mode
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: -v
- id: d_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: t_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: outfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- REQ
