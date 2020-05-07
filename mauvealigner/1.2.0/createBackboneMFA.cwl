class: CommandLineTool
id: createBackboneMFA.cwl
inputs:
- id: input_interval_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_mfa_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- createBackboneMFA
