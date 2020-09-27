class: CommandLineTool
id: describe_cg.py.cwl
inputs:
- id: in_keep_length_one_stems
  doc: "For all input formats except forgi bg/cg files, this\ncontrolls whether stems\
    \ of length one are dissolved to\nunpaired regions (default) or kept (if this\
    \ option is\npresent). In the case of input in forgi-format, the\nRNA from the\
    \ file is not modified."
  type: boolean
  inputBinding:
    prefix: --keep-length-one-stems
- id: in_csv
  doc: "Store dataframe under this filename. (Prints to stdout\nif not given)"
  type: File
  inputBinding:
    prefix: --csv
- id: in_keys
  doc: "Only print the following properties. (A comma-\nseperated list of column headers,\
    \ e.g. rog_vres"
  type: string
  inputBinding:
    prefix: --keys
- id: in_angles
  doc: "Store the angles between the given pairs of elements.\nComma-seperated element\
    \ tuples, seperated by colons.\n(e.g.: 's0,s1:s1,s2')"
  type: long
  inputBinding:
    prefix: --angles
- id: in_distances
  doc: "Store the distances between the given nucleotides.\nComma-seperated nucleotide\
    \ tuples, seperated by\ncolons. (e.g.: '1,20:2,19')"
  type: long
  inputBinding:
    prefix: --distances
- id: in_per_ml
  doc: "Describe junction segments instead of the whole cg\n(one entry per segment)"
  type: boolean
  inputBinding:
    prefix: --per-ml
- id: in_mode
  doc: "For use with --csv. Either 'a' for append or 'o' for\noverwrite. Default:\
    \ Abort if file exists."
  type: File
  inputBinding:
    prefix: --mode
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
cwlVersion: v1.1
baseCommand:
- describe_cg.py
