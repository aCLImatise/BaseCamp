class: CommandLineTool
id: artic_fasta_header_filename.cwl
inputs:
- id: header
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic_fasta_header
- filename
