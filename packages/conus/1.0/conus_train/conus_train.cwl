class: CommandLineTool
id: conus_train.cwl
inputs:
- id: in_use_string_defaults
  doc: ': Use grammar <string>, defaults to NUS'
  type: string?
  inputBinding:
    prefix: -g
- id: in_load_prior_specified
  doc: ': Load prior specified in <file>'
  type: File?
  inputBinding:
    prefix: -l
- id: in_turn_standard_one
  doc: ': Turn off the standard plus one prior'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_save_model_file
  doc: ': save model file to <file>; defaults to conus.mod'
  type: File?
  inputBinding:
    prefix: -s
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
- id: in_code
  doc: 'Grammar:'
  type: string
  inputBinding:
    position: 0
- id: in_nus
  doc: 'Ambiguous Simple Grammar (G1) '
  type: string
  inputBinding:
    position: 0
- id: in_una
  doc: 'Another Unambiguous (G3) '
  type: string
  inputBinding:
    position: 1
- id: in_run
  doc: 'Little Unambiguous (G4) '
  type: string
  inputBinding:
    position: 2
- id: in_ivo
  doc: 'Simplest Unambiguous (G5) '
  type: string
  inputBinding:
    position: 3
- id: in_bjk
  doc: 'Pfold grammar (G6) '
  type: string
  inputBinding:
    position: 4
- id: in_yr_n
  doc: 'Stacking grammar (G2) '
  type: string
  inputBinding:
    position: 5
- id: in_u_yn
  doc: Stacking analog of UNA (G7)
  type: string
  inputBinding:
    position: 6
- id: in_ry_three
  doc: Stacking analog of RUN (G8)
  type: long
  inputBinding:
    position: 7
- id: in_bk_two
  doc: Stacking parameterization of BJK (G6S)
  type: long
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- conus_train
