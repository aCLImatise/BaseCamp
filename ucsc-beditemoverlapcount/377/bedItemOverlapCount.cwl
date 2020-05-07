class: CommandLineTool
id: bedItemOverlapCount.cwl
inputs:
- id: host
  doc: mysql host used to get chrom sizes
  type: string
  inputBinding:
    prefix: -host
- id: user
  doc: mysql user
  type: string
  inputBinding:
    prefix: -user
- id: password
  doc: mysql password
  type: string
  inputBinding:
    prefix: -password
outputs: []
cwlVersion: v1.1
baseCommand:
- bedItemOverlapCount
