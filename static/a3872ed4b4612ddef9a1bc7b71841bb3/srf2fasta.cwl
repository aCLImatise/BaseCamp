class: CommandLineTool
id: srf2fasta.cwl
inputs:
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- srf2fasta
