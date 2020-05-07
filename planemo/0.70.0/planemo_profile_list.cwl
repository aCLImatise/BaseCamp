class: CommandLineTool
id: planemo_profile_list.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- profile_list
