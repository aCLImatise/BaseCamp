class: CommandLineTool
id: lua.cwl
inputs:
- id: in_execute_string
  doc: execute string 'stat'
  type: string?
  inputBinding:
    prefix: -e
- id: in_enter_interactive_mode
  doc: enter interactive mode after executing 'script'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_require_library
  doc: require library 'name'
  type: string?
  inputBinding:
    prefix: -l
- id: in_show_version_information
  doc: show version information
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_ignore_environment_variables
  doc: ignore environment variables
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_script
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lua
