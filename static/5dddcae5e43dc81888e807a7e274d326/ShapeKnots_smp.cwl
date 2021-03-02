class: CommandLineTool
id: ShapeKnots_smp.cwl
inputs:
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_dms
  doc: "Specify a DMS constraints file to be applied. These constraints are\npseudoenergy\
    \ constraints.\nDefault is to have no constraints applied."
  type: boolean?
  inputBinding:
    prefix: --DMS
- id: in_d_shape
  doc: "Specify a differential SHAPE restraints file to be applied. These\nconstraints\
    \ are pseudoenergy restraints.\nDefault is to have no restraints applied."
  type: boolean?
  inputBinding:
    prefix: --DSHAPE
- id: in_d_shape_slope
  doc: "Specify a slope used with differential SHAPE restraints.\nDefault is 2.11\
    \ kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --DSHAPEslope
- id: in_double_offset
  doc: "Specify a double-stranded offset file, which adds energy bonuses to\nparticular\
    \ double-stranded nucleotides.\nDefault is to have no double-stranded offset specified."
  type: boolean?
  inputBinding:
    prefix: --doubleOffset
- id: in_i_maximum
  doc: "Specify a maximum number of internally generated structures for each call\n\
    of the dynamic programming algorithm. Note that suboptimal structures are\ngenerated\
    \ until either the maximum number of structures is reached or the\nmaximum percent\
    \ difference is reached (below).\nThis is not the maximum number of structures\
    \ provided to the user, which is\ncontrolled by –m, -M, --maximum.\nDefault is\
    \ 100 structures."
  type: boolean?
  inputBinding:
    prefix: --IMaximum
- id: in_i_percent
  doc: "Specify a maximum percent difference in folding free energy change for\ninternally\
    \ generated suboptimal structures for each call of the dynamic\nprogramming algorithm.\
    \ For example, 20 would indicate 20%. This is not the\nmaximum percent difference\
    \ in energy for structures provided to the user,\nwhich is controlled by –p, -P,\
    \ --percent.\nDefault is 20%."
  type: boolean?
  inputBinding:
    prefix: --IPercent
- id: in_i_window
  doc: "Specify a window size for the internally generated suboptimal structures\n\
    for each call of the dynamic programming algorithm.\nThis is not the window for\
    \ structures provided to the user, which is\ncontrolled by –w, -W, --window.\n\
    Default is determined by the length of the sequence."
  type: boolean?
  inputBinding:
    prefix: --IWindow
- id: in_maximum
  doc: "Specify a maximum number of structures to be outputted. Note that\nsuboptimal\
    \ structures are generated until either the maximum number of\nstructures is reached\
    \ or the maximum percent difference is reached\n(below).\nDefault is 20 structures."
  type: boolean?
  inputBinding:
    prefix: --maximum
- id: in_percent
  doc: "Specify a maximum percent difference in folding free energy change for\ngenerating\
    \ suboptimal structures in the output. For example, 10 would\nindicate 10%.\n\
    Default is 10%."
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_penalty_one
  doc: "Specify a pseudoknot penalty P1.\nDefault is 0.35 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --Penalty1
- id: in_penalty_two
  doc: "Specify a pseudoknot penalty P2.\nDefault is 0.65 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --Penalty2
- id: in_pseudo_knotted_helices
  doc: "Specify maximum number of helices to be processed.\nDefault is 100 helices."
  type: boolean?
  inputBinding:
    prefix: --PseudoknottedHelices
- id: in_shape
  doc: "Specify a SHAPE restraints file to be applied. These restraints\nspecifically\
    \ use SHAPE pseudoenergy restraints.\nDefault is no SHAPE restraint file specified."
  type: boolean?
  inputBinding:
    prefix: --SHAPE
- id: in_shape_intercept
  doc: "Specify an intercept used with SHAPE restraints.\nDefault is -0.6 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEintercept
- id: in_shape_slope
  doc: "Specify an slope used with SHAPE restraints.\nDefault is 1.8 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEslope
- id: in_single_offset
  doc: "Specify a single-stranded offset file, which adds energy bonuses to\nparticular\
    \ single-stranded nucleotides.\nDefault is to have no single-stranded offset specified."
  type: boolean?
  inputBinding:
    prefix: --singleOffset
- id: in_window
  doc: "Specify a window size for outputted suboptimal structures.\nDefault is determined\
    \ by the length of the sequence."
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_warnings
  doc: "Set the behavior for non-critical warnings (e.g. related to invalid\nnucleotide\
    \ positions or duplicate data points in SHAPE data). Valid values\nare:\n* on\
    \  -- Warnings are written to standard output. (default)\n* err -- Warnings are\
    \ sent to STDERR. This can be used in automated scripts\netc to detect problems.\n\
    * off -- Do not display warnings at all (not recommended)."
  type: boolean?
  inputBinding:
    prefix: --warnings
- id: in_experimental_pair_bonus
  doc: "Input text file with bonuses (in kcal) as a matrix. As with SHAPE, bonuses\n\
    will be applied twice to internal base pairs, once to edge base pairs, and\nnot\
    \ at all to single stranded regions.\nDefault is no experimental pair bonus file\
    \ specified."
  type: boolean?
  inputBinding:
    prefix: --experimentalPairBonus
- id: in_xo
  doc: "Specify an intercept (overall offset) to use with the 2D experimental pair\n\
    bonus file.\nDefault is 0.0 (no change to input bonuses)."
  type: boolean?
  inputBinding:
    prefix: -xo
- id: in_xs
  doc: "Specify a number to multiply the experimental pair bonus matrix by.\nDefault\
    \ is 1.0 (no change to input bonuses).\n"
  type: boolean?
  inputBinding:
    prefix: -xs
- id: in_shape_knots
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ShapeKnots-smp
