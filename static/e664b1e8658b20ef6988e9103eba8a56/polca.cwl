class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/polca.sh.cwl
inputs:
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- polca.sh
