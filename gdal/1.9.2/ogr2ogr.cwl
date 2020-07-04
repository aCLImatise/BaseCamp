class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ogr2ogr.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: skip_failures
  doc: ''
  type: boolean
  inputBinding:
    prefix: -skipfailures
- id: append
  doc: ''
  type: boolean
  inputBinding:
    prefix: -append
- id: update
  doc: ''
  type: boolean
  inputBinding:
    prefix: -update
outputs: []
cwlVersion: v1.1
baseCommand:
- ogr2ogr
