class: CommandLineTool
id: ../../../hmm_info.cwl
inputs:
- id: in_models
  doc: ''
  type: boolean
  inputBinding:
    prefix: -models
- id: in_general
  doc: ''
  type: boolean
  inputBinding:
    prefix: -general
- id: in_durations
  doc: ''
  type: long
  inputBinding:
    prefix: -durations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hmm-info
