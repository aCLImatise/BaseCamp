class: CommandLineTool
id: gappa_tools_version.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gappa
- tools
- version
