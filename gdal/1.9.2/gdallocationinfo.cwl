class: CommandLineTool
id: ../../../gdallocationinfo.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: xml
  doc: ''
  type: boolean
  inputBinding:
    prefix: -xml
- id: l_if_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lifonly
- id: val_only
  doc: ''
  type: boolean
  inputBinding:
    prefix: -valonly
outputs: []
cwlVersion: v1.1
baseCommand:
- gdallocationinfo
