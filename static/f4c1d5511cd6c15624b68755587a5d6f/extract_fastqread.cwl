class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/extract_fastqread.cwl
inputs:
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: prog
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_fastqread
