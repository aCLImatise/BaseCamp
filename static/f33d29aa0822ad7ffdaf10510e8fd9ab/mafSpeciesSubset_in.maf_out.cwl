class: CommandLineTool
id: mafSpeciesSubset_in.maf_out.maf.cwl
inputs:
- id: species_lst
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesSubset
- in.maf
- out.maf
