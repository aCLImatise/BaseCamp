class: CommandLineTool
id: ../../../qpDpart.cwl
inputs:
- id: use_val_as
  doc: '... use <val> as low count value.'
  type: string
  inputBinding:
    prefix: -L
- id: use_val_sa
  doc: '... use <val> sa high count value.'
  type: string
  inputBinding:
    prefix: -H
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: print_version_exit
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: toggle_verbose_mode
  doc: '... toggle verbose mode ON.'
  type: boolean
  inputBinding:
    prefix: -V
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qpDpart
