class: CommandLineTool
id: ../../../conus_fold.cwl
inputs:
- id: in_use_model_file
  doc: ': Use model <file>'
  type: File
  inputBinding:
    prefix: -m
- id: in_use_grammar_string
  doc: ": Use grammar <string> and plus one scoring\n-H           (with -g) shift\
    \ to hydrogen bonding scoring\n--flat       (with -g) flat scoring scheme"
  type: string
  inputBinding:
    prefix: -g
- id: in_redirect_structure_output
  doc: ': redirect structure output to <file>'
  type: File
  inputBinding:
    prefix: -o
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean
  inputBinding:
    prefix: -x
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_debugging_print_traceback
  doc: ': debugging, print traceback'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_debugging_print_fill
  doc: ': debugging, print fill matrix from cyk'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_print_predicted_structures
  doc: ': print predicted structures in stockholm format'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_print_output_format
  doc: ': print ct output format for predicted structure'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_redirect_structure_output
  doc: ': redirect structure output to <file>'
  type: File
  outputBinding:
    glob: $(inputs.in_redirect_structure_output)
cwlVersion: v1.1
baseCommand:
- conus_fold
