class: CommandLineTool
id: bedtools_split.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- split
