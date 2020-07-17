class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/blast_to_link.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- blast_to_link.sh
