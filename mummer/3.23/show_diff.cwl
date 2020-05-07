class: CommandLineTool
id: show_diff.cwl
inputs:
- id: delta_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- show-diff
