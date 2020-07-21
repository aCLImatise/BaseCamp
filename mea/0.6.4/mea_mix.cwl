class: CommandLineTool
id: ../../../mea_mix.cwl
inputs:
- id: gamma_one
  doc: base pair weight factor, first pair probabilities (default=`1.0')
  type: string
  inputBinding:
    prefix: --gamma1
- id: gamma_two
  doc: base pair weight factor, second pair probabilities (default=`1.0')
  type: string
  inputBinding:
    prefix: --gamma2
- id: reference
  doc: Reference structure; if given, then output TP FP FN TN SENS PPV F1 MCC
  type: string
  inputBinding:
    prefix: --reference
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
  doc: Turn on verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: me_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dotplot_one_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dotplot_two_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- mea_mix
