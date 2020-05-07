class: CommandLineTool
id: anvi_import_state.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-state
