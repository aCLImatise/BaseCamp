class: CommandLineTool
id: rgt_hint_evaluation.cwl
inputs:
- id: print_roc_curve
  doc: If set, HINT will print the receiver operating characteristic curve.
  type: boolean
  inputBinding:
    prefix: --print-roc-curve
- id: print_pr_curve
  doc: If set, HINT will print the precision recall curve.
  type: boolean
  inputBinding:
    prefix: --print-pr-curve
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- evaluation
