class: CommandLineTool
id: ../../../sam_to_bam.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- sam_to_bam.sh
