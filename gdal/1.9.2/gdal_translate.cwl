class: CommandLineTool
id: gdal_translate.cwl
inputs:
- id: help_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: --help-general
outputs: []
cwlVersion: v1.1
baseCommand:
- gdal_translate
