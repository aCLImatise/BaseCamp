class: CommandLineTool
id: planemo_virtualenv.cwl
inputs:
- id: in_python
  doc: "--help                   Show this message and exit.\n"
  type: string
  inputBinding:
    prefix: --python
- id: in_virtual_env_path
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
- virtualenv
