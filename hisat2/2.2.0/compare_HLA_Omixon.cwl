class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/compare_HLA_Omixon.py_omixon_fname.cwl
inputs:
- id: compare_hla_omix_on_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: his_at_genotype_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: omix_on_fname
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_HLA_Omixon.py
- omixon_fname
