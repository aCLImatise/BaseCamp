class: CommandLineTool
id: rmiregistry.cwl
inputs:
- id: in_runtime_flag_pass
  doc: <runtime flag> Pass argument to the java interpreter
  type: boolean
  inputBinding:
    prefix: -J
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_port
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
- rmiregistry
