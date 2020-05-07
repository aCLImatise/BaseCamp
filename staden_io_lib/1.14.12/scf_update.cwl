class: CommandLineTool
id: scf_update.cwl
inputs:
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: destination
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- scf_update
