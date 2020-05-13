class: CommandLineTool
id: terminus_help_For_try.cwl
inputs:
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- terminus
- help
- For
- try
