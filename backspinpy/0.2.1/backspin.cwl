class: CommandLineTool
id: backspin.cwl
inputs:
- id: d
  doc: '[int] Depth/Number of levels: The number of nested splits that will be tried
    by the algorithm'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: '[int] Number of the iterations used in the preparatory SPIN. Defaults to 10'
  type: boolean
  inputBinding:
    prefix: -t
- id: f
  doc: '[int]    Feature selection is performed before BackSPIN. Argument controls
    how many genes are seleceted. Selection is based on expected noise (a curve fit
    to the CV-vs-mean plot).'
  type: boolean
  inputBinding:
    prefix: -f
- id: s
  doc: '[float] Controls the decrease rate of the width parameter used in the preparatory
    SPIN. Smaller values will increase the number of SPIN iterations and result in
    higher  precision in the first step but longer execution time. Defaults to 0.1'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[int] Number of the iterations used for every width parameter. Does not apply
    on the first run (use -t instead) Defaults to 8'
  type: boolean
  inputBinding:
    prefix: -T
- id: s
  doc: '[float] Controls the decrease rate of the width parameter. Smaller values
    will increase the number of SPIN iterations and result in higher  precision but
    longer execution time. Does not apply on the first run (use -s instead) Defaults
    to 0.3'
  type: boolean
  inputBinding:
    prefix: -S
- id: g
  doc: '[int] Minimal number of genes that a group must contain for splitting to be
    allowed. Defaults to 2'
  type: boolean
  inputBinding:
    prefix: -g
- id: c
  doc: '[int] Minimal number of cells that a group must contain for splitting to be
    allowed. Defaults to 2'
  type: boolean
  inputBinding:
    prefix: -c
- id: k
  doc: '[float] Minimum score that a breaking point has to reach to be suitable for
    splitting. Defaults to 1.15'
  type: boolean
  inputBinding:
    prefix: -k
- id: r
  doc: '[float] If the difference between the average expression of two groups is
    lower than threshold the algorythm  uses higly correlated genes to assign the
    gene to one of the two groups Defaults to 0.2'
  type: boolean
  inputBinding:
    prefix: -r
- id: b
  doc: "[axisvalue] Run normal SPIN instead of backSPIN. Normal spin accepts the parameters\
    \ -T -S An axis value 0 to only sort genes (rows), 1 to only sort cells (columns)\
    \ or 'both' for both must be passed"
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: Verbose. Print  to the stdoutput extra details of what is happening
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- backspin
