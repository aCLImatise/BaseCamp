class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedItemOverlapCount.cwl
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
- id: sort
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_file_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedItemOverlapCount
