class: CommandLineTool
id: ../../../srf2fasta.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srf2fasta
