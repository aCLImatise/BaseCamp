class: CommandLineTool
id: compare_HLA.py_utsw_fname.cwl
inputs:
- id: in_compare_hla_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_his_at_genotype_fname
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_ut_sw_fname
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- compare_HLA.py
- utsw_fname
