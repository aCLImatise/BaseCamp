class: CommandLineTool
id: epydocgui.cwl
inputs:
- id: debug
  doc: Do not suppress error messages
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- epydocgui
