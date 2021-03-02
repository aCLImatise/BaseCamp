class: CommandLineTool
id: pbutgcns.cwl
inputs:
- id: in_increase_logging_verbosity
  doc: '[ --verbose ]      Increase logging verbosity'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_number_use
  doc: '[ --threads ] arg  Number of consensus threads to use'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_unitig_input_file
  doc: Unitig input file
  type: File?
  inputBinding:
    prefix: --input
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pbutgcns
