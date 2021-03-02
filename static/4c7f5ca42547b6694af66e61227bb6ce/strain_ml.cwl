class: CommandLineTool
id: strain_ml.cwl
inputs:
- id: in_use_string_defaults
  doc: ': Use grammar <string>, defaults to STA'
  type: string?
  inputBinding:
    prefix: -g
- id: in_save_model_file
  doc: ': save model file to <file>'
  type: File?
  inputBinding:
    prefix: -s
- id: in_print_parameters_model
  doc: ': print out parameters of model'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_print_counts_used
  doc: ': print out counts used for model'
  type: boolean?
  inputBinding:
    prefix: -q
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
- id: in_turn_weighting_scheme
  doc: ': Turn off weighting scheme'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_force_recalculate_weights
  doc: ': Force recalculate weights (defaults to given when available)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_use_voronoi_weights
  doc: ': Use Voronoi weights instead of GSC'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_setup_tying_typeno
  doc: ": Setup Tying Type\n[No tying = 0; NT counts = 1; Gap Open/Extend counts =\
    \ 2;\nGap Open/Extend probs = 3; LR Symmetry 4 (default)]"
  type: long?
  inputBinding:
    prefix: -T
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_ml_train
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_training_set_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- strain_ml
