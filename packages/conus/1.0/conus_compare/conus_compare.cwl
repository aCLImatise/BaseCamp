class: CommandLineTool
id: ../../../conus_compare.cwl
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
- id: in_use_mathews_method
  doc: ': Use the Mathews99 method of evalutation'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_output_table_format
  doc: ': output in table format'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_give_cummulative_statistics
  doc: ': give cummulative statistics (global)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_give_statistics_sequence
  doc: ': give statistics on each sequence (ignored in table mode)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_real_predicted
  doc: ': output real and predicted structures'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_output_predicted_structures
  doc: ': output predicted structures in stockholm format'
  type: boolean
  inputBinding:
    prefix: -q
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
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- conus_compare
