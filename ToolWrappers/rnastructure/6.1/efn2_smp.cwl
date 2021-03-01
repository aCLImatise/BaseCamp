class: CommandLineTool
id: efn2_smp.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used.\nDefault\
    \ is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_ne
  doc: Do not calculate experimental uncertainties
  type: boolean?
  inputBinding:
    prefix: --ne
- id: in_print
  doc: "Print the simple list file to standard output. This won't override default\n\
    behavior of writing to a file. Thermodynamic files (if written) are not\npiped.\
    \ This option implies --quiet."
  type: File?
  inputBinding:
    prefix: --print
- id: in_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT) or when the --print flag is present."
  type: File?
  inputBinding:
    prefix: --quiet
- id: in_simple
  doc: "Specify the simple energy function for multibranch loops, used by the\ndynamic\
    \ programming algorithms (Fold, partition, stochastic, AllSub, etc.),\nshould\
    \ be used. If this is not specified, an more sophisticated energy\nfunction is\
    \ used, and the energies might not match those estimated for\nstructures during\
    \ structure prediction."
  type: boolean?
  inputBinding:
    prefix: --simple
- id: in_write_details
  doc: "Write a thermodynamic details file. The thermodynamic details file replaces\n\
    the list file that is outputted by default."
  type: boolean?
  inputBinding:
    prefix: --writedetails
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
- id: in_count
  doc: Specify a file where parameter usage counts will be exported
  type: boolean?
  inputBinding:
    prefix: --count
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
    \ is 310.15 K, which is 37 degrees C.\n"
  type: boolean?
  inputBinding:
    prefix: --temperature
- id: in_efn_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print
  doc: "Print the simple list file to standard output. This won't override default\n\
    behavior of writing to a file. Thermodynamic files (if written) are not\npiped.\
    \ This option implies --quiet."
  type: File?
  outputBinding:
    glob: $(inputs.in_print)
- id: out_quiet
  doc: "Suppress unnecessary output. This option is implied when the output file is\n\
    '-' (STDOUT) or when the --print flag is present."
  type: File?
  outputBinding:
    glob: $(inputs.in_quiet)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- efn2-smp
