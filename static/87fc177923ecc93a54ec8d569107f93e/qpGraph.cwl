class: CommandLineTool
id: ../../../qpGraph.cwl
inputs:
- id: use_val_z
  doc: '... use <val> as Z threshold.'
  type: string
  inputBinding:
    prefix: -z
- id: use_val_seed
  doc: '... use <val> seed.'
  type: string
  inputBinding:
    prefix: -s
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: use_nam_graph_name
  doc: '... use <nam> as graph name.'
  type: string
  inputBinding:
    prefix: -g
- id: use_nam_au
  doc: '... use <nam> au out graph.'
  type: string
  inputBinding:
    prefix: -o
- id: use_nam_graph_dot
  doc: '... use <nam> for graph dot name.'
  type: string
  inputBinding:
    prefix: -d
- id: use_nam_oulier
  doc: '... use <nam> as oulier name.'
  type: string
  inputBinding:
    prefix: -x
- id: use_val_lambda
  doc: '... use <val> as lambda scale value.'
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
outputs: []
cwlVersion: v1.1
baseCommand:
- qpGraph
