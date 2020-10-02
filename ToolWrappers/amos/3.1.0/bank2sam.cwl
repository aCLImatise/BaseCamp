class: CommandLineTool
id: bank2sam.cwl
inputs:
- id: in_the_bank_operated
  doc: The bank to be operated on.
  type: string
  inputBinding:
    prefix: -b
- id: in_use_contigs_reference
  doc: Use contigs as reference
  type: boolean
  inputBinding:
    prefix: -c
- id: in_use_scaffolds_reference
  doc: Use scaffolds as reference
  type: boolean
  inputBinding:
    prefix: -s
- id: in_use_iids_query
  doc: Use IIDs as query template name (EIDs is default.)
  type: boolean
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bank2sam
