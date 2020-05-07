class: CommandLineTool
id: ppanggolin_info.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: parameters
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parameters
- id: content
  doc: ''
  type: boolean
  inputBinding:
    prefix: --content
- id: status
  doc: ''
  type: boolean
  inputBinding:
    prefix: --status
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- info
