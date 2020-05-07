class: CommandLineTool
id: planemo_brew_TOOL_PATH.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tool_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- brew
- TOOL_PATH
