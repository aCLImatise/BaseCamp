class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vawk_vcf.cwl
inputs:
- id: v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: header
  doc: ''
  type: boolean
  inputBinding:
    prefix: --header
- id: debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: va_wk
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: cmd
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- vawk
- vcf
