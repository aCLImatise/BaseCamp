class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qpBound.cwl
inputs:
- id: use_nam_details
  doc: '... use <nam> as snp details name.'
  type: string
  inputBinding:
    prefix: -f
- id: use_val_base
  doc: '... use <val> as base value.'
  type: string
  inputBinding:
    prefix: -b
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: print_message_exit
  doc: <>       ... Print this message and exit.
  type: boolean
  inputBinding:
    prefix: -g
- id: use_val_seed
  doc: '... use <val> as seed value.'
  type: string
  inputBinding:
    prefix: -s
- id: give_nam_produced
  doc: '... give <nam> to produced out graph.'
  type: string
  inputBinding:
    prefix: -o
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
- id: toggle_analysis_mode
  doc: '... toggle analysis  mode ON.'
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
- qpBound
