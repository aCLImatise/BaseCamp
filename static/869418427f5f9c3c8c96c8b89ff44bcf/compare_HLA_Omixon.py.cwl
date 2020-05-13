class: CommandLineTool
id: compare_HLA_Omixon.py.bak.cwl
inputs:
- id: his_at_genotype_fname
  doc: hisatgenotype file name (e.g. cp_hla.txt)
  type: string
  inputBinding:
    position: 0
- id: omix_on_fname
  doc: omixon file name (e.g. omixon_caapa_hla.txt)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_HLA_Omixon.py.bak
