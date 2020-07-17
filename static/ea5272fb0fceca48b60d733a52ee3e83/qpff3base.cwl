class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qpff3base.cwl
inputs:
- id: use_val_lambda
  doc: '... use <val> as lambda scale.'
  type: string
  inputBinding:
    prefix: -l
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
- id: _toggle_doanalysis
  doc: '... toggle doAnalysis ON.'
  type: boolean
  inputBinding:
    prefix: -x
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qpff3base
