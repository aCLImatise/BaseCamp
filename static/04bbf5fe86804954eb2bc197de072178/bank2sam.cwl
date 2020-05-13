class: CommandLineTool
id: bank2sam.cwl
inputs:
- id: b
  doc: 'The bank to be operated on. '
  type: string
  inputBinding:
    prefix: -b
- id: c
  doc: Use contigs as reference
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: Use scaffolds as reference
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: 'Use IIDs as query template name (EIDs is default.) '
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2sam
