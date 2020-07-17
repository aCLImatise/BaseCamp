class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prokka_annotation.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- prokka_annotation.sh
