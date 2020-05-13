class: CommandLineTool
id: mafSpeciesSubset_in.maf_species.lst.cwl
inputs:
- id: out_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesSubset
- in.maf
- species.lst
