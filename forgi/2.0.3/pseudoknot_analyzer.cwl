class: CommandLineTool
id: pseudoknot_analyzer.py.cwl
inputs:
- id: rna
  doc: "One or more files containing one or more RNAs each. Supported Filetypes are:\
    \ pdb files, forgi cg files, forgi bg files, fasta files, dotbracketfilesAlternatively\
    \ you can supply a dotbracket-string (containing only the characters '.()[]{}&')\
    \ from the commandline."
  type: string
  inputBinding:
    position: 0
- id: keep_length_one_stems
  doc: For all input formats except forgi bg/cg files, this controlls whether stems
    of length one are dissolved to unpaired regions (default) or kept (if this option
    is present). In the case of input in forgi-format, the RNA from the file is not
    modified.
  type: boolean
  inputBinding:
    prefix: --keep-length-one-stems
- id: outfile_mode
  doc: Overwrite ('w') or append ('a') to output file
  type: string
  inputBinding:
    prefix: --outfile-mode
- id: minlength
  doc: Minimum length of each stem. Stems with fewer base- pairs are treated as unpaired.
  type: long
  inputBinding:
    prefix: --minlength
- id: chains
  doc: 'When reading pdb-files: Only extract the given chain(s). Comma-seperated'
  type: string
  inputBinding:
    prefix: --chains
- id: pdb_secondary_structure
  doc: 'When reading a single chain from a pdb-files: Enforce the secondary structure
    given as dotbracket string. (This only works, if --chain is given!)'
  type: string
  inputBinding:
    prefix: --pdb-secondary-structure
- id: pdb_annotation_tool
  doc: What program to use for detecting basepairs in PDB/ MMCIF structures. This
    commandline option overrides the value in the config file (if present).If this
    is not present and no config-file is given, we try to detect the installed programs.
  type: string
  inputBinding:
    prefix: --pdb-annotation-tool
- id: pdb_allow_www_query
  doc: Usually, if modified residues/ ligand with an unknown 3-letter code are encountered
    in PDB files, they are removed from the chain and a log message of severity INFO
    is issued. With this option, we first try to query the PDBeChem database for the
    3-letter code, to see whether or not it is a modified residue that can be converted
    to its standard parent and should be part of the chain.
  type: boolean
  inputBinding:
    prefix: --pdb-allow-www-query
- id: verbose
  doc: Show verbose output (Output logged at level logging.INFO)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: '[DEBUG]       A comma-seperated list of logger names for which debug output
    will be activated.WARNING: If you misspell the logger name, this argument will
    be ignored'
  type: boolean
  inputBinding:
    prefix: --debug
- id: q
  doc: "[QUIET], --quiet [QUIET] A comma-seperated list of logger names for which\
    \ only messages logged at the level 'CRITICAL' will be shown.Use this without\
    \ arguments if everything should be quiet."
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- pseudoknot_analyzer.py
