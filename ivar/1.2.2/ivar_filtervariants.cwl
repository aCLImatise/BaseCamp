class: CommandLineTool
id: ivar_filtervariants.cwl
inputs:
- id: replicate_one_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ivar
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: filter_variants
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: t
  doc: 'Minimum fration of files required to contain the same variant. Specify value
    within [0,1]. (Default: 1)'
  type: boolean
  inputBinding:
    prefix: -t
- id: f
  doc: A text file with one variant file per line.
  type: boolean
  inputBinding:
    prefix: -f
- id: p
  doc: (Required) Prefix for the output filtered tsv file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- filtervariants
