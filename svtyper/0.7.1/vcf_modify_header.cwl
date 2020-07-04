class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_modify_header.py_vcf.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: vcf_modify_header_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_modify_header.py
- vcf
