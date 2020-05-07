class: CommandLineTool
id: crux_localize_modification.cwl
inputs:
- id: input_psm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- crux
- localize-modification
