class: CommandLineTool
id: MaxExpect_smp.cwl
inputs:
- id: in_dna
  doc: "This flag only matters if the input file is a sequence file and has been\n\
    specified as such. Specify that the sequence is DNA, and DNA parameters are\n\
    to be used.\nDefault is to use RNA parameters."
  type: boolean?
  inputBinding:
    prefix: --DNA
- id: in_sequence
  doc: Identify the input file format as a sequence file.
  type: boolean?
  inputBinding:
    prefix: --sequence
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
- id: in_gamma
  doc: "Specify the weight which should be placed on base pairs.\nDefault is 1.0."
  type: boolean?
  inputBinding:
    prefix: --gamma
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is 50 (ie, 50, not 0.5)."
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_structures
  doc: "Specify a maximum number of structures.\nDefault is 1000 structures."
  type: boolean?
  inputBinding:
    prefix: --structures
- id: in_window
  doc: "Specify a window size.\nDefault is 5 nucleotides.\n"
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_specified_dot
  doc: <ct file>
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
- MaxExpect-smp
