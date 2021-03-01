class: CommandLineTool
id: partition_smp.cwl
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
- id: in_quiet
  doc: Suppress progress display and other unnecessary output.
  type: boolean?
  inputBinding:
    prefix: --quiet
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
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_double_offset
  doc: "Specify a double-stranded offset file, which adds energy bonuses to\nparticular\
    \ double-stranded nucleotides.\nDefault is to have no double-stranded offset specified."
  type: boolean?
  inputBinding:
    prefix: --doubleOffset
- id: in_max_distance
  doc: "Specify a maximum pairing distance between nucleotides.\nDefault is no restriction\
    \ on distance between pairs."
  type: boolean?
  inputBinding:
    prefix: --maxdistance
- id: in_shape
  doc: "Specify a SHAPE constraints file to be applied. These constraints are\npseudoenergy\
    \ constraints.\nDefault is to have no constraints applied."
  type: boolean?
  inputBinding:
    prefix: --SHAPE
- id: in_shape_intercept
  doc: "Specify an intercept used with SHAPE constraints.\nDefault is -0.6 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEintercept
- id: in_shape_slope
  doc: "Specify a slope used with SHAPE constraints.\nDefault is 1.8 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEslope
- id: in_temperature
  doc: "Specify the temperature at which calculation takes place in Kelvin.\nDefault\
    \ is 310.15 K, which is 37 degrees C."
  type: boolean?
  inputBinding:
    prefix: --temperature
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
- id: in_partition
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_pfs_file
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
- partition-smp
