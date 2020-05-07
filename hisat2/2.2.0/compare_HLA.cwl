class: CommandLineTool
id: compare_HLA.py.cwl
inputs:
- id: his_at_genotype_fname
  doc: hisatgenotype file name (e.g. cp_hla.txt)
  type: string
  inputBinding:
    position: 0
- id: ut_sw_fname
  doc: utsw file name (e.g. utsw_caapa_hla.txt)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_HLA.py
