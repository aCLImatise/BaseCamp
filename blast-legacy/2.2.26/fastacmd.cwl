class: CommandLineTool
id: fastacmd.cwl
inputs:
- id: d
  doc: 'Dump the entire database as (default is not to dump anything): 1 FASTA 2 Gi
    list 3 Accession.version list'
  type: boolean
  inputBinding:
    prefix: -D
- id: p
  doc: Retrieve sequences with this PIG [Integer]  Optional
  type: boolean
  inputBinding:
    prefix: -P
outputs: []
cwlVersion: v1.1
baseCommand:
- fastacmd
