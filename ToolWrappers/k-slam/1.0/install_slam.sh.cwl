class: CommandLineTool
id: install_slam.sh.cwl
inputs:
- id: in_mode
  doc: Mode
  type: string
  inputBinding:
    prefix: -m
- id: in_error_exists_make
  doc: No error if exists; make parent directories as needed
  type: boolean
  inputBinding:
    prefix: -p
- id: in_mkdir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_directory_dot_dot_dot
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- install_slam.sh
