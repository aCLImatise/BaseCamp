class: CommandLineTool
id: gsort.cwl
inputs:
- id: chromosome_mappings
  doc: ''
  type: string
  inputBinding:
    prefix: --chromosomemappings
- id: memory
  doc: ''
  type: string
  inputBinding:
    prefix: --memory
- id: parent
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parent
outputs: []
cwlVersion: v1.1
baseCommand:
- gsort
