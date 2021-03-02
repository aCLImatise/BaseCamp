class: CommandLineTool
id: Fold.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_disable_coax
  doc: "Specify that coaxial stacking recusions should not be used. This option\n\
    uses a less realistic energy function in exchange for a faster\ncalculation."
  type: boolean?
  inputBinding:
    prefix: --disablecoax
- id: in_bracket
  doc: "Write the predicted structure in dot-bracket notation (DBN) instead of CT\n\
    format."
  type: boolean?
  inputBinding:
    prefix: --bracket
- id: in_mfe
  doc: "Specify that only the minimum free energy structure is needed.\nNo savefiles\
    \ can be generated.\nThis saves nearly half the calculation time, but provides\
    \ less\ninformation."
  type: boolean?
  inputBinding:
    prefix: --MFE
- id: in_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File?
  inputBinding:
    prefix: --quiet
- id: in_simple_i_loops
  doc: "Specify that the O(N^3) internal loop search should be used. This speeds up\n\
    the calculation if large internal loops are allowed using the -l option."
  type: boolean?
  inputBinding:
    prefix: --simple_iloops
- id: in_alphabet
  doc: "Specify the name of a folding alphabet and associated nearest neighbor\nparameters.\
    \ The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. \"rna\"\
    \ for RNA parameters or \"dna\" for DNA parameters or a\ncustom extended/modified\
    \ alphabet. The thermodynamic parameters need to\nreside in the at the location\
    \ indicated by environment variable DATAPATH.\nThe default is \"rna\" (i.e. use\
    \ RNA parameters). This option overrides the\n--DNA flag."
  type: boolean?
  inputBinding:
    prefix: --alphabet
- id: in_bootstrap
  doc: "Specify the number of bootstrap iterations to be done to retrieve base pair\n\
    confidence.\nDefaults to no bootstrapping."
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_cm_ct
  doc: "Specify a CMCT constraints file to be applied. These constraints are\npseudoenergy\
    \ constraints.\nDefault is to have no constraints applied."
  type: boolean?
  inputBinding:
    prefix: --CMCT
- id: in_dms
  doc: "Specify a DMS restraints file to be applied. These restraints are\npseudoenergy\
    \ constraints.\nDefault is to have no restraints applied."
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
- id: in_loop
  doc: "Specify a maximum internal/bulge loop size.\nDefault is 30 unpaired numcleotides."
  type: boolean?
  inputBinding:
    prefix: --loop
- id: in_maximum
  doc: "Specify a maximum number of structures.\nDefault is 20 structures."
  type: boolean?
  inputBinding:
    prefix: --maximum
- id: in_max_distance
  doc: "Specify a maximum pairing distance between nucleotides.\nDefault is no restriction\
    \ on distance between pairs."
  type: boolean?
  inputBinding:
    prefix: --maxdistance
- id: in_name
  doc: "Specify a name for the sequence. This will override the name in the\nsequence\
    \ file."
  type: boolean?
  inputBinding:
    prefix: --name
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is 10 percent (specified\
    \ as 10, not 0.1)."
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_save
  doc: "Specify the name of a save file, needed for dotplots and refolding.\nDefault\
    \ is not to generate a save file."
  type: boolean?
  inputBinding:
    prefix: --save
- id: in_shape
  doc: "Specify a SHAPE restraints file to be applied. These constraints are\npseudoenergy\
    \ restraints.\nDefault is to have no restraints applied."
  type: boolean?
  inputBinding:
    prefix: --SHAPE
- id: in_shape_intercept
  doc: "Specify an intercept used with SHAPE restraints.\nDefault is -0.6 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEintercept
- id: in_shape_slope
  doc: "Specify a slope used with SHAPE renstraints.\nDefault is 1.8 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEslope
- id: in_single_offset
  doc: "Specify a single-stranded offset file, which adds energy bonuses to\nparticular\
    \ single-stranded nucleotides.\nDefault is to have no single-stranded offset specified."
  type: boolean?
  inputBinding:
    prefix: --singleOffset
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C."
  type: boolean?
  inputBinding:
    prefix: --temperature
- id: in_unpaired_shape_intercept
  doc: "Specify an intercept used with unpaired SHAPE constraints.\nDefault is 0 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --unpairedSHAPEintercept
- id: in_unpaired_shape_slope
  doc: "Specify a slope used with unpaired SHAPE constraints.\nDefault is 0 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --unpairedSHAPEslope
- id: in_window
  doc: "Specify a window size.\nDefault is determined by the length of the sequence."
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
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT)."
  type: File?
  outputBinding:
    glob: $(inputs.in_quiet)
hints: []
cwlVersion: v1.1
baseCommand:
- Fold
