class: CommandLineTool
id: ../../../filter_fasta.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_fasta.sh
