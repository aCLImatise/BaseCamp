class: CommandLineTool
id: ../../../planemo_config_init.cwl
inputs:
- id: in_template
  doc: ''
  type: string
  inputBinding:
    prefix: --template
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- config_init
