class: CommandLineTool
id: ../../../RemovePseudoknots.cwl
inputs:
- id: input_ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_ct_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- RemovePseudoknots
