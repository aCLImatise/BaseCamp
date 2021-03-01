class: CommandLineTool
id: _fdnaml.cwl
inputs:
- id: in_n_categories
  doc: "integer    [1] Number of substitution rate categories\n(Integer from 1 to\
    \ 9)"
  type: boolean?
  inputBinding:
    prefix: -ncategories
- id: in_weights
  doc: properties Weights file
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_tt_ratio
  doc: "float      [2.0] Transition/transversion ratio (Number\n0.001 or more)"
  type: boolean?
  inputBinding:
    prefix: -ttratio
- id: in_gamma_type
  doc: "menu       [Constant rate] Rate variation among sites\n(Values: g (Gamma distributed\
    \ rates); i\n(Gamma+invariant sites); h (User defined HMM\nof rates); n (Constant\
    \ rate))"
  type: boolean?
  inputBinding:
    prefix: -gammatype
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_hyp_state
  doc: boolean    [N] Reconstruct hypothetical sequence
  type: boolean?
  inputBinding:
    prefix: -hypstate
- id: in_alignments
  doc: '[-intreefile]        tree       Phylip tree file (optional)'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _fdnaml
