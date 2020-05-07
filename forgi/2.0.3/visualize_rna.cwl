class: CommandLineTool
id: visualize_rna.py.cwl
inputs:
- id: rna
  doc: 'One or more files containing one or more RNAs each. Supported Filetypes are:
    pdb files, forgi cg files'
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
- id: thin_cylinders
  doc: Make coarse_grain RNA thinner
  type: string
  inputBinding:
    prefix: --thin-cylinders
- id: virtual_atoms
  doc: Display the virtual atoms
  type: boolean
  inputBinding:
    prefix: --virtual-atoms
- id: virtual_residues
  doc: Display the virtual residues as spheres
  type: boolean
  inputBinding:
    prefix: --virtual-residues
- id: only_elements
  doc: Display only these elements, separated by commas
  type: string
  inputBinding:
    prefix: --only-elements
- id: no_loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean
  inputBinding:
    prefix: --no-loops
- id: long_range
  doc: Display long-range interactions
  type: boolean
  inputBinding:
    prefix: --longrange
- id: stem_color
  doc: The default stem color in coarse-grain drawings
  type: string
  inputBinding:
    prefix: --stem-color
- id: multi_loop_color
  doc: The default multiloop color in coarse-grain drawings
  type: string
  inputBinding:
    prefix: --multiloop-color
- id: text
  doc: Add labels indicating the element names to the figure.
  type: boolean
  inputBinding:
    prefix: --text
- id: labels
  doc: Add labels to elements. Expects a comma seperated string of element:label,
    like 'm0:LookHere' to display 'LookHere' at the center of 'm0'.
  type: string
  inputBinding:
    prefix: --labels
- id: side_chain_atoms
  doc: Include the sidechain atoms. Automatically enables --virtual-atoms
  type: boolean
  inputBinding:
    prefix: --sidechain-atoms
- id: rainbow
  doc: Color virtual atoms (if displayed) depending on the nucleotide position.
  type: boolean
  inputBinding:
    prefix: --rainbow
- id: element_colors
  doc: 'Specify a color for certain elements (comma-separated element names or element_name:color)Example:
    "m1,m2" (makes m1, m2 purple) or "m0:red,m1:green,s0:AA11GG,default:black", where
    "AA11GG" is a hex value and "default" addresses all other elements. Warning: colors
    not understood by PYMOL will be interpreted as black.'
  type: string
  inputBinding:
    prefix: --element-colors
- id: align
  doc: Align the RNAs (if multiple are provided)
  type: boolean
  inputBinding:
    prefix: --align
- id: output
  doc: Create a picture of the scene and exit
  type: string
  inputBinding:
    prefix: --output
- id: batch
  doc: Start pymol in batch mode
  type: boolean
  inputBinding:
    prefix: --batch
- id: pseudo_knots
  doc: Allow pseudoknots when extracting the structure from PDB files.
  type: boolean
  inputBinding:
    prefix: --pseudoknots
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
- visualize_rna.py
