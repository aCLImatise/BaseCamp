class: CommandLineTool
id: correct_frags.cwl
inputs:
- id: by
  doc: get-olaps
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- correct-frags
