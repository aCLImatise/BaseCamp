class: CommandLineTool
id: mea.cwl
inputs:
- id: ppv
  doc: = TP/(TP+FP) 'Positive Predictive Value'
  type: string
  inputBinding:
    position: 0
- id: f1
  doc: = PPV*SENS / (PPV+SENS), if PPV+SENS!=0; 0, otherwise   'F1-score'
  type: string
  inputBinding:
    position: 1
- id: mcc
  doc: = (TP*TN - FP*FN) / sqrt( (TP+FP)*(TP+FN)*(TN+FP)*(TN+FN) ) 'Mathews correlation
    coefficient'
  type: string
  inputBinding:
    position: 2
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
- id: plot_penalty
  doc: print penalty values between 4 and given value; don't fold
  type: long
  inputBinding:
    prefix: --plot-penalty
- id: reference
  doc: Reference structure (dot-bracket)
  type: string
  inputBinding:
    prefix: --reference
- id: structure
  doc: Structure (dot-bracket); if given, compare to reference only
  type: string
  inputBinding:
    prefix: --structure
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
- mea
