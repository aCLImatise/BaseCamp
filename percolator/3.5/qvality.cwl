class: CommandLineTool
id: ../../../qvality.cwl
inputs:
- id: in_help
  doc: Display this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_verbose
  doc: "Set verbosity of output: 0=no processing\ninfo, 5=all, default is 2"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
- id: in_epsilon_step
  doc: "The relative step size used as treshhold\nbefore cross validation error is\
    \ calculated"
  type: long
  inputBinding:
    prefix: --epsilon-step
- id: in_n
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_number_of_bins
  doc: "The number of spline knots used when\ninterpolating spline function. Default\
    \ is\n500."
  type: long
  inputBinding:
    prefix: --number-of-bins
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
- id: in_epsilon_cross_validation
  doc: "The relative crossvalidation step size used\nas treshhold before ending the\
    \ iterations"
  type: long
  inputBinding:
    prefix: --epsilon-cross-validation
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: in_reverse
  doc: "Indicating that the scoring mechanism is\nreversed, i.e., that low scores\
    \ are better\nthan higher scores"
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_output_file
  doc: Output results to file instead of stdout
  type: File
  inputBinding:
    prefix: --output-file
- id: in_g
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_generalized
  doc: "Generalized target decoy competition,\nsituations where PSMs known to more\n\
    frequently be incorrect are mixed in with\nthe correct PSMs"
  type: boolean
  inputBinding:
    prefix: --generalized
- id: in_y
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_tdc_input
  doc: "Turns off the pi0 correction for search\nresults from a concatenated database."
  type: boolean
  inputBinding:
    prefix: --tdc-input
- id: in_d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: in_include_negative
  doc: "Include negative hits (decoy) probabilities\nin the results\n"
  type: boolean
  inputBinding:
    prefix: --include-negative
- id: in_target_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output results to file instead of stdout
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- qvality
