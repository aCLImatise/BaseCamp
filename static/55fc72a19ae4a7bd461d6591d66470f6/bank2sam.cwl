class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bank2sam.cwl
inputs:
- id: the_bank_operated
  doc: 'The bank to be operated on. '
  type: string
  inputBinding:
    prefix: -b
- id: use_contigs_reference
  doc: Use contigs as reference
  type: boolean
  inputBinding:
    prefix: -c
- id: use_scaffolds_reference
  doc: Use scaffolds as reference
  type: boolean
  inputBinding:
    prefix: -s
- id: use_iids_query
  doc: 'Use IIDs as query template name (EIDs is default.) '
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- bank2sam
