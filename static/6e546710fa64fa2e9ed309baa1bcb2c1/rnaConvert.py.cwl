class: CommandLineTool
id: rnaConvert.py.cwl
inputs:
- id: in_keep_length_one_stems
  doc: "For all input formats except forgi bg/cg files, this\ncontrolls whether stems\
    \ of length one are dissolved to\nunpaired regions (default) or kept (if this\
    \ option is\npresent). In the case of input in forgi-format, the\nRNA from the\
    \ file is not modified."
  type: boolean?
  inputBinding:
    prefix: --keep-length-one-stems
- id: in_target_type
  doc: The target file-type to convert into.
  type: string?
  inputBinding:
    prefix: --target-type
- id: in_to_file
  doc: "Store the converted RNA in files instead of printing\nthem to stdout. The\
    \ file-name will be the RNA's name\n(if present), otherwise 'rna001' etc."
  type: boolean?
  inputBinding:
    prefix: --to-file
- id: in_filename
  doc: "If this is present, --to-file will automatically be\ntrue.A target filename\
    \ (or path) without extention. If\nit is a filename, use the given filename instead\
    \ of\nthe RNA's name. If more than one input-RNA is present,\nappends automatically\
    \ a increasing number.If it is a\ndirectory, create files in this directory."
  type: File?
  inputBinding:
    prefix: --filename
- id: in_force
  doc: "Overwrite files, if they already exist. Note: In case\nof race conditions,\
    \ files could be overwritten even if\nthis flag is not provided."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_pseudo_knots
  doc: "Allow pseudoknots when extracting the structure from\nPDB files."
  type: boolean?
  inputBinding:
    prefix: --pseudoknots
- id: in_chain
  doc: 'When reading pdb-files: Only extract the given chain.'
  type: string?
  inputBinding:
    prefix: --chain
- id: in_pdb_secondary_structure
  doc: "When reading a single chain from a pdb-files: Enforce\nthe secondary structure\
    \ given as dotbracket string.\n(This only works, if --chain is given!)"
  type: string?
  inputBinding:
    prefix: --pdb-secondary-structure
- id: in_verbose
  doc: "Show verbose output (Output logged at level\nlogging.INFO)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: "[DEBUG]       A comma-seperated list of logger names for which debug\noutput\
    \ will be activated.WARNING: If you misspell the\nlogger name, this argument will\
    \ be ignored"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_commaseperated_list_logger
  doc: "[QUIET], --quiet [QUIET]\nA comma-seperated list of logger names for which\
    \ only\nmessages logged at the level 'CRITICAL' will be\nshown.Use this without\
    \ arguments if everything should\nbe quiet.\n"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_rna
  doc: "One or more files containing one or more RNAs each.\nSupported Filetypes are:\
    \ pdb files, forgi cg files,\nforgi bg files, fasta files,\ndotbracketfilesAlternatively\
    \ you can supply a\ndotbracket-string (containing only the characters\n'.()[]{}&')\
    \ from the commandline."
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
- rnaConvert.py
