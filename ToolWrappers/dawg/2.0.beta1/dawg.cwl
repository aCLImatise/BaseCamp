class: CommandLineTool
id: dawg.cwl
inputs:
- id: in_help_trick
  doc: display description of common control variables
  type: boolean?
  inputBinding:
    prefix: --help-trick
- id: in_arg_output_file
  doc: '[ --output ] arg          output to this file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_seed
  doc: (=0)              PRNG seed
  type: long?
  inputBinding:
    prefix: --seed
- id: in_reps
  doc: (=0)              the number of alignments to generate
  type: long?
  inputBinding:
    prefix: --reps
- id: in_split
  doc: '[=arg(=on)] (=null)  split output into separate files'
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_append
  doc: '[=arg(=on)] (=null) append output to file'
  type: File?
  inputBinding:
    prefix: --append
- id: in_label
  doc: '[=arg(=on)] (=null)  label each simulation with a unique id'
  type: boolean?
  inputBinding:
    prefix: --label
- id: in_arg_file
  doc: read arguments from file
  type: File?
  inputBinding:
    prefix: --arg-file
- id: in_var_8
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_allowed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_display
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_description
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_common
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_control
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output ] arg          output to this file'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
- id: out_append
  doc: '[=arg(=on)] (=null) append output to file'
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- dawg
