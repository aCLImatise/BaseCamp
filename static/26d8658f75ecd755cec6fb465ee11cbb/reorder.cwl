class: CommandLineTool
id: reorder.cwl
inputs:
- id: in_req_number_reorder
  doc: ': (req) number of suboptimals to reorder'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_use_parameters_grammar
  doc: ': Use parameters, grammar and scoring specified in model <file>'
  type: File
  inputBinding:
    prefix: -m
- id: in_use_string_defaults
  doc: ': Use grammar <string>, defaults to NUS; ignored if model file specified'
  type: File
  inputBinding:
    prefix: -g
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_print_parse_trees
  doc: ': print all parse trees (lots!)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_report_suboptimals_table
  doc: ': report all suboptimals table'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_report_things_better
  doc: ': report on things better than CYK'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_report_tracebacks_cyk
  doc: ': report tracebacks in CYK report (ignored if not with -c)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_debugging_print_fill
  doc: ': debugging, print fill matrix from cyk'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_print_real_predicted
  doc: ': print real with predicted structure'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_predicted_structures
  doc: ': print predicted structures in stockholm format'
  type: boolean
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reorder
