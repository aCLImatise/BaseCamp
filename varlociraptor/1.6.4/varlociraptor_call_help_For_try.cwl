class: CommandLineTool
id: varlociraptor_call_help_For_try.cwl
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
- varlociraptor
- call
- help
- For
- try
