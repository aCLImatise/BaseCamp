class: CommandLineTool
id: EDcalculator.cwl
inputs:
- id: in_dna
  doc: "Specify that the sequence is DNA, and DNA parameters are to be used. The\n\
    default is to use RNA parameters."
  type: boolean
  inputBinding:
    prefix: --dna
- id: in_raw
  doc: "Output just the *Normalized* ensemble defect as a pure number (with no\nadditional\
    \ description)."
  type: boolean
  inputBinding:
    prefix: --raw
- id: in_alphabet
  doc: "Specify the name of a folding alphabet and associated nearest neighbor\nparameters.\
    \ The alphabet is the prefix for the thermodynamic parameter\nfiles, e.g. \"rna\"\
    \ for RNA parameters or \"dna\" for DNA parameters or a\ncustom extended/modified\
    \ alphabet. The thermodynamic parameters need to\nreside in the at the location\
    \ indicated by environment variable DATAPATH.\nThe default is \"rna\" (i.e. use\
    \ RNA parameters). This option overrides the\n--DNA flag."
  type: boolean
  inputBinding:
    prefix: --alphabet
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean
  inputBinding:
    prefix: --constraint
- id: in_file
  doc: "Output the results to the specified file instead of to the screen\n(stdout)."
  type: File
  inputBinding:
    prefix: --file
- id: in_number
  doc: "Specify the index of a particular structure for which to calculate the\ndefect.\
    \ The default is -1, which means to calculate the defect for all\nstructures.\n"
  type: boolean
  inputBinding:
    prefix: --number
- id: in_ct_structure_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: "Output the results to the specified file instead of to the screen\n(stdout)."
  type: File
  outputBinding:
    glob: $(inputs.in_file)
cwlVersion: v1.1
baseCommand:
- EDcalculator
