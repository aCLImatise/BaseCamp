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
