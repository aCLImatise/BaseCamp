class: CommandLineTool
id: compare_HLA_Omixon.py_omixon_fname.cwl
inputs:
- id: in_compare_hla_omix_on_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_his_at_genotype_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_omix_on_fname
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- compare_HLA_Omixon.py
- omixon_fname
