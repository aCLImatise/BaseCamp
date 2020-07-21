class: CommandLineTool
id: ../../../qp3Pop.cwl
inputs:
- id: use_nam_details
  doc: '... use <nam> as snp details name.'
  type: string
  inputBinding:
    prefix: -f
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: use_val_base
  doc: '... use <val> as base value.'
  type: string
  inputBinding:
    prefix: -s
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
- qp3Pop
