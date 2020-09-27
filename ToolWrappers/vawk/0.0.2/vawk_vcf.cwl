class: CommandLineTool
id: vawk_vcf.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_header
  doc: ''
  type: boolean
  inputBinding:
    prefix: --header
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_va_wk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf
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
- vawk
- vcf
