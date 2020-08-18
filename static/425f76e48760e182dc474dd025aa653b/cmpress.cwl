class: CommandLineTool
id: ../../../cmpress.cwl
inputs:
- id: force_overwrite_files
  doc: ': force: overwrite any previous pressed files'
  type: boolean
  inputBinding:
    prefix: -F
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- cmpress
