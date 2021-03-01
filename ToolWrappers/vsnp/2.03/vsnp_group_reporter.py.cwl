class: CommandLineTool
id: vsnp_group_reporter.py.cwl
inputs:
- id: in_vcf
  doc: 'Required: vcf file'
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_ref_option
  doc: 'Required: reference option'
  type: string?
  inputBinding:
    prefix: --ref_option
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_prog
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
- vsnp_group_reporter.py
