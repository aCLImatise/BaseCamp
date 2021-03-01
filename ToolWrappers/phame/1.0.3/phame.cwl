class: CommandLineTool
id: phame.cwl
inputs:
- id: in_help_message_exit
  doc: this help message and exit
  type: string?
  inputBinding:
    prefix: -h
- id: in_version_number_exit
  doc: version number and exit
  type: long?
  inputBinding:
    prefix: -v
- id: in_v_check
  doc: if all depenencies are correct and in path.
  type: File?
  inputBinding:
    prefix: --vcheck
- id: in_control_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phame
