class: CommandLineTool
id: mconfig.cwl
inputs:
- id: in_config
  doc: "Read the specified config file in addition to\nthe standard ones. Settings\
    \ in this file override ones\nin the other files."
  type: File
  inputBinding:
    prefix: --config
- id: in_target
  doc: Use this target when executing 'command'
  type: string
  inputBinding:
    prefix: --target
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mconfig
