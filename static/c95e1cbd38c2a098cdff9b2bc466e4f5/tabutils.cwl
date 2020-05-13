class: CommandLineTool
id: tabutils.cwl
inputs:
- id: view
  doc: '- A data aware tab-delimited file viewer'
  type: string
  inputBinding:
    position: 0
- id: less
  doc: '- view | less -S'
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tabutils
