class: CommandLineTool
id: mafSpeciesList_in.maf.cwl
inputs:
- id: out_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesList
- in.maf
