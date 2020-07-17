class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quality_trim.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- quality_trim.sh
