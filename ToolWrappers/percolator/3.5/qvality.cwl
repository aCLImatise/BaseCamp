class: CommandLineTool
id: qvality.cwl
inputs:
- id: in_verbose
  doc: 'Set verbosity of output: 0=no processing'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_epsilon_step
  doc: The relative step size used as treshhold
  type: long
  inputBinding:
    prefix: --epsilon-step
- id: in_number_of_bins
  doc: The number of spline knots used when
  type: long
  inputBinding:
    prefix: --number-of-bins
- id: in_epsilon_cross_validation
  doc: The relative crossvalidation step size used
  type: long
  inputBinding:
    prefix: --epsilon-cross-validation
- id: in_reverse
  doc: Indicating that the scoring mechanism is
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_generalized
  doc: Generalized target decoy competition,
  type: boolean
  inputBinding:
    prefix: --generalized
- id: in_tdc_input
  doc: Turns off the pi0 correction for search
  type: boolean
  inputBinding:
    prefix: --tdc-input
- id: in_include_negative
  doc: Include negative hits (decoy) probabilities
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
cwlVersion: v1.1
baseCommand:
- qvality
