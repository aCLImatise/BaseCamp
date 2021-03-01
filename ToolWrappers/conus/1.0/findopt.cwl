class: CommandLineTool
id: findopt.cwl
inputs:
- id: in_use_model_file
  doc: ': Use model <file>'
  type: File?
  inputBinding:
    prefix: -m
- id: in_max_num_suboptimals
  doc: ': Max num suboptimals to look at'
  type: long?
  inputBinding:
    prefix: -b
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_print_parse_trees
  doc: ': print all parse trees (lots!)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_debugging_fill_matrix
  doc: ': debugging, print fill matrix from cyk'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_print_real_predicted
  doc: ': print real with predicted structure'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_print_predicted_structures
  doc: ': print predicted structures in stockholm format'
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findopt
