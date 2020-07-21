class: CommandLineTool
id: ../../../gdalinfo.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: mm
  doc: ''
  type: boolean
  inputBinding:
    prefix: -mm
- id: stats
  doc: ''
  type: boolean
  inputBinding:
    prefix: -stats
- id: hist
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hist
- id: no_gcp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nogcp
- id: no_md
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nomd
outputs: []
cwlVersion: v1.1
baseCommand:
- gdalinfo
