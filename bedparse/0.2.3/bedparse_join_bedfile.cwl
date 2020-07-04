class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedparse_join_bedfile.cwl
inputs:
- id: annotation
  doc: ''
  type: string
  inputBinding:
    prefix: --annotation
- id: column
  doc: ''
  type: string
  inputBinding:
    prefix: --column
- id: bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: join
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- join
- bedfile
