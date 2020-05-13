class: CommandLineTool
id: mea_mix.cwl
inputs:
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mea_mix
