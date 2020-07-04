class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rgt_hint_evaluation.cwl
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
- id: tfbs_file
  doc: ''
  type: File
  inputBinding:
    prefix: --tfbs-file
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- evaluation
