class: CommandLineTool
id: mea_eval.cwl
inputs:
- id: alpha
  doc: slope of base pair distance penalty (default=`0.012')
  type: string
  inputBinding:
    prefix: --alpha
- id: beta
  doc: turning point of base pair distance penalty (default=`315')
  type: string
  inputBinding:
    prefix: --beta
- id: gamma
  doc: base pair weight factor  (default=`0.5')
  type: string
  inputBinding:
    prefix: --gamma
- id: delta
  doc: minimum penalty factor for base pairs (default=`0.003')
  type: string
  inputBinding:
    prefix: --delta
- id: dp_dir
  doc: Path to dot plot files  (default=`')
  type: string
  inputBinding:
    prefix: --dpdir
- id: pred
  doc: File with predicted structures to compare with input file  (default=`')
  type: string
  inputBinding:
    prefix: --pred
- id: start
  doc: Restrict start of base pair span range  (default=`1')
  type: long
  inputBinding:
    prefix: --start
- id: stop
  doc: Restrict start of base pair span range  (default=`0')
  type: long
  inputBinding:
    prefix: --stop
- id: no_slide_rule
  doc: 'Use slide rule [default: use slide rule]'
  type: boolean
  inputBinding:
    prefix: --no-slide-rule
- id: no_conflict_rule
  doc: 'Use conflict rule [default: use conflict rule]'
  type: boolean
  inputBinding:
    prefix: --no-conflict-rule
- id: verbose
  doc: Turn on verobose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mea_eval
