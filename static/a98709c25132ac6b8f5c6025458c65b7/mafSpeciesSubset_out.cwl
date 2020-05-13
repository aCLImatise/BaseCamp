class: CommandLineTool
id: mafSpeciesSubset_out.maf.cwl
inputs:
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: species_lst
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesSubset
- out.maf
