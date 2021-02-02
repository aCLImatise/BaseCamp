class: CommandLineTool
id: ambtest.cwl
inputs:
- id: in_req_use_model
  doc: ': (req) Use model <file>'
  type: File
  inputBinding:
    prefix: -m
- id: in__verbose_output
  doc: ': verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_ignore_given_structure
  doc: ': ignore given structure -- use CYK calculated structure'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__debugging_output
  doc: ': debugging output'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_debugging_print_traceback
  doc: ': debugging, print traceback'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_debugging_print_ct
  doc: ': debugging, print CT format of structure'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_debugging_print_fill
  doc: ': debugging, print fill matrix from cyk'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_seq_file_in
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ambtest
