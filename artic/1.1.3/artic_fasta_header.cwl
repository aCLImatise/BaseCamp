class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/artic_fasta_header.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: header
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_fasta_header
