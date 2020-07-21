class: CommandLineTool
id: ../../../compare_HLA.py_utsw_fname.cwl
inputs:
- id: compare_hla_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: his_at_genotype_fname
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ut_sw_fname
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_HLA.py
- utsw_fname
