class: CommandLineTool
id: compare_RNA.py.cwl
inputs:
- id: in_keep_length_one_stems
  doc: "For all input formats except forgi bg/cg files, this\ncontrolls whether stems\
    \ of length one are dissolved to\nunpaired regions (default) or kept (if this\
    \ option is\npresent). In the case of input in forgi-format, the\nRNA from the\
    \ file is not modified."
  type: boolean?
  inputBinding:
    prefix: --keep-length-one-stems
- id: in_pseudo_knots
  doc: "Allow pseudoknots when extracting the structure from\nPDB files."
  type: boolean?
  inputBinding:
    prefix: --pseudoknots
- id: in_chains
  doc: "When reading pdb-files: Only extract the given\nchain(s). Comma-seperated"
  type: string?
  inputBinding:
    prefix: --chains
- id: in_pdb_secondary_structure
  doc: "When reading a single chain from a pdb-files: Enforce\nthe secondary structure\
    \ given as dotbracket string.\n(This only works, if --chain is given!)"
  type: string?
  inputBinding:
    prefix: --pdb-secondary-structure
- id: in_pdb_annotation_tool
  doc: "What program to use for detecting basepairs in PDB/\nMMCIF structures. This\
    \ commandline option overrides\nthe value in the config file (if present).If this\
    \ is\nnot present and no config-file is given, we try to\ndetect the installed\
    \ programs."
  type: File?
  inputBinding:
    prefix: --pdb-annotation-tool
- id: in_pdb_allow_www_query
  doc: "Usually, if modified residues/ ligand with an unknown\n3-letter code are encountered\
    \ in PDB files, they are\nremoved from the chain and a log message of severity\n\
    INFO is issued. With this option, we first try to\nquery the PDBeChem database\
    \ for the 3-letter code, to\nsee whether or not it is a modified residue that\
    \ can\nbe converted to its standard parent and should be part\nof the chain."
  type: boolean?
  inputBinding:
    prefix: --pdb-allow-www-query
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
    \ arguments if everything should\nbe quiet."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_compare_based_adjacency
  doc: Compare based on the Adjacency correlation coefficient
  type: boolean?
  inputBinding:
    prefix: --acc
- id: in_pdb_rmsd
  doc: Compare based on PDB-RMSD
  type: boolean?
  inputBinding:
    prefix: --pdb-rmsd
- id: in_rna
  doc: "2 files containing one RNA each. Supported Filetypes\nare: pdb files, forgi\
    \ cg files"
  type: string
  inputBinding:
    position: 0
- id: in__rmsd_compare
  doc: --rmsd                Compare based on CG-RMSD
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
- compare_RNA.py
