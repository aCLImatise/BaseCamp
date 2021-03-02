class: CommandLineTool
id: wb_shortcuts.cwl
inputs:
- id: in_version
  doc: display version info
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_list_functions
  doc: show available functions
  type: boolean?
  inputBinding:
    prefix: -list-functions
- id: in_all_functions_help
  doc: show all functions and their help info - VERY LONG
  type: boolean?
  inputBinding:
    prefix: -all-functions-help
- id: in_arguments_dot
  doc: If the first argument is not recognized, all functions that start with the
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wb_shortcuts
