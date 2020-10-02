class: CommandLineTool
id: mea_eval.cwl
inputs:
- id: in_alpha
  doc: "slope of base pair distance penalty\n(default=`0.012')"
  type: double
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: "turning point of base pair distance penalty\n(default=`315')"
  type: long
  inputBinding:
    prefix: --beta
- id: in_gamma
  doc: base pair weight factor  (default=`0.5')
  type: double
  inputBinding:
    prefix: --gamma
- id: in_delta
  doc: "minimum penalty factor for base pairs\n(default=`0.003')"
  type: double
  inputBinding:
    prefix: --delta
- id: in_dp_dir
  doc: Path to dot plot files  (default=`')
  type: File
  inputBinding:
    prefix: --dpdir
- id: in_pred
  doc: File with predicted structures to compare with input
  type: File
  inputBinding:
    prefix: --pred
- id: in_start
  doc: Restrict start of base pair span range  (default=`1')
  type: long
  inputBinding:
    prefix: --start
- id: in_stop
  doc: Restrict start of base pair span range  (default=`0')
  type: long
  inputBinding:
    prefix: --stop
- id: in_no_slide_rule
  doc: 'Use slide rule [default: use slide rule]'
  type: boolean
  inputBinding:
    prefix: --no-slide-rule
- id: in_no_conflict_rule
  doc: 'Use conflict rule [default: use conflict rule]'
  type: boolean
  inputBinding:
    prefix: --no-conflict-rule
- id: in_verbose
  doc: Turn on verobose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mea_eval
