class: CommandLineTool
id: ../../../qpreroot.cwl
inputs:
- id: use_parameters_file
  doc: '... use parameters from <file> .'
  type: File
  inputBinding:
    prefix: -p
- id: use_nam_root
  doc: '... use <nam> as root name.'
  type: string
  inputBinding:
    prefix: -r
- id: use_nam_graph
  doc: '... use <nam> as graph name.'
  type: string
  inputBinding:
    prefix: -g
- id: use_nam_out
  doc: '... use <nam> as out graph name.'
  type: string
  inputBinding:
    prefix: -o
- id: use_nam_dot
  doc: '... use <nam> as dot graph name.'
  type: string
  inputBinding:
    prefix: -d
- id: use_nam_script
  doc: '... use <nam> as script name.'
  type: string
  inputBinding:
    prefix: -s
- id: delete_population_nam
  doc: '... delete population <nam>.'
  type: string
  inputBinding:
    prefix: -x
- id: toggle_hash_calculation
  doc: '... toggle hash calculation ON.'
  type: boolean
  inputBinding:
    prefix: -H
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
- id: new_output_format
  doc: '... new output format (edge not ledge etc.'
  type: boolean
  inputBinding:
    prefix: -f
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qpreroot
