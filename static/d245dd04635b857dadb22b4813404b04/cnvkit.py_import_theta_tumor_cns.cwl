class: CommandLineTool
id: cnvkit.py_import_theta_tumor_cns.cwl
inputs:
- id: in_d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
- id: in_ploidy
  doc: ''
  type: string
  inputBinding:
    prefix: --ploidy
- id: in_cnv_kit_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_import_theta
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- import-theta
- tumor_cns
