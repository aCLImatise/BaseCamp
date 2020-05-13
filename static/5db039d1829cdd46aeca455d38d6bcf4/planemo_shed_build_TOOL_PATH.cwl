class: CommandLineTool
id: planemo_shed_build_TOOL_PATH.cwl
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
- shed_build
- TOOL_PATH
