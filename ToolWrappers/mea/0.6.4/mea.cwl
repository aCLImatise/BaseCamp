class: CommandLineTool
id: mea.cwl
inputs:
- id: in_alpha
  doc: "slope of base pair distance penalty\n(default=`0.012')"
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_beta
  doc: "turning point of base pair distance penalty\n(default=`315')"
  type: long?
  inputBinding:
    prefix: --beta
- id: in_gamma
  doc: base pair weight factor  (default=`0.5')
  type: double?
  inputBinding:
    prefix: --gamma
- id: in_delta
  doc: "minimum penalty factor for base pairs\n(default=`0.003')"
  type: double?
  inputBinding:
    prefix: --delta
- id: in_plot_penalty
  doc: print penalty values between 4 and given value; don't
  type: long?
  inputBinding:
    prefix: --plot-penalty
- id: in_structure
  doc: "Structure (dot-bracket); if given, compare to\nreference only"
  type: string?
  inputBinding:
    prefix: --structure
- id: in_no_slide_rule
  doc: 'Use slide rule [default: use slide rule]'
  type: boolean?
  inputBinding:
    prefix: --no-slide-rule
- id: in_no_conflict_rule
  doc: 'Use conflict rule [default: use conflict rule]'
  type: boolean?
  inputBinding:
    prefix: --no-conflict-rule
- id: in_verbose
  doc: Turn on verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_fold
  doc: -r, --reference=STRING  Reference structure (dot-bracket)
  type: string
  inputBinding:
    position: 0
- id: in_tp
  doc: '= # true positives'
  type: string
  inputBinding:
    position: 0
- id: in_fp
  doc: '= # false positives'
  type: string
  inputBinding:
    position: 1
- id: in_fn
  doc: '= # false negatives'
  type: string
  inputBinding:
    position: 2
- id: in_tn
  doc: '= # true negatives'
  type: string
  inputBinding:
    position: 3
- id: in_ppv
  doc: = TP/(TP+FP) 'Positive Predictive Value'
  type: string
  inputBinding:
    position: 0
- id: in_fone
  doc: = PPV*SENS / (PPV+SENS), if PPV+SENS!=0; 0, otherwise   'F1-score'
  type: long
  inputBinding:
    position: 1
- id: in_mcc
  doc: "= (TP*TN - FP*FN) / sqrt( (TP+FP)*(TP+FN)*(TN+FP)*(TN+FN) )\n'Mathews correlation\
    \ coefficient'"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mea
