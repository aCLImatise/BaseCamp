class: CommandLineTool
id: pModel.cwl
inputs:
- id: in_print_transition_parameters
  doc: ': Print transition parameters'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_print_pairwise_emission
  doc: ': Print 16x16 pairwise emission parameters'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_print_alignment_emission
  doc: ': Print 4x4 alignment emission parameters'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_print_background_gap
  doc: ': Print 4 background (to gap) parameters'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_print_parameters_defaults
  doc: ': Print parameters as scores (defaults to as probs)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_print_parameters_probs
  doc: ': Print parameters as both probs and scores'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_linearize_output_gnuplot
  doc: ': Linearize output for gnuplot (not valid with -q or -S)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_include_labels_linear
  doc: ': Include labels in linear output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_mod_file
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
- pModel
