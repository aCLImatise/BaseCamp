class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_compstruct.cwl
inputs:
- id: use_mathewsrelaxed_criterion
  doc: ": use Mathews'relaxed criterion for correctness; allow +/-1 slip"
  type: boolean
  inputBinding:
    prefix: -m
- id: count_pseudoknotted_pairs
  doc: ': count pseudoknotted base pairs'
  type: boolean
  inputBinding:
    prefix: -p
- id: quiet
  doc: ': suppress verbose header'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-compstruct
