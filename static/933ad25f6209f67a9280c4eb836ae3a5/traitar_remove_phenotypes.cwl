class: CommandLineTool
id: ../../../traitar_remove_phenotypes.cwl
inputs:
- id: keep
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep
- id: trait_ar
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: remove
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: archive_f
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: phenotypes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out_f
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- remove
- phenotypes
