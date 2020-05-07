class: CommandLineTool
id: combineKmers.cwl
inputs:
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: min_samples
  doc: ''
  type: boolean
  inputBinding:
    prefix: --min_samples
outputs: []
cwlVersion: v1.1
baseCommand:
- combineKmers
