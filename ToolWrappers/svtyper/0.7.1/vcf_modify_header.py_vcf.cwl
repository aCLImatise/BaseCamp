class: CommandLineTool
id: vcf_modify_header.py_vcf.cwl
inputs:
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_n
  doc: ''
  type: string?
  inputBinding:
    prefix: -n
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_vcf_modify_header_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcf_modify_header.py
- vcf
