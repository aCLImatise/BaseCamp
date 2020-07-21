class: CommandLineTool
id: ../../../qpDstat.cwl
inputs:
- id: use_val_low
  doc: '... use <val> as low value.'
  type: string
  inputBinding:
    prefix: -L
- id: use_val_high
  doc: '... use <val> as high value.'
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
- qpDstat
