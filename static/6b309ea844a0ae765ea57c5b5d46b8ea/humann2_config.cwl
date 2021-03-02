class: CommandLineTool
id: humann2_config.cwl
inputs:
- id: in_print
  doc: print the configuration
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_update
  doc: "<name> <value>\nupdate the section : name to the value provided\n"
  type: string?
  inputBinding:
    prefix: --update
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_value
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
- humann2_config
