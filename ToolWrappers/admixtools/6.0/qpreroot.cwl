class: CommandLineTool
id: qpreroot.cwl
inputs:
- id: in_use_parameters_file
  doc: '... use parameters from <file> .'
  type: File?
  inputBinding:
    prefix: -p
- id: in_use_nam_root
  doc: '... use <nam> as root name.'
  type: string?
  inputBinding:
    prefix: -r
- id: in__use_nam_as_graph_name
  doc: '... use <nam> as graph name.'
  type: string?
  inputBinding:
    prefix: -g
- id: in__use_nam_as_out_graph_name
  doc: '... use <nam> as out graph name.'
  type: string?
  inputBinding:
    prefix: -o
- id: in_use_nam_dot
  doc: '... use <nam> as dot graph name.'
  type: string?
  inputBinding:
    prefix: -d
- id: in_use_nam_script
  doc: '... use <nam> as script name.'
  type: string?
  inputBinding:
    prefix: -s
- id: in_delete_population_nam
  doc: '... delete population <nam>.'
  type: string?
  inputBinding:
    prefix: -x
- id: in_toggle_hash_calculation
  doc: '... toggle hash calculation ON.'
  type: boolean?
  inputBinding:
    prefix: -H
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
- id: in_new_output_format
  doc: '... new output format (edge not ledge etc.'
  type: boolean?
  inputBinding:
    prefix: -f
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
- qpreroot
