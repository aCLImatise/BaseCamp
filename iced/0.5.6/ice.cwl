class: CommandLineTool
id: ../../../ice.cwl
inputs:
- id: results_filename
  doc: ''
  type: string
  inputBinding:
    prefix: --results_filename
- id: normalization
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ice
