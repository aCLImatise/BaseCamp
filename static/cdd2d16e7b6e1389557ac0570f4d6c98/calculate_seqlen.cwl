class: CommandLineTool
id: ../../../calculate_seqlen.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_seqlen.sh
