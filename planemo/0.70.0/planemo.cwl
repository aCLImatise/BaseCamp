class: CommandLineTool
id: ../../../planemo.cwl
inputs:
- id: in_verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_config
  doc: Planemo configuration YAML file.
  type: File
  inputBinding:
    prefix: --config
- id: in_directory
  doc: Workspace for planemo.
  type: Directory
  inputBinding:
    prefix: --directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
