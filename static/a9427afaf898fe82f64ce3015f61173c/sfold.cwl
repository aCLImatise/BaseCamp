class: CommandLineTool
id: sfold.cwl
inputs:
- id: in_use_parameters_grammar
  doc: ': Use parameters, grammar and scoring specified in model <file>'
  type: File?
  inputBinding:
    prefix: -m
- id: in_ensure_selection_results
  doc: ': Ensure that pin selection results in something near X Mbytes memory'
  type: long?
  inputBinding:
    prefix: -M
- id: in_use_int_pins
  doc: ': use <int> pins from trusted alignment'
  type: long?
  inputBinding:
    prefix: -C
- id: in_use_predicted_pins
  doc: ': use <int> predicted pins'
  type: long?
  inputBinding:
    prefix: -P
- id: in_output_single_pair
  doc: ': output as single sequences rather than pair'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_execute_unconstrained_algorithm
  doc: ': execute full (unconstrained) algorithm'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in__print_traceback
  doc: ': print traceback'
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
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sfold
