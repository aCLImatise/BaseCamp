class: CommandLineTool
id: autoDtd.cwl
inputs:
- id: in_xml
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dtd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_stats
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: tree.
  type: string
  inputBinding:
    prefix: '- Output'
- id: output
  doc: tag tree.
  type: string
  inputBinding:
    prefix: '- Output'
outputs: []
cwlVersion: v1.1
baseCommand:
- autoDtd
