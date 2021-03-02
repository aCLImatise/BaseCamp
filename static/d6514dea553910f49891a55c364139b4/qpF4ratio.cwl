class: CommandLineTool
id: qpF4ratio.cwl
inputs:
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File?
  inputBinding:
    prefix: -p
- id: in_print_version_exit
  doc: '... print version and exit.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_toggle_verbose_mode
  doc: '... toggle verbose mode ON.'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_file
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
- qpF4ratio
