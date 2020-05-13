class: CommandLineTool
id: lusstr.cwl
inputs:
- id: sub_cmd
  doc: annotate, format
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- lusstr
