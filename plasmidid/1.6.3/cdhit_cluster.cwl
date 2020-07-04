class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cdhit_cluster.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- cdhit_cluster.sh
