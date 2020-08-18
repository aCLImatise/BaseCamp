class: CommandLineTool
id: ../../../gff_to_bed.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- gff_to_bed.sh
