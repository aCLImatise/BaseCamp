class: CommandLineTool
id: validate.cwl
inputs:
- id: in_info
  doc: "Display information about the sequence. (This also implies --quiet.)\nCurrently\
    \ the only information shown is the sequence length of each\nvalidated sequence."
  type: boolean
  inputBinding:
    prefix: --info
- id: in_quiet
  doc: "Suppress unnecessary output. The process exit code indicates the result of\n\
    validation (as usual)."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_unknown
  doc: Suppress errors due to unknown bases in sequences.
  type: boolean
  inputBinding:
    prefix: --unknown
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
- id: in_length
  doc: "Limit the length of the validated sequence to the specified number of\nbases."
  type: boolean
  inputBinding:
    prefix: --length
- id: in_type
  doc: "The type of file validation to perform. This can be numeric (1=CT,\n2=SEQ/FASTA,\
    \ 3=PFS, 4=SAV, 5=DotBracket, 6=CON, 7=SHAPE/CHEM, 8=OLIS) or\ntext (one of: ct,\
    \ seq|fasta, pfs, sav, dot|dbn|braket, con, shape|chem,\nlis|list|olis) or \"\
    auto\" (the default) which uses the file extension to\ndetermine the type.\n"
  type: boolean
  inputBinding:
    prefix: --type
- id: in_file_path
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- validate
