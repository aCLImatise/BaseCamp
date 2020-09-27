class: CommandLineTool
id: qpBound.cwl
inputs:
- id: in_use_nam_snp
  doc: '... use <nam> as snp details name.'
  type: string
  inputBinding:
    prefix: -f
- id: in_use_val_base
  doc: '... use <val> as base value.'
  type: string
  inputBinding:
    prefix: -b
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: in_print_message_exit
  doc: <>       ... Print this message and exit.
  type: boolean
  inputBinding:
    prefix: -g
- id: in_use_val_seed
  doc: '... use <val> as seed value.'
  type: string
  inputBinding:
    prefix: -s
- id: in_give_nam_produced
  doc: '... give <nam> to produced out graph.'
  type: string
  inputBinding:
    prefix: -o
- id: in_print_version_exit
  doc: '... print version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_toggle_verbose_mode
  doc: '... toggle verbose mode ON.'
  type: boolean
  inputBinding:
    prefix: -V
- id: in_toggle_analysis_mode
  doc: '... toggle analysis  mode ON.'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qpBound
