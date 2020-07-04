class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/afetch_alignment database.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: name_or_accession
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- afetch
- alignment database
