class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gdalwarp.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
- id: formats
  doc: ''
  type: boolean
  inputBinding:
    prefix: --formats
outputs: []
cwlVersion: v1.1
baseCommand:
- gdalwarp
