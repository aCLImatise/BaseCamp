class: CommandLineTool
id: visualize_rna.py.cwl
inputs:
- id: in_pseudo_knots
  doc: "Allow pseudoknots when extracting the structure from\nPDB files."
  type: boolean
  inputBinding:
    prefix: --pseudoknots
- id: in_chains
  doc: "When reading pdb-files: Only extract the given\nchain(s). Comma-seperated"
  type: string
  inputBinding:
    prefix: --chains
- id: in_pdb_secondary_structure
  doc: "When reading a single chain from a pdb-files: Enforce\nthe secondary structure\
    \ given as dotbracket string.\n(This only works, if --chain is given!)"
  type: string
  inputBinding:
    prefix: --pdb-secondary-structure
- id: in_pdb_annotation_tool
  doc: "What program to use for detecting basepairs in PDB/\nMMCIF structures. This\
    \ commandline option overrides\nthe value in the config file (if present).If this\
    \ is\nnot present and no config-file is given, we try to\ndetect the installed\
    \ programs."
  type: File
  inputBinding:
    prefix: --pdb-annotation-tool
- id: in_pdb_allow_www_query
  doc: "Usually, if modified residues/ ligand with an unknown\n3-letter code are encountered\
    \ in PDB files, they are\nremoved from the chain and a log message of severity\n\
    INFO is issued. With this option, we first try to\nquery the PDBeChem database\
    \ for the 3-letter code, to\nsee whether or not it is a modified residue that\
    \ can\nbe converted to its standard parent and should be part\nof the chain."
  type: boolean
  inputBinding:
    prefix: --pdb-allow-www-query
- id: in_verbose
  doc: "Show verbose output (Output logged at level\nlogging.INFO)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: "[DEBUG]       A comma-seperated list of logger names for which debug\noutput\
    \ will be activated.WARNING: If you misspell the\nlogger name, this argument will\
    \ be ignored"
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_commaseperated_list_logger_names_logged
  doc: "[QUIET], --quiet [QUIET]\nA comma-seperated list of logger names for which\
    \ only\nmessages logged at the level 'CRITICAL' will be\nshown.Use this without\
    \ arguments if everything should\nbe quiet.\n"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_keep_length_one_stems
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep-length-one-stems
- id: in_rna
  doc: "One or more files containing one or more RNAs each.\nSupported Filetypes are:\
    \ pdb files, forgi cg files"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- visualize_rna.py
