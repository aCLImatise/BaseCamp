class: CommandLineTool
id: visualize_rna.py.cwl
inputs:
- id: in_keep_length_one_stems
  doc: "For all input formats except forgi bg/cg files, this\ncontrolls whether stems\
    \ of length one are dissolved to\nunpaired regions (default) or kept (if this\
    \ option is\npresent). In the case of input in forgi-format, the\nRNA from the\
    \ file is not modified."
  type: boolean?
  inputBinding:
    prefix: --keep-length-one-stems
- id: in_thin_cylinders
  doc: Make coarse_grain RNA thinner
  type: string?
  inputBinding:
    prefix: --thin-cylinders
- id: in_virtual_atoms
  doc: Color virtual atoms (if displayed) depending on the
  type: boolean?
  inputBinding:
    prefix: --virtual-atoms
- id: in_virtual_residues
  doc: Display the virtual residues as spheres
  type: boolean?
  inputBinding:
    prefix: --virtual-residues
- id: in_only_elements
  doc: Display only these elements, separated by commas
  type: string?
  inputBinding:
    prefix: --only-elements
- id: in_no_loops
  doc: Don't display the coarse-grain hairpin loops
  type: boolean?
  inputBinding:
    prefix: --no-loops
- id: in_long_range
  doc: Display long-range interactions
  type: boolean?
  inputBinding:
    prefix: --longrange
- id: in_stem_color
  doc: The default stem color in coarse-grain drawings
  type: string?
  inputBinding:
    prefix: --stem-color
- id: in_multi_loop_color
  doc: The default multiloop color in coarse-grain drawings
  type: string?
  inputBinding:
    prefix: --multiloop-color
- id: in_text
  doc: Add labels indicating the element names to the figure.
  type: boolean?
  inputBinding:
    prefix: --text
- id: in_labels
  doc: "Add labels to elements. Expects a comma seperated\nstring of element:label,\
    \ like 'm0:LookHere' to display\n'LookHere' at the center of 'm0'."
  type: string?
  inputBinding:
    prefix: --labels
- id: in_side_chain_atoms
  doc: Include the sidechain atoms. Automatically enables
  type: boolean?
  inputBinding:
    prefix: --sidechain-atoms
- id: in_element_colors
  doc: "Specify a color for certain elements (comma-separated\nelement names or element_name:color)Example:\
    \ \"m1,m2\"\n(makes m1, m2 purple) or\n\"m0:red,m1:green,s0:AA11GG,default:black\"\
    , where\n\"AA11GG\" is a hex value and \"default\" addresses all\nother elements.\
    \ Warning: colors not understood by\nPYMOL will be interpreted as black."
  type: long?
  inputBinding:
    prefix: --element-colors
- id: in_align
  doc: Align the RNAs (if multiple are provided)
  type: boolean?
  inputBinding:
    prefix: --align
- id: in_output
  doc: Create a picture of the scene and exit
  type: string?
  inputBinding:
    prefix: --output
- id: in_batch
  doc: Start pymol in batch mode
  type: boolean?
  inputBinding:
    prefix: --batch
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
    \ arguments if everything should\nbe quiet.\n"
  type: boolean?
  inputBinding:
    prefix: -q
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
hints: []
cwlVersion: v1.1
baseCommand:
- visualize_rna.py
