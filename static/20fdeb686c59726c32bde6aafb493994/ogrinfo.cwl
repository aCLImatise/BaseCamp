class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ogrinfo.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: ro
  doc: ''
  type: boolean
  inputBinding:
    prefix: -ro
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: where
  doc: ''
  type: string
  inputBinding:
    prefix: -where
outputs: []
cwlVersion: v1.1
baseCommand:
- ogrinfo
