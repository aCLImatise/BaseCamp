class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rename_from_fasta.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- rename_from_fasta.sh
