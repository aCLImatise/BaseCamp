class: CommandLineTool
id: ../../../mafSpeciesList.cwl
inputs:
- id: ignore_first
  doc: '- If true ignore first species in each maf, useful when this is a mafFrags
    result that puts gene id there.'
  type: boolean
  inputBinding:
    prefix: -ignoreFirst
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesList
