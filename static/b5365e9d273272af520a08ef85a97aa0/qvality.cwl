class: CommandLineTool
id: ../../../qvality.cwl
inputs:
- id: include_negative
  doc: Include negative hits (decoy) probabilities  in the results
  type: boolean
  inputBinding:
    prefix: --include-negative
- id: target_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: null_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qvality
