class: CommandLineTool
id: bactopia_versions.py.cwl
inputs:
- id: in_directory_where_stored
  doc: Directory where Bactopia repository is stored.
  type: Directory
  inputBinding:
    prefix: --bactopia
- id: in_var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_versions
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
- bactopia-versions.py
