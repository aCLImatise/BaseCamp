class: CommandLineTool
id: ../../../mafSpeciesSubset.cwl
inputs:
- id: keep_first
  doc: "- If set, keep the first 'a' line in a maf no matter what Useful for mafFrag\
    \ results where we use this for the gene name"
  type: boolean
  inputBinding:
    prefix: -keepFirst
- id: in_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: species_dot_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesSubset
