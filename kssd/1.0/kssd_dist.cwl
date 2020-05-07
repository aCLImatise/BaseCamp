class: CommandLineTool
id: kssd_dist.cwl
inputs:
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- kssd
- dist
