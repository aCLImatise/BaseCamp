class: CommandLineTool
id: wb_shortcuts.cwl
inputs:
- id: version
  doc: display version info
  type: boolean
  inputBinding:
    prefix: -version
- id: list_functions
  doc: show available functions
  type: boolean
  inputBinding:
    prefix: -list-functions
- id: all_functions_help
  doc: show all functions and their help info - VERY LONG
  type: boolean
  inputBinding:
    prefix: -all-functions-help
outputs: []
cwlVersion: v1.1
baseCommand:
- wb_shortcuts
